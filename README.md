# debi3n
i3wm on debian, from scratch

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

### rofi
`Win + d` rofi

`Shift + →` `Shift + ←` rofi screens

### i3
`Win + Shift + e` exit menu

Other normal `i3` keybindings.

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
