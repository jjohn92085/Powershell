#string methods

# get type

$name = "James"
$name.GetType()
$name.GetType().Name

#gives you all methods

$name | Get-Member -MemberType Method

#converts to a string
$name.ToString()

# compare to compares values

$number = 10
$number.CompareTo(3)

# prompt for password for new user

$Password = Read-Host -AsSecureString

# creates local user

$userinfo = New-LocalUser -Name "JSmith" -Password $Password -FullName "James Smith" -Description "new user"

# add to group

Add-LocalGroupMember -Group "Users" -Member "NewUser"

# checks if a string has a substring

$userName = $userinfo.Name.Contains("J")
Write-Host $userName

# replaces parts of a string

$userNameReplace = $userinfo.Name.Replace("J", "T")
Write-Host $userNameReplace





