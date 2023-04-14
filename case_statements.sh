#!/bin/bash
#create a menu and let the user choose from it
#menu
finished=0
while [ $finished -ne 1 ]
do
    echo "What is your fav Os?"

    echo "1. Linux"
    echo "2. Mac"
    echo "3. Windows"
    echo "4. Solaris"
    echo "5. Ios"
    echo "6. Android"
    echo "7. Other"
    echo "8. Exit"

    read distro;
#you dont only need to echo in case statements as you can see in number 7 you can create a menu that can update packages or install packages or exit a server etc.
    case $distro in
        1) echo "Linux path means DevOps?";;
        2) echo "You elitist Mac user";;
        3) echo "Ah I see you chose hell";;
        4) echo "into the Solar system";;
        5) echo "Minimalist Ios User huh";;
        6) echo "Customize it all with Android";;
        7) echo "Bossu which way?";;
        8) finished=1;;
        *) echo "You've got no direction";;
    esac
done

echo "Thanks for using this script"
