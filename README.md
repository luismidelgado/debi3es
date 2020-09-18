# debi3n
debian, i3, from scratch

caveat emptor: realies heavily on manual user drive for mise en place and usage

## install debian for mac netinst firmware
usb tether with a smartphone that has internet access


## add `contrib non-free` and add user to sudo-ers
```
# nano /etc/apt/sources.list
```
add `contrib non-free` to `buster main` suffixes

`Alt + A` start marking text

`Alt + 6` copy marked text

`Ctrl + U` paste

```
# apt update && apt upgrade - y
# apt install sudo
# visudo
```

mark and copy the `root ALL...` line

paste below and change `root` with the user name you created


## install i3, a minimum of apps and utils and add a few customizations
```
# apt install unzip
# cd /tmp
# wget http://github.com/itmitica/debi3n/archive/master.zip
# unzip master.zip
# cd debi3n-master
# ./apps.sh
# ./files.sh <user>
```

## install onlyoffice
```
$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
$ sudo nano /etc/apt/sources.list
```

add `deb https://download.onlyoffice.com/repo/debian squeeze main`

```
$ sudo apt update
$ sudo apt install onlyoffice-desktopeditors
```

## keybindings

### i3
`Win + Shift + e` exit menu

Other normal `i3` keybindings.

### rofi
`Win + d` rofi

`Shift + →` `Shift + ←` rofi screens

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

## utils
`~/bin/pm.sh` park mouse

`~/bin/rsr.sh` status report

`~/bin/kbden.sh` change keyboard to English US layout

`~/bin/kbdro.sh` change keyboard to Romanian layout

Run utils from rofi `run` screen: `Win + d`, `Shift + →`, start typing `pm.` until file is highlighted then press `ENTER`.

## tips

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
`$ ip link` list interfaces

`$ sudo nano /etc/network/interfaces` edit interfaces

### USB memory sticks
`$ lsblk` check devs and mount points

`$ pmount /dev/sdc` mount

`$ lsblk` check if `/media/sdc` mount point has been created

`$ pumount /dev/sdc` unmount

`$ lsblk` check if unmounted succesfully

`$ udisksctl power-off -b /dev/sdc` safely remove
