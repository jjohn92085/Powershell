#check if a user is logged into windows

(Get-CimInstance Win32_OperatingSystem.UserName)

# check for the current user

$currentUser = $env:USERNAME

# log off current user

logoff $currentUser