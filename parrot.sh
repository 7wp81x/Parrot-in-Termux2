#!/bin/sh
#Mar 27, 2021 22:02:23 GMT+08:00
#author p1r4t3
#don't copy my script make your own script kiddie
clear
sleep 1
b='\033[34;1m' #blue
g='\033[32;1m' #g3en
p='\033[35;1m' #purple
c='\033[36;1m' #cyan
r='\033[31;1m' #red
w='\033[37;1m' #white
y='\033[33;1m' #yellow
o='\033[1;38;5;208m' #Orange
printf $g
figlet -f slant " ParrotOS"
echo $c"    Coded by "":"$g" P1r4t3"
echo $c"    Version  "":"$g" 3.0"
echo $c"    Youtube  "":"$g" Mr.P1r4t3"
     echo $c "  ___________________________________________"
     echo $p "  1."$g "[✓]"$c "Parrot os Theme + Extra keys."
     echo $p "  2."$g "[✓]"$c "Remove Theme."
     echo $p "  0."$g "[*]"$c "Exit."
     echo $c "  ———————————————————————————————————————————"
  while true; do
    printf $g
    read -p "    Select Option: " yn
    case $yn in

        0)
     echo "  Exiting..."
     sleep 3
     clear
     bash
     exit;
     break;;

       1) clear
printf $c
     figlet -f slant " Parrot"
     echo $g"          Coded By Mr.P1r4t3"
     read -p " [?] Enter Username: " USERNAME
     cat $HOME/Parrot-in-Termux2/main/parrot1 | sed "s/USERNAME/$USERNAME/g" > $HOME/Parrot-in-Termux2/main/parrot
     read -p " [?] Are you sure about the username(Y/n)?" userz
     case $userz in
     	y)
	     cd $PREFIX/etc
	     mv motd $HOME/Parrot-in-Termux2/main
	     cp $HOME/Parrot-in-Termux2/main/parrot $PREFIX/etc
	     cd $PREFIX/etc
	     echo $b" ["$g"*"$b"]"$c" Installing Parrot os theme."| pv -qL 20
	     mv bash.bashrc bash.bashrc.bak
	     mv parrot bash.bashrc
	     sleep 4
	     echo $b" ["$g"*"$b"]"$c" Parrot os theme Successfully installed.."| pv -qL 20
	     sleep 2
	     echo $b" ["$g"*"$b"]"$c" Installing Extra arrows and shortcut keys"| pv -qL 20
	     sleep 5
	     cd $HOME/Parrot-in-Termux2/main/
	     cp arrows termux.properties
	     cd $HOME/.termux/
	     mv termux.properties termux.properties.bak
	     cd $HOME/Parrot-in-Termux2/main/
	     mv termux.properties $HOME/.termux
	     cp $HOME/Parrot-in-Termux2/main/.myip.sh $PREFIX/etc
	     echo $b" ["$g"✓"$b"]"$c" Extra arrows and shortcuts Successfully installed."| pv -qL 20
	     echo $b" [ List"$g"of"$b"Shortcuts KEYS ]"| pv -qL 20
	     echo $g" ✓"$c" Ctrl + t "$g" - Create session."| pv -qL 20
	     echo $g" ✓"$c" Ctrl + 1 "$g" - Previous session."| pv -qL 20
	     echo $g" ✓"$c" Ctrl + 2 "$g" - Next session."| pv -qL 20
	     echo $g" ✓"$c" Ctrl + n "$g" - Rename session."| pv -qL 20
	     echo $g" ✓"$c" myip     "$g" - Show your ip."| pv -qL 20
	     echo $g" ✓"$c" la       "$g" - just like ls but have more info."| pv -qL 20
	     echo $g" ✓"$c" cls      "$g" - clear screen"| pv -qL 20
	     echo $g" ✓"$c" quit     "$g" - exit"| pv -qL 20
	     sleep 4
	     echo $b" ["$g"✓"$b"]"$g" Just type 'bash' or restart your termux to check theme." | pv -qL 20
     	;;
	*)
	     exit 1
        esac
break;;

2) clear
printf $c
     figlet -f slant "Parrot"
     echo $g"         Created By Mr.P1r4t3"
     sleep 4
     echo $b"["$r"*"$b"]"$r" Warning!!!."| pv -qL 20
     echo $b"["$g"*"$b"]"$r" Do not leave or exit.."| pv -qL 20
     cd $PREFIX/etc
     mv $HOME/Parrot-in-Termux2/main/motd $PREFIX/etc
     cp $HOME/Parrot-in-Termux2/main/parrot $PREFIX/etc
     cd $PREFIX/etc
     echo $b"["$g"*"$b"]"$c" Removing Parrot os theme."| pv -qL 20
     sleep 3
     rm bash.bashrc
     mv bash.bashrc.bak bash.bashrc
     cd
     echo $b"["$g"*"$b"]"$c" Removing extra arrows."| pv -qL 20
     cd .termux
     rm -rf termux.properties
     mv termux.properies.bak termux.properties
     rm $PREFIX/etc/.myip.sh
     echo $b"["$g"✓"$b"]"$c" Parrot os theme Successfuly removed."| pv -qL 20
     sleep 4
     clear
     bash
break;;

     *)
echo $c"    Please select option."
    esac
done
