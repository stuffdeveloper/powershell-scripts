$firstname=Read-Host "enter your first name"
$lastname=Read-Host "enter your last name"

$dateformatted=Get-Date -Format ddMMyyyy-HHmmss
$datetime=Get-date -Format "F"


Set-Content -Value "First Name: $firstname
last name: $lastname
Date: $datetime" -Path "C:\challengeAnswers\$dateformatted-$firstname-$lastname.txt"


# Remove-Item -Path C:\challengeAnswers
# New-item -Path C:\ -name challengeAnswers -ItemType directory
# new-item -Path C:\challengeAnswers -Name $dateformatted-$firstname-$lastname.txt -ItemType file -Value "First name: $firstname, LastName: $lastname ,Date: $datetime"