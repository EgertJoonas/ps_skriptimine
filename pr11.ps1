$nr1 = Read-Host "Sisesta esimene number: "
$nr2 = Read-Host "Sisesta teine number: "

if($nr1 -notmatch '^\d+$' -or $nr2 -notmatch '^\d+$'){
    Write-Host "Kasuta ainult numbreid" -ForegroundColor Red
} else {

    Write-Host "Calculator" -ForegroundColor Green
    $calcMenu = @("Addition", "Substraction", "Division", "Multiplication")
    for($i = 0; $i -lt $calcMenu.Count; $i++){
        Write-Host "$($i + 1). $($calcMenu[$i])" -ForegroundColor Yellow
    }

    $operation = Read-Host "Sisesta enda valik"

    switch($operation){
        1{
            Write-Host "Summa on $([int]$nr1 + [int]$nr2)"
        }
        2{
            Write-Host "Vahe on $([int]$nr1 - [int]$nr2)"
        }
        3{
            Write-Host "Jaotus on $([int]$nr1 / [int]$nr2)"
        }
        4{
            Write-Host "Korrutis on $([int]$nr1 * [int]$nr2)"
        }
        default{
            Write-Host "Kasuta numbreid 1-4!" -ForegroundColor Red
        }
    }
}

     