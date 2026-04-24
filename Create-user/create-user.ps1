# create new user script

#run script after logging in
# -WindowStyle Hidden hides the visible console

# powershell.exe -WindowStyle Hidden -File "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"

# ask user for username and password

$Username = Read-Host "Enter new username"
$Password = Read-Host "Enter password" -AsSecureString

# create new user with a password prompt
# New-LocalUser creates new local user accounts

New-LocalUser `
    -Name $UserName `
    -Password $Password `
    -Description "Local admin account"

# add user to admin group

Add-LocalGroupMember -Group "Administrators" -Member $UserName







