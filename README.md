pac
===

Pac is an Arch Linux script that interfaces with the pacman package manager. I wrote the pac script so that I would not have to type all the pacman commands. The script is used for efficiency, it allows the user to perform day-to-day package maintenance on the system.

Installation
-----------

    git clone https://github.com/massimocannavo/pac.git
    cd pac
    chmod +x pac.sh
    ./pac.sh 

Or, you can run the script globally inside .bin:

    git clone https://github.com/massimo21cannavo/pac.git
    cp pac/pac.sh ~/.bin/pac
    chmod +x ~/.bin/pac
    
In order for the above to work, you must have the .bin inside the home directory. The ~/.bin needs to be in the PATH environment variable.

    mkdir ~/.bin 
    echo "export PATH="${PATH}:/home/your-user-name/.bin" >> ~/.bashrc
    source ~/.bashrc

Usage
-----------
<a href="http://imgur.com/uYJR2Rv"><img src="http://i.imgur.com/uYJR2Rv.png" title="Hosted by imgur.com" /></a>
