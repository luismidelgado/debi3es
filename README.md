# debi3n
Debian, i3wm. From scratch. Slighlty tuned.

Caveat emptor: driving linux on manual required for the initial mise en place and for daily usage.

## Install debian for netinst firmware
USB tether with a smartphone that has internet access. Helps with the Wi-Fi setup headaches in some cases. Sort out the Wi-Fi setup later.

For Mac machines, use the mac iso.

Install the base system and only the standard system utilities.

## Add `user` to sudo-ers
```
# nano /etc/apt/sources.list
```
Add `contrib non-free` to `buster main`.

Nano editing tips: `Alt+A` start marking text, `Alt+6` copy marked text, `Ctrl+U` paste.

```
# apt update && apt upgrade - y
# apt install sudo
# visudo
```

Mark and copy the `root ALL...` line. Paste below and change `root` with the user name you created.


## Install i3wm, a minimum of apps, utils and a few customizations
```
# apt install unzip
# cd /tmp
# wget http://github.com/itmitica/debi3n/archive/master.zip
# unzip master.zip
# cd debi3n-master
# ./apps.sh
# ./files.sh <user>
```

Reboot. Login. `startx`. Practice the keybindings. Enjoy.

When ncessary, drive linux on manual: learn about new commands.

## Peculiar installs
### OnlyOffice
```
$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
$ sudo nano /etc/apt/sources.list
```

Add `deb https://download.onlyoffice.com/repo/debian squeeze main` source.

```
$ sudo apt update
$ sudo apt install onlyoffice-desktopeditors
```

## Keybindings
### i3wm
`Win+Shift+E` is now an exit menu.

Other normal `i3wm` keybindings.

### rofi
`Win+D` is now rofi.

`Shift+ →` `Shift+ ←` to cycle through rofi screens.

### vifm
`Space` to select files.

`w` to quickly preview the selected file.

`F3` to preview the selected file

`F4` to edit the selected file.

`F5` to copy selection to the other pane.

`F6` to move selection to the other pane.

`F7` to create a new directory.

`Del` to delete selection.

Other normal `vifm` keybindings.

### bash commands history search - reverse
`CTRL+R` start search

`CTRL+G` cancel

## SoG utils (stroke of genius utils)
`~/bin/pm.sh` to park the mouse.

`~/bin/rsr.sh` for a quick status report.

`~/bin/kbden.sh` to change the keyboard layout to English US.

`~/bin/kbdro.sh` to change the keyboard layout to Romanian.

Run SoG utils from rofi `combi` screen: `Win+D`, start typing `pm.` until file is highlighted then press `ENTER`.

Run SoG utils from rofi `run` screen: `Win+D`, `Shift+ →`, start typing `pm.` until file is highlighted then press `ENTER`.

## Tips

### Firewall
`$ sudo gufw`

### HDMI audio
```
$ xrandr --props
$ ...
$ HDMI1 connected ...
$ ...
$ xrandr --output HDMI1 --auto --set "audio" on
```

### Network interfaces
`$ ip link` to list interfaces.

`$ sudo nano /etc/network/interfaces` to edit interfaces.

### USB memory sticks
`$ lsblk` to check `dev` and `mount` points.

`$ pmount /dev/sdc` to mount.

`$ lsblk` to check if `/media/sdc` mount point has been created.

`$ pumount /dev/sdc` to unmount.

`$ lsblk` to check if unmounted successfully.

`$ udisksctl power-off -b /dev/sdc` to safely remove.
