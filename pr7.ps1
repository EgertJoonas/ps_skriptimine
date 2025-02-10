#värvide nimekiri
$grupp = @("Red", "Yellow", "Blue", "Green")

$end=@()

for($i = 1; $i -le 20; $i++){
    $g = Get-Random $grupp
    $temp = [PSCustomObject]@{
        RollNumber = $i
        Color  = $g
    }
    $end += $temp
}

$end
   