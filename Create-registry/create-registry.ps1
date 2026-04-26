# check if user is logged in

Get-CimInstance Win32_ComputerSystem | Select-Object UserName

#test is key already exists

if (Test-Path -Path "HKCU:\Software\Endpoint-Tool") {
    Write-Host "the path already exists"
} else {
    New-ItemProperty -Path "HKCU:\Software\Endpoint-Tool" -Name "endpoint-session-health-check-tool" -Value "1" -PropertyTypeString
}



