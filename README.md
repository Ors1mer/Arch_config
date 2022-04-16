# Arch config
### About
Configs are created and stored for my personal use. <br>
The shell scripts must work for the most distros, though I recommend looking at the **Install** section before using them if you want to.

### Programs I use:
* ***bspwm*** as WM
* ***sxhkd*** as hotkey deamon
* ***polybar*** as status bar
* ***picom*** as composite manager
* ***pywal*** for colorscheme
* ***bash*** as the shell
* ***vim*** as the main text editor
* ***xfce4*** as the terminal emulator

### How it looks
![Desktop](https://raw.githubusercontent.com/Ors1mer/Arch_config/main/images/example.png)

### Install
Firstly, move to the repo directory:
```bash
cd Arch_config
```
Configs installation is pretty simple::
```bash
(sudo) ./post-install.sh
./config_setup.sh
```
Where *post-install.sh* installs all of the packages from packages.dat and also some python pip modules that I use. *config_setup.sh* should be used with caution as it rewrites bspwm, sxhkd and polybar configuration files, and also applies pywal colorscheme and wallpaper.
<br><br>
Other dotfiles must be moved manually into the user's home directory (for the sake of safety I didn't add this in the script):
```bash
cp -r configs/.*rc $HOME/
```
And the last but not least, terminal config:
```bash
cp -r configs/terminalrc $HOME/.config/xfce4/terminal/
```
