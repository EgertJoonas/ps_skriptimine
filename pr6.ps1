#importib csv faili
$alginfo = Import-Csv "C:\Users\Egert\ps_skriptimine\students.csv"

# Muudab andmes kas inimene on Juunior või seenior 
$andmed = @()

foreach($inimene in $alginfo){
    $inimene.Age = [int]$inimene.Age
    $kool = ""
    if($inimene.Age -ge 4 -and $inimene.Age -le 10){
        $kool = "Juunior"
    } elseif($inimene.Age -ge 11 -and $inimene.Age -le 17){
        $kool = "Seenior"
    }
    $andmed += @{'Name'=$inimene.Name; 'kool'=$kool}
}

# Muudab andme stringiks
$csvsisu = @()
$csvsisu += "Nimi,Kool"  
foreach ($row in $andmed) {
    $csvsisu += "$($row.Name),$($row.Kool)"
}

$csvsisu | Set-Content -Path "C:\Users\Egert\ps_skriptimine\vanused.csv"