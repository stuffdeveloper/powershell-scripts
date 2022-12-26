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