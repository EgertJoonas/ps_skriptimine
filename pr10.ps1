$count = 0

do {
    Write-Host 'Notepad is running'
    $count++
    Start-Sleep -Seconds 1
    $Notepad = Get-Process notepad -ErrorAction SilentlyContinue
} until ($Notepad -eq $null )

Write-Host $count