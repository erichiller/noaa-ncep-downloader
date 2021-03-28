
# $QueryId = "DAILY_MIN_TEMPERATURE"
# $QueryId = "DAILY_AVG_TEMPERATURE"
# $QueryId = "DAILY_MAX_TEMPERATURE"
# $QueryId = "MONTHLY_DAYS_PRECIP_1p00"

$QuerySet = @{
    "MONTHLY_DAYS_PRECIP_0p01" = @( 
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "MONTHLY_DAYS_PRECIP_0p10" = @( 
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "MONTHLY_DAYS_PRECIP_0p50" = @( 
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "MONTHLY_DAYS_PRECIP_1p00" = @( 
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "DAILY_CHANCE_PRECIP_0p01" = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "DAILY_CHANCE_PRECIP_0p10" = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "DAILY_CHANCE_PRECIP_0p50" = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "DAILY_CHANCE_PRECIP_1p00" = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
    );
    "CLOUDS_PERCENT_OVERCAST"  = @(
        "Chicago_Illinois"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Aurora_Colorado"
    );
    "HOURLY_TEMP"              = @(
        "Chicago_Illinois"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Aurora_Colorado"
    );
    "DAILY_MIN_TEMPERATURE"    = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
        "Kankakee_Illinois"
        "Northglenn_Colorado"
        "Texarkana_Texas"
        "Murfreesboro_Arkansas"
    );
    "DAILY_AVG_TEMPERATURE"    = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado"
        "Kankakee_Illinois"
        "Northglenn_Colorado"
        "Texarkana_Texas"
        "Murfreesboro_Arkansas"
    );
    "DAILY_MAX_TEMPERATURE"    = @(
        "Chicago_Illinois"
        "Paris_Texas"
        "Phoenix_Arizona"
        "Dallas_Texas"
        "Longmont_Colorado" 
        "Kankakee_Illinois"
        "Northglenn_Colorado"
        "Texarkana_Texas"
        "Murfreesboro_Arkansas"
    );
}


$Queries = @{
    # Dewpoints
    "DEWPOINTS_HOURLY"         = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-DEWP-NORMAL"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "HOURLY_TEMP"         = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-TEMP-NORMAL"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "MONTHLY_DAYS_PRECIP_0p01" = @{
        "datasetid"  = "NORMAL_MLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "MLY-PRCP-AVGNDS-GE001HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "MONTHLY_DAYS_PRECIP_0p10" = @{
        "datasetid"  = "NORMAL_MLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "MLY-PRCP-AVGNDS-GE010HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "MONTHLY_DAYS_PRECIP_0p50" = @{
        "datasetid"  = "NORMAL_MLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "MLY-PRCP-AVGNDS-GE050HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "MONTHLY_DAYS_PRECIP_1p00" = @{
        "datasetid"  = "NORMAL_MLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "MLY-PRCP-AVGNDS-GE100HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "DAILY_CHANCE_PRECIP_0p01" = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-PRCP-PCTALL-GE001HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "DAILY_CHANCE_PRECIP_0p10" = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-PRCP-PCTALL-GE010HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "DAILY_CHANCE_PRECIP_0p50" = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-PRCP-PCTALL-GE050HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "DAILY_CHANCE_PRECIP_1p00" = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-PRCP-PCTALL-GE100HI"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "CLOUDS_PERCENT_OVERCAST"  = @{
        "datasetid"  = "NORMAL_HLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "HLY-CLOD-PCTOVC"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    
    "DAILY_MIN_TEMPERATURE"    = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-TMIN-NORMAL"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "DAILY_AVG_TEMPERATURE"    = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-TAVG-NORMAL"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
    "DAILY_MAX_TEMPERATURE"    = @{
        "datasetid"  = "NORMAL_DLY"
        "stationid"  = ""
        "startdate"  = "2010-01-01" 
        "enddate"    = "2010-12-31"
        "datatypeid" = "DLY-TMAX-NORMAL"
        "units"      = "standard"
        "limit"      = 1000
        "offset"     = 0
    }
}
