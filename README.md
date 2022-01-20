# Ubuntu Server Declutter
Ubuntu Server installation comes with some software, that is unnecessary, or straight up stupid to install on server-oriented distro (like bluetooth manager, audio manager, speech synthetiser etc). This script was created to remove all of those packages, freeing up almost 500MB of drive space, and around 200MB of memory usage (I was able to manage 142MB of RAM usage with fresh install). 

## Usage
Simply clone the repo whereever you want

`git clone https://github.com/ApplePie420/Ubuntu-server-declutter.git` 

make the script executable

`sudo chmod +x declutter.sh`

and run the script (you need sudo privileges)

`sudo ./declutter.sh`

It will give you colored output of what is currently happening. If you are curious, you can look at what is actually being uninstalled (everything is commented).
