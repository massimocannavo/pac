#! /bin/bash 

##############################################################
# File:        pac.sh                                        #
#                                                            #
# Owner:       Massimo Cannavo                               #
#                                                            #
# Date:        Sun Jul  6 15:29:39 PDT 2014                  #        
#                                                            #
# Description: Arch Linux script that minimizes the          #
#              dificulty of managing your system with the    #
#              pacman package manager.                       #
##############################################################

# Allows the user to install a package or multiple packages.
# If the package name doesn't exist, the user will be given
# a warning that the package could not be found. The install
# method interfaces with the Arch Linux package manager. The
# user is also able to install package groups. 
install ()
{
    # Ask the user to enter the package name to install.
    echo -e "\nENTER THE NAME OF THE PACKAGE(S):"
    read package
    echo -e "\n"
    
    # Install the specified package(s). 
    sudo pacman -S $package
}

# Allows the user to remove a package or multiple packages.
# If the package name doesn't exist, the user will be given
# a warning that the package could not be found. The remove
# method interfaces with the Arch Linux package manager.
remove ()
{
    # Ask the user to enter the package name to remove.
    echo -e "\nENTER THE NAME OF THE PACKAGE(S):"
    read package
    echo -e "\n"

    # Remove the specified package(s).
    sudo pacman -Rs $package
}

# Allows the user to upgrade their system. The upgrade
# method interfaces with the Arch Linux package manager.
upgrade ()
{
    # Upgrade the system.
    echo -e "\n"
    sudo pacman -Syu
    echo -e "\n"
}

# Allows the user to search for packages. The search
# method interfaces with the Arch Linux package manager.
search ()
{
    # Ask the user for the package to search.
    echo -e "\nENTER THE NAME OF THE PACKAGE:"
    read package
    echo -e "\n"

    # Search for the specified package(s).
    pacman -Ss $package | less
}

# Allows the user to list the installed packages on 
# the system. The installed method will display the
# installed packages on the terminal and it will 
# create a installed.txt file with the installed
# packages. The method interfaces with the Arch Linux
# pacman package manager. 
installed ()
{
    # List the installed packages on the system.
    echo -e "\n"
    pacman -Qs | less
    
    # Create the installed.txt file in the home folder.
    pacman -Qs > ~/installed.tx
}

# Allows the user to display extensive information on 
# a package. The package_info method interfaces with the
# Arch Linux pacman package manager. 
package_info ()
{
    # Ask the user to enter the package name.
    echo -e "\nENTER THE NAME OF THE PACKAGE(S):"
    read package
    echo -e "\n"

    # Display extensive information on the package(s).
    pacman -Si $package | less
}

# The main function is known as the entry point of the 
# program. The execution of the program will start inside
# main. A menu will be displayed to the user with all the
# possible options of the program. 
main ()
{
    # Display the menu to the user.
    while :
    do
        echo -e "\n------------------------"
        echo "██████╗  █████╗  ██████╗"
        echo "██╔══██╗██╔══██╗██╔════╝"
        echo "██████╔╝███████║██║"     
        echo "██╔═══╝ ██╔══██║██║"     
        echo "██║     ██║  ██║╚██████╗"
        echo "╚═╝     ╚═╝  ╚═╝ ╚═════╝"
        echo "------------------------"                        
        echo "0 = EXIT"
        echo "1 = INSTALL PACKAGE(S)"
        echo "2 = REMOVE PACKAGE(S)"
        echo "3 = UPGRADE SYSTEM"
        echo "4 = SEARCH"
        echo "5 = INSTALLED PACKAGES"
        echo -e "6 = PACKAGE INFO\n"
        read choice

        if [ $choice = 0 ]; then
            echo -e "\n"
            exit
        
        elif [ $choice = 1 ]; then
            install
        
        elif [ $choice = 2 ]; then
            remove
        
        elif [ $choice = 3 ]; then
            upgrade

        elif [ $choice = 4 ]; then
            search
    
        elif [ $choice = 5 ]; then
            installed

        elif [ $choice = 6 ]; then
            package_info

        else
            echo -e "\npac: invalid choice entered.\n"
            exit
        fi
    done
}

main
