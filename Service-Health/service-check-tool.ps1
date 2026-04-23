# this is a tool to check if specific services are running on startup and turn them off as needed

# run the script as admin

(!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

# check if Dental Intelligence is running and stop it

$DentalIntelligence = (Get-Service -Name "Dental Intelligence").Status

if ($DentalIntelligence -eq "Running" -or "StartPending" -or "ContinuePending") {

    Stop-Service -Name 'DentalIntelligence'

}

else {

    Write-Host "The Dental Intelligence service is stopped"

}

# check if ModentoBridge is running and stop it

$Modento = (Get-Service -Name "ModentoBridge").status

if ($Modento -eq "Running" -or "StartPending" -or "ContinuePending") {

    Stop-Service -Name "ModentoBridge"
}

else {

    Write-Host "The Modento service is stopped"
}

$NexHealth = (Get-Service -Name "NexHealth").status

# check if NexHealth is running and stop it

if ($NexHealth -eq "Running" -or "StartPending" -or "ContinuePending" ) {

    Stop-Service -Name "NexHealth"

} 

# service is already stopped

else {

    Write-Host "The NexHealth service is stopped"
}

# 

