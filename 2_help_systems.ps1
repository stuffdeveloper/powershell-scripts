# Examining help system
# -example
# -detailed
# -full
# -online

Get-help get-service

Get-help get-service -Examples

Get-help get-service -Detailed

Get-help get-service -full

Get-help get-service -online

# get all verbs
Get-Verb

Get-Verb | Measure-Object

Get-Command | Measure-Object

# on output of get-command
# go to any command name and press F1
# you will get more info in new window
# and follwing command will automatically run in powershell
Get-Help 'Write-Error' -ShowWindow


# Getting help using wildcards

help *service*

Get-Help *process*

Get-Command -Name a*

#1 Get dependent services of running service
Get-Service
Get-Service -Name wsearch -DependentServices

#2 Get 20 latest enteries in system logs
Get-EventLog -List
Get-Help Get-EventLog -ShowWindow
Get-EventLog -LogName System -Newest 20

#3 get commands of all types
Get-Help Get-Command -ShowWindow
Get-Command *

#4 get content of text file display it in console
Get-Content
Get-Content -Path "C:\content\file.txt"

#5 clear history only first and last command
Get-History
Clear-History -Id 1,55
Clear-History

#6 find alias of get-service
Get-Alias -Definition Get-Service

#7 start and stop BITS service and see results
Get-Command *service*
Get-Service -Name BITS 
Start-Service -Name BITS -PassThru
Stop-Service -Name BITS -PassThru

#8 see installed vesion of powershell
$PSVersionTable

#9 count number of alias in currrent session
Get-Command *measure*
Get-alias | Measure-Object