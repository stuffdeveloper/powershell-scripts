#*** For loops

for($i=0; $i -lt 10; $i++){
    echo " $i in for loop"
}

$myarray=@("car","truck","motors","suv","toys")

for($i=0; $i -lt $myarray.Count; $i++){
    echo ("Element $i Value: "+$myarray[$i])
}

#*** While loops
$i=0;
while($i -lt 5){
    $i
    $i++;
}

while((Read-Host "Type xyz") -ne "xyz"){
    echo "you did not typed xyz so loop continued"
}

$userInput=$null
while($userInput -ne "xyz"){
    $userInput = Read-Host "Type xyz"
}

$userInput=$null
while($userInput -ne "quit"){
    $userInput = Read-Host "say yes if you like powershell"

    if($userInput -eq "yes"){ echo "great i also like powershell"}
    elseif($userInput -eq "yes"){ echo "great"}
}

#***Do while/until loops

$i=0
do{
    $i++
} while($i -lt 5)
echo "value of i is $i"

$i=0
do{
    $i++
} until($i -eq 5)
echo "value of i is $i"

#*** Foreach loop
$vehicles=@("cars","bikes","trucks","suv")

foreach($cartype in $vehicles){
    $cartype
}

#***Loop break and continue

$array=@("tata","ford","chevy","mahindra")
foreach($car in $array){
    if($car -eq "mahindra"){
       break
    }
    if($car -eq "ford"){
       continue
    }
    $car
}








