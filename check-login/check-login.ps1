
# get current user logged into desktop

# $currentUser = (Get-CimInstance -ClassName Win32_ComputerSystem).UserName

# force log off for specific user

$userName = (Get-CimInstance Win32_ComputerSystem).UserName.Split('\')[-1]

if ($userName -eq "jjohn") {
    logoff
}






