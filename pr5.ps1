#Esimene osa

Start-Process "notepad.exe"

# Leiab kõik notepadi protsessid ja näitab nime ja id
Get-Process notepad | Select-Object Name, Id

#Teine osa

Get-ChildItem C:\temp\test

$file = Get-ChildItem C:\temp\test | where{$_.Name -like "*.csv"} | select Name, Length
$sizeKB = $file.Length/1KB
$sizeMB = $file.Length/1MB

Write-Host "`nFilename : " $file.Name "`nSize in KB : " $sizeKB "`nSize in MB : " $sizeMB