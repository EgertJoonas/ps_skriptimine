# hash1 on mitu päeva nad kokku on töötanud

$hash1 = @{Name = "John", "Joe", "Mary"; DaysWorked = 12, 20, 18}

# hash2 arvutab päeva palga

$hash2 = @{Name = "John", "Joe", "Mary"; SalaryPerDay = 100,120,150}

#Arvutame igaühe palga

$John = $hash1.DaysWorked[0] * $hash2.SalaryPerDay[0]
$Joe = $hash1.DaysWorked[1] * $hash2.SalaryPerDay[1]
$Mary = $hash1.DaysWorked[2] * $hash2.SalaryPerDay[2]

# hash3 on kõigi kolme palk kokku

$hash3 = @{Name=$hash1.Name[0],$hash1.Name[1],$hash1.Name[2];Salary=$John,$Joe,$Mary}

$hash3