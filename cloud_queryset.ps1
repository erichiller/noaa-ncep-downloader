
# $QueryId = "CLOUDS_PERCENT_BROKEN"
# $QueryId = "CLOUDS_PERCENT_CLEAR"
# $QueryId = "CLOUDS_PERCENT_FEW"
$QueryId = "CLOUDS_PERCENT_SCATTERED"

$QuerySet = @{
    "CLOUDS_PERCENT_BROKEN" = @(
        "Chicago_Illinois"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Aurora_Colorado"
    );
    "CLOUDS_PERCENT_FEW"       = @(
        "Chicago_Illinois"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Aurora_Colorado"
    );
    "CLOUDS_PERCENT_CLEAR"  = @(
        "Chicago_Illinois"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Aurora_Colorado"
    );
    "CLOUDS_PERCENT_SCATTERED" = @(
        "Chicago_Illinois"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Aurora_Colorado"
    );
}
    

$Queries = @{
    "CLOUDS_PERCENT_BROKEN" = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-CLOD-PCTBKN"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "CLOUDS_PERCENT_CLEAR" = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-CLOD-PCTCLR"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "CLOUDS_PERCENT_FEW" = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-CLOD-PCTFEW"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "CLOUDS_PERCENT_SCATTERED" = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-CLOD-PCTSCT"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
}