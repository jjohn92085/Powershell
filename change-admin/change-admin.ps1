
#Requires -RunAsAdministrator

# checks if session is running elevated
# windows identity is the current user account
# Windows Principal checks permissions and roles
# IsInRole checks returns true or false if user belongs to a specific role

$elevated = ([Security.Principal.WindowsPrincipal] `
 [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($elevated) {
    return "current user is an administrator"
} else {
    "the current user is not an administrator"

    $userName = (Get-CimInstance Win32_ComputerSystem).UserName

    Add-LocalGroupMember -Group "Administrators" -Member $userName

    "Current user added to administrator group"
}




