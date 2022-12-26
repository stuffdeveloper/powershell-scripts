Get-Process
Get-Process n*
Get-Process -Name notepad

Get-Process -Name notepad | Get-Member
Get-Process -Name notepad | gm

# Using methods

# killing process
Get-Process -Name notepad
(Get-Process notepad).kill()


# transferring file from one location to other
Get-ChildItem

cd c:/

Get-Content C:\content\file.txt

Get-ChildItem | gm

(Get-ChildItem C:\content\file.txt).CopyTo("c:\notes\file.txt")

# Using Properties
Get-ChildItem | gm
(Get-ChildItem).CreationTime
(Get-ChildItem $pshome\powershell.exe).CreationTime

help Select-Object -ShowWindow 
Get-EventLog -LogName Security -Newest 6 | Get-Member
Get-EventLog -LogName Security -Newest 6 | Select-Object source,Timewritten,machinename,message

# Questions
#1)what are objects=> 
# Things we interact with like boat,car
# programatic representation of anything
# cmdlets created by a developer

#2)object consists of=> propeties and methods

#3)properties, features of car=> color,speed

#4)Methods,actions of car=> start,stop,increaseSpeed

#5)how to see properties, methods of command
Get-Service | gm
Get-Service | Get-Member
# use gm,Get-Member

#6)using method kill intance of internt explore(here firefox)
Get-Process f*
Get-Process firefox | gm
(Get-Process -Name firefox).kill()

#7)copy servers.csv from C:\copya to c:copyB
(Get-ChildItem C:\content\file.txt).CopyTo("C:\notes\file.txt")

#8)use Get-TimeZone to get your current timezone
Get-Command *time*
Get-TimeZone
Get-TimeZone | gm
(Get-TimeZone).Daylightname

#9) using Get-WmiObject get bios version
help Get-WmiObject -ShowWindow 
Get-WmiObject -Class Win32_Bios | Format-List -Property *
Get-WmiObject -Class Win32_Bios | Format-List -Property BIOSVersion

# or
help Get-WmiObject -ShowWindow 
Get-WmiObject win32_bios | gm
(Get-WmiObject win32_bios).biosversion
