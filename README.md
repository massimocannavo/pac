pac
===

Pac is an Arch Linux script that interfaces with the pacman package manager. I wrote the pac script so that I would not have to type all the pacman commands. The script is used for efficiency, it allows the user to perform day-to-day package maintenance on the system.

Installation
-----------

    git clone https://github.com/massimocannavo/pac.git
    cd pac
    chmod +x pac.sh
    ./pac.sh 

Or you can run the script globally inside .bin:

    git clone https://github.com/massimo21cannavo/pac.git
    cp pac/pac.sh ~/.bin/pac
    chmod +x ~/.bin/pac
    
In order for the above to work, you must have the .bin inside the home directory. The ~/.bin needs to be in the PATH environment variable.

    mkdir ~/.bin 
    echo "export PATH="${PATH}:/home/your-user-name/.bin" >> ~/.bashrc
    source ~/.bashrc

Usage
-----------
<a href="http://imgur.com/1yqjrhM"><img src="http://i.imgur.com/1yqjrhM.png" title="Hosted by imgur.com"/></a>

0 = EXIT

This option is used to exit the program. 

1 = INSTALL PACKAGE(S)

Allows the user to install packages. The user will need to enter the name of the package(s) that he or she would like to install. The packages must exist in the package manager, else a warning that the package was not found will be displayed. 

2 = REMOVE PACKAGE(S)

ALlows the user to remove packages. The user will need to enter the name of the package(s) that he or she would like to remove. The package must be currently installed, else a warning that the package was not found will be displayed.

3 = UPGRADE SYSTEM

Allows the user to upgrade the system. It is better to be safe and upgrade only when you are sure that the system is stable. You should not upgrade the system when the updates have just been released. Make sure to backup your system before performing the upgrade. 

4 = SEARCH

Allows the user to search the package manager for existing packages that can be installed on the system.

5 = INSTALLED PACKAGES

Allows the user to list the installed packages of the system. Also a installed.txt file will be created in the users home directory. 

6 = PACKAGE INFO

Allows the user to display the extensive information on a single package. If the package doesn't exist, a warning will be displayed to the user.

7 = CLEAN PACMAN

ALlows the user to clean the cache of the pacman package manager. Be very careful with this option, you will not be able to downgrade to an earlier version of a package. Make sure to backup your system before attempting this option. 

Credits
-----------
Arch Linux, the most well-documented Linux I have encountered. The Arch Linux Wiki helped learn in mere seconds how the pacman package manager works. In my opinion, pacman is the best package manager I have seen. Thank you for creating Arch Linux. 

https://wiki.archlinux.org/index.php/pacman#Upgrading_packages
