# providers=> methods to access data


Get-PSDrive

update-help

# if fails use
update-help -force -verbose -ErrorAction silentlycontinue

help New-PSDrive -ShowWindow

# registering HKLM location as psreg drive
Get-PSProvider

New-PSDrive -Name PSReg -PSProvider Registry -Root HKLM:\SOFTWARE\Microsoft\PowerShell\3\

cd psreg:

dir

# Registering local folder as drive
New-PSDrive -Name win -PSProvider FileSystem -Root C:\test

cd win:

dir

# making persitent this might not work as admin run as normal user
New-PSDrive -Name R -PSProvider FileSystem -Root "\\127.0.0.1\c$\test" -Persist

Remove-PSDrive -Name R

#***Location cmdlets***

Get-Alias pushd

pushd C:\Books\a
pushd C:\Books\b
pushd C:\Books\c
pushd C:\Books\d

Get-Location -Stack

popd
Get-Location -Stack

Set-Location C:\Windows
DIR

Set-Location -Path env:
dir

Set-Location -Path HKCU:
dir

Set-Location .\software\microsoft\Windows\CurrentVersion\Uninstall
Get-ChildItem 

New-Item -path C:\ -name pstest -ItemType directory
Get-ChildItem C:\

New-item -Path C:\pstest -Name test1.txt -ItemType file -Value "hello world"

New-Item -Path C:\pstest -Name test1.txt -ItemType file -Confirm

New-Item -ItemType file -Path C:\pstest\child1, C:\pstest\child2

New-item -Path C:\pstest -Name test.txt -ItemType file

Add-Content -Path C:\pstest\test.txt -Value "Entered through powershell"

Clear-Content C:\pstest\test.txt


#*** Item property cmdlets***

New-Item -Path HKLM:\SOFTWARE\MYCompany
New-ItemProperty -Path "HKLM:\SOFTWARE\MYCompany" -name NewProperty -value NewPropertyValue
New-ItemProperty -Path "HKLM:\SOFTWARE\MYCompany" -Name NoOfEmployees -Value 400
Get-ItemProperty HKLM:\SOFTWARE\MYCompany
Remove-ItemProperty HKLM:\SOFTWARE\MYCompany -Name NewProperty
Remove-Item -Path HKLM:\SOFTWARE\MYCompany

# for checking path is present or not
Test-Path C:\Windows\debug\PASSWD.LOG

# get all available path with wildcard
Resolve-Path C:\Windows\*.log

#get all available files with wildcard
Split-Path -Path C:\Windows\*.log -Leaf -Resolve


