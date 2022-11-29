# AUTHOR: NUTH VIREAK

# Get the user account name
Get-WmiObject Win32_UserAccount

# Count the number of user accounts save it in variable $count
$count = Get-WmiObject Win32_UserAccount | Measure-Object | Select-Object -ExpandProperty Count

# Display the number of user accounts
Write-Host "Users---------------------------"
Write-Host "There are $count user accounts."
Write-Host "--------------------------------"

# save the user account information in current directory
Get-WmiObject Win32_UserAccount | Out-File user.txt

# pause the script
read-host "Press Enter to continue..."
