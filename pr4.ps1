#Küsi kasutajalt kaks arvu
$arv1 = "Sisesta esimene number: "
$arv2 = "Sisesta teine number: "

if ($arv1-lt $arv2){
Write-Host "$arv1 on väiksem kui $arv2"
} else { Write-Host "$arv1 on suurem kui $arv2"
}


# Teine osa
Write-Host "Vali riik : (1: India, 2: Austraalia, 3: Hiina)" -ForegroundColor Yellow
#Küsib kasutajalt riiki valida
$riik = Read-Host "Palun vali riik:"

# Väljastab riigi pealinna 
if($riik -eq 1)
   {
   Write-Host "India pealinn on New Delhi" -ForegroundColor Green
   }
elseif($riik -eq 2)
   {
   Write-Host "Austraalia pealinn on Canberra" -ForegroundColor Green
   }
elseif($riik -eq 3)
   {
   Write-Host "Hiina pealinn on Beijing" -ForegroundColor Green
   }
else
   {
   Write-Host "Palun sisesta number 1-3" -ForegroundColor Red
   }