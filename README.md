pac
===

Pac is an Arch Linux script that interfaces with the pacman package manager. I wrote the pac script so that I would not have to type all the pacman commands. The script is used for efficiency, it allows the user to perform day-to-day package maintenance on the system.

Installation
===
1. Download the pac repository. 
2. Unzip pac-master.zip.
3. cd pac-master
4. mv pac.sh to your script folder
5. run the script ./pac.sh

I personally use ~/Scripts located in my home folder to keep all my scripts.
To run the script globally, I create a symbolic link inside ~/.bin located in my home folder.

cd ~/.bin 

ln -s ~/Scripts/pac/pac.sh pac
