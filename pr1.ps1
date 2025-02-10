# two arrays
$a1 = @(1,2,3)
$a1 = @(4,5,6)

# empty array
$a3 = @()

# adds values to the array
$a3 += $a1[0] + $a2[0]
$a3 += $a1[1] + $a2[1]
$a3 += $a1[2] + $a2[2]

#prints third array
$a3