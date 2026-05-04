#test of compound and unary operators

# multiply

[int]$multiplyNumber = 2
$multiplyNumber *= 3
Write-Host $multiplyNumber

#add

$addNumber = [int]"5"
$addNumber += 3
Write-Host $addNumber

#subtract

$newNumber = 4
$subtractNumber = 5
$newNumber -= $subtractNumber
Write-Host $newNumber

#divide

$divideNumber /= 10
Write-Host $divideNumber

#type cast int to string

$numberToString = [string]55
$numbertoString += 3
Write-Host $numberToString


