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


