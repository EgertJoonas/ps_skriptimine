﻿function countstart {
     $services = Get-Service | Where {$_.Status -like 'Running'}
     $services.Count
}

function countstop {
     $services = Get-Service | Where { Where {$_.Status -like 'Stopped'}
     $services.Count
}

function countservice {
   param (
         [string]$status
   )
   $services = Get-Service | Where {$_.Status -like $status}
   $services.Count
}

Write-Host "Total services in Running state = $(countstart)"
Write-Host "Total services in Stopped state = $(countstop)"
Write-Host
Write-Host "Total services in Running state = $(countservice('Running'))"
Write-Host "Total services in Stopped state = $(countservice -status 'Stopped')"