
# get a current list of all AD users

$user = Get-ADUser -Identity "JMith" -ErrorAction SilentlyContinue

#check if user exists

if (-not $user) {

    New-ADUser -Name "James Smith" -SamAccountName "JSmith"

} else {

    Write-Output "user already exists"

}

