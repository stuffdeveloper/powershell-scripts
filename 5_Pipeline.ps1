# Remove all files on folder structure
Get-ChildItem C:\company\*.txt -Recurse | Remove-Item -WhatIf

Get-ChildItem C:\company\*.txt -Recurse | Remove-Item -Confirm

# get logs in file and see them
Get-EventLog -LogName Application | Out-file c:\app.txt

Get-help *content*
Get-Content C:\app.txt


# which command to use with which is decided on 
# if output of one can be acceped
# in other and some other factors 
# to varify following cmd see below steps

# ***By Value***
Get-Service BITS | Stop-Service -PassThru
#1 see type of cmd1. using Get-member,gm
Get-Service -Name BITS | gm

#2 see if cmd2 can get input of type of cmd1
# cmd1 type is "ServiceController" 
Get-Help Stop-Service -full
# so cmd2 -InputObject accept "ServiceController" type objects

#3 see if cmd2 can accept pipline input
# cmd2 -InputObject accept pipline input

#4 see if cmd2 can accept pipline input ByValue or ByProperty
# cmd2 -InputObject accept pipline input ByValue


# ***ByProperty***
# just like testing for byvalue do 4 steps
# just check which parameters are accepting
# pipeline input byproperty instead or seeing for byValue
# eg.
Import-Csv -Path C:\test\alises.csv | gm

Get-help New-Alias -ShowWindow

Import-Csv -Path C:\test\alises.csv | New-Alias -Verbose

#another example where byproperty pipelining is happening
Import-Csv -Path C:\test\bits.csv | Stop-Service -PassThru