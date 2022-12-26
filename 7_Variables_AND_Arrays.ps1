#***Variables***

$myVariable="test"

$myVariable
echo $myVariable

$myvar=Get-process
$myVar | Select-Object id,name

$userInput=Read-host -Prompt "Please Enter your name"
$userInput
$userInput > file.txt
cat .\file.txt

$userInput= Read-Host "please enter something in file"
Set-Content -Value $userInput -Path file.txt
cat file.txt


#***Arrays***
$myarray=@("cheese")
$myarray
$myarray[0]

$myarray=@("1","2","3","4")
$myarray
$myarray[2]
$myarray[-2]

$myarray=@()
$myarray
$myarray+="apple"
$myarray+=2
$myarray+=("banana",10)
$myarray

$alphabet=@("c","D","a","F")
$alphabet
$alphabet | Sort
$alphabet | sort -Descending
$alphabet = $alphabet | sort
$alphabet

$alphabet | Where {$_ -ne "a"}
$alphabet = $alphabet | where {$_ -ne 'a'}
$alphabet

$alphabet | Where {$_ -ne $alphabet[0]}

$alphabet=$null
$alphabet

#***Challenge***

$firstname=Read-Host "enter your first name"
$lastname=Read-Host "enter your first name"

$dateformatted=Get-Date -Format ddMMyyyy-HHmmss
$datetime=Get-date

New-item -Path C:\ -name challengeAnswers -ItemType directory
new-item -Path C:\ -Name $dateformatted-$firstname-$lastname.txt -ItemType file -Value "First name: $firstname, LastName: $lastname ,Date: $datetime"



