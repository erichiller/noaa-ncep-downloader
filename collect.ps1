
[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $QueryFile
)

. ./_api_token.ps1
. ./_stations.ps1
. ./_queryset.ps1

. ./cloud_queryset.ps1

$Stations | Format-Table


# $QueryId = "TEMP_HOURLY";


$ApiEndpoint = "https://www.ncdc.noaa.gov/cdo-web/api/v2"; # data?datasetid=NORMAL_HLY&startdate=2010-01-01&enddate=2010-12-31&datatypeid=HLY-DEWP-NORMAL&units=standard&stationid=GHCND:USW00023036";

$Headers = @{
    "token" = $apiToken
}
function Get-StationName {
    param (
        [String] $lookupStationId
    )
    return ( $Stations.GetEnumerator() | Where-Object { 
            $_.Name -eq $lookupStationId 
        } ).Value
}

function Get-StationId {
    param (
        [String] $lookupStationName
    )
    return ( $Stations.GetEnumerator() | Where-Object { 
            $_.Value -eq $lookupStationName
        } ).Key
}

$DirectoryName = $QueryId;
New-Item -ItemType Directory -Path $DirectoryName -ErrorAction SilentlyContinue

$QueryStations = $QuerySet[$QueryId] ;

Write-Output "QueryStations count= $($QueryStations.Count)"
$QueryStations | ForEach-Object {
    $QueryData = $Queries[$QueryId];
    $station = Get-StationId -lookupStationName $_ ;

    $QueryData.stationid = $station;
    $stationName = Get-StationName -lookupStationId $station;
    $queryIdString = $QueryData['datatypeid'];
    $outputFile = Join-Path $QueryId "${stationName}_${queryIdString}.csv" ;
    $QueryData.offset = 0

    Write-Output "StationId = $station ; StationName = $stationName ; queryIdString = $queryIdString ; outputFile = $outputFile ";

    Set-Content -Path $outputFile -Value "" -NoNewline ;

    $total = 1;

    $QueryData.limit--;

    while ($QueryData["offset"] -lt $total) {
        $QueryResult = (Invoke-WebRequest -Uri "$ApiEndpoint/data" -Method Get -Headers $Headers -Body $QueryData ).Content | ConvertFrom-Json;

        if (Get-Member -inputobject $QueryResult -name "results" -Membertype Properties ) {


            $total = $QueryResult | Select-Object -ExpandProperty metadata | Select-Object -ExpandProperty resultset | Select-Object -ExpandProperty count
            $offset = $QueryResult | Select-Object -ExpandProperty metadata | Select-Object -ExpandProperty resultset | Select-Object -ExpandProperty offset
            Write-Output "processing $offset of $total records" ;

            $QueryResult | Select-Object -ExpandProperty results | ForEach-Object {
                Add-Content -Path $outputFile -Value $( "$($_.date),$($_.station),$($_.datatype),$($_.value),$($stationName)" )
            }

            $QueryData.offset += 1000;
            $QueryData.limit = 1000;
        } else {
            Write-Warning "No data returned for $stationName";
            return;
        }
    }
    # Remove whitespace at end of file
    Set-Content -NoNewline -Path $outputFile -Value ( (Get-Content -Path $outputFile -Raw) -replace "(?s)`r`n\s*$" )
}

# Merge
$mergedFilePath = Join-Path $DirectoryName "${QueryId}_merged.csv"
Remove-Item $mergedFilePath -ErrorAction SilentlyContinue; 
Get-ChildItem -Path $DirectoryName | ForEach-Object {
    Add-Content -Path $mergedFilePath -Value ( ( (Get-Content -Path $_.FullName -Raw) -replace "(?s)`r?`n\s*$" ) -replace "^`r?`n" )           
}
