Get-EventLog -List
get-help Get-Event -ShowWindow

# Syntax

# Parameter set 1
# Get-EventLog [-LogName] <System.String> [[-InstanceId] <System.Int64[]>] 
# [-After <System.DateTime>] [-AsBaseObject ] [-Before <System.DateTime>] 
# [-ComputerName <System.String[]>] [-EntryType <System.String[]>] 
# [-Index <System.Int32[]>] [-Message <System.String>] 
# [-Newest <System.Int32>] [-Source <System.String[]>] 
# [-UserName <System.String[]>] [<CommonParameters>]

# Parameter set 2
# Get-EventLog [-AsString ] [-ComputerName <System.String[]>] 
# [-List ] [<CommonParameters>]

# when you check syntax of any command you will see 
# different parameter sets you can use parameters from 
# one set at a time. mixing parameters from different 
# sets together doesn't work.

# [] this show parameter name
# <> this shows accepted value types
# <[]> this shows it will accepts arrays means comma separated values


# how to find which parameter are which
#1) optional=> They will have [] all way around 
# eg. [[-InstanceId] <System.Int64[]>] 

#2) required=> [] will not be all way around
# eg.[-LogName] <System.String>
# so herer writing -Logname is optinal but passing string is compulsary

#3) position=> so parameters will have position? value if it is "named"
# then you have to name parameter everytime using it.

# if it is parameter number then you have to pass them in right order
# Get-EventLog [-LogName] <System.String> [[-InstanceId] <System.Int64[]>]
# in above example <System.String> do not have direct [] so it is required.
# and positional also.

# <System.Int64[]> also do not have direct []. but it has indirect [].
# and InstanceId has direct []. this shows <System.Int64[]> is positional
# as it can be used without InstanceId also.
#e.g.
Get-EventLog application

Get-EventLog application 0,1

#4) {} => accepted values for given parameter will be shown here.


# Questions and Answers
#1 
# structure of command=> verb-noun
# what - tells=> parameter is begin used
# [] tells=> this is argument
# <string> is=> value type
# <string[]> is=> multiple values are accepted separated by comma
# 3 parameter groups are given called? => parameter sets


#2 see parameter of get-service and find which parameter are
Get-Help Get-Service -ShowWindow
# unique in each set=> -DisplayName,-InputObject,-Name
# common in each set=> -ComputerName,-DependentServices,-Exclude
# -Include,-RequiredServices
# command you will use to get help for common parameters=>
Get-Help about_common_parameters -ShowWindow


#3 run get-service and explain why it ran without any parameter
Get-Service
# here 1st parameter group exist where all parameters
# are optional denoted by [] so it can run without parameter
# even though 2nd parmater group has required parameter

#4 get-eventlog doesn't rum without parameter but get-service can why?
Get-EventLog
# here 1st parameter group exist where argument is required.
# so even though 2nd parameter group has all optional but
# as first group has required you need parameter


#5 why -InstanceLog in Get-eventLog is second
# positions of -instanceLog is 1 so it's second. index start from 0

#6 why -Newest in Get-EventLog can be placed anywhere
# because its postion is "named" so to use it you have to use name
# and by using name you can place it in any order
