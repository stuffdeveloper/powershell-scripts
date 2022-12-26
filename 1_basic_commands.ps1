pwd

ipconfig /all

dir

mkdir

cls

# You will get alias of other commands and powershell commands
# other unix/linux commands can be used in powershell for 
# ease of use for developers
Get-Alias

# you will get all available cmdlets,functions,alias
Get-Command

help Get-Variable -example

Get-Help Get-Variable -Online

man Get-Service

$PSVersionTable

# Updating help files run powershell in admin mode
Update-Help -force

# For pc not having internet we can do it over USB
# first download all help files
Save-Help -DestinationPath "C:\help" -force -verbose

# copy them over pc on new folder called help and run following cmd 
Update-Help -SourcePath "c:\help" -force -verbose

# get history of commands you used
Get-History

# to get output after certain command use this
Invoke-History 1; Invoke-History 5

# get all services running
Get-Service

Get-Service -Name BITS
