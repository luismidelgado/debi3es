# debi3n
Debian, i3wm. From scratch. Slighlty tuned.

Caveat emptor: manual gear drive required for initial mise en place and for daily usage.

## Install debian for netinst firmware
USB tether with a smartphone that has internet access. Saves a lot of initial WiFi headaches. You can sort out the WiFi later.

For Mac machines, use the mac iso.

Install the base system and only the standard system utilities.

## Add `contrib non-free`, add user to sudo-ers
```
# nano /etc/apt/sources.list
```
Add `contrib non-free` to `buster main`.

Nano editing tips: `Alt + A` start marking text, `Alt + 6` copy marked text, `Ctrl + U` paste.

```
# apt update && apt upgrade - y
# apt install sudo
# visudo
```

Mark and copy the `root ALL...` line. Paste below and change `root` with the user name you created.


## Install i3: a minimum of apps, utils and a few customizations
```
# apt install unzip
# cd /tmp
# wget http://github.com/itmitica/debi3n/archive/master.zip
# unzip master.zip
# cd debi3n-master
# ./apps.sh
# ./files.sh <user>
```

Reboot. Enjoy.

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
### i3
`Win + Shift + e` is now an exit menu.

Other normal `i3` keybindings.

### rofi
`Win + d` is now rofi.

`Shift + →` `Shift + ←` to cycle through rofi screens.

### vifm
`Space` select files

`w` preview file

`F3` view file

`F4` edit file

`F5` copy selection to other pane

`F6` move selection to other pane

`F7` make directory

`Del` delete selection

Other normal `vifm` keybindings.

### bash commands history search - reverse
`CTRL+R` start search

`CTRL+G` cancel

## SoG utils (stroke of genius utils)
`~/bin/pm.sh` park mouse

`~/bin/rsr.sh` status report

`~/bin/kbden.sh` change keyboard to English US layout

`~/bin/kbdro.sh` change keyboard to Romanian layout

Run SoG utils from rofi `run` screen: `Win + d`, `Shift + →`, start typing `pm.` until file is highlighted then press `ENTER`.

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
