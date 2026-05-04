#equality operators

$ten = 10
$twenty = 20

# check for equality
$equality = $10 -eq $10
Write-Host $equality

# check for a match
$noMatch = $ten -ne $twenty
Write-Host $noMatch

#greater than
$greaterThan = $twenty -gt $ten
Write-Host $greaterThan

# less than
$lessThan = $twenty -lt $ten
Write-Host $lessThan

# greater or equal
$greaterOrEqual = $twenty -ge $ten
Write-Host $greaterOrEqual

# less or equal
$lessOrEqual = $twenty -le $ten
Write-Host $lessOrEqual

