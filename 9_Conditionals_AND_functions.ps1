#*** Conditionals

$myvar1=1
$myvar2=10

if( $myvar1 -lt $myvar2){ 
    echo "good"
}else {
    echo "bad"
}

$choice=Read-host "enter your choice"
if($choice -eq 1){
    echo "option 1 is choosen"
}elseif($choice -eq 2){
    echo "option 2 is choosen"
}elseif($choice -eq 3){
    echo "option 3 is choosen"
}else{
    echo "please enter correct option"
}


#*** Switch
switch(Read-host "enter your choice"){
    1 {  echo "option 1 is choosen"}
    2 {  echo "option 2 is choosen"}
    3 {  echo "option 3 is choosen"}
    deafult {  echo "please enter correct option"}
}

#***functions=> Block of code

function EchoText{
    echo $args
}

EchoText "i am passing args","this is second argument"



function echotext{
    param(
        $firstparam,
        $secondparam
    )
    echo "First: $firstparam"
    echo "Second: $secondparam"
}
echotext -secondparam hello -firstparam "hi"

function echotext2($firstparam,$secondparam){
    echo "First: $firstparam"
    echo "Second: $secondparam"
}
echotext2 -secondparam hello -firstparam "hi"



#***Challenge

function MainMenu($message){
    cls
    echo "---- Main Menu ----"
    echo "Please Enter option"
    echo "1) submenu 1"
    echo "2) submenu 2"
    echo "3) quit"
    echo "`n$message"

    switch(Read-host){
        1 {submenu1}
        2 {submenu2}
        3 {break}
        deafault {mainmenu("Error: you did not choose valid option")}
    }
}


function submenu1($message){
    cls
    echo "---- sub Menu 1----"
    echo "Please Enter option"
    echo "1) option 1"
    echo "2) option 2"
    echo "3) quit"
    echo "`n$message"

    switch(Read-host){
        1 {submenu1("you choose option 1")}
        2 {submenu1("you choose option 2")}
        3 {mainmenu}
        deafault {submenu1("Error: you did not choose valid option")}
    }
}

function submenu2($message){
    cls
    echo "---- sub Menu 2----"
    echo "Please Enter option"
    echo "1) option 1"
    echo "2) option 2"
    echo "3) quit"
    echo "`n$message"

    switch(Read-host){
        1 {submenu2("you choose option 1")}
        2 {submenu2("you choose option 2")}
        3 {mainmenu}
        deafault {submenu2("Error: you did not choose valid option")}
    }
}


mainmenu




