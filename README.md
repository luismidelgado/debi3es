# debi3es
Debian, i3wm. From scratch. Slighlty tuned.

Caveat emptor: driving linux on manual required for the initial mise en place and for daily usage.

## Install debian using the netinst firmware iso
Puedes descargar el disco de instalación [aquí](https://www.debian.org/CD/netinst/index.es.html)

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

When necessary, drive linux on manual: learn about new commands.

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

### Acrobat Readear DC
```
$ sudo apt install snapd
$ sudo snap install core
$ sudo snap install acrordrdc
$ snap run acrordrdc
```

## Keybindings

### i3wm
`Win+Shift+E` is now an exit menu.

`Win+Z` keybinding for focusing a child container. In relation to `Win+A`, focus parent keybinding.

Other normal `i3wm` keybindings, e.g. `Win+Shift+Space` to toggle floating for active window, `Win+Space` to toggle focus from floated windows to tiled windows and back.

### rofi
`Win+D` is now rofi.

`Shift+ →` `Shift+ ←` to cycle through rofi screens.

### vifm
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

### SMPlayer
`CTRL+C` kompakt mode.

`CTRL+F` open file.

`CTRL+U` open URL.

`CTRL+S` stop.

`CTRL+X` exit.

`1`, `2` contrast control.

`3`, `4` brightness control.

`R`, `T` subtitle positions shift.

`Z`, `X` subtitle delay shift.

Other normal `SMPlayer` keybindings.

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

#### `pmount`
`$ lsblk` to check `dev` and `mount` points.

`$ pmount /dev/sdc` to mount.

`$ lsblk` to check if `/media/sdc` mount point has been created.

`$ pumount /dev/sdc` to unmount.

`$ lsblk` to check if unmounted successfully.

`$ udisksctl power-off -b /dev/sdc` to safely remove.

#### `udiskie`
Add `exec` entry to i3 config file.

### Uniform theming
Start with lxappearance and choose a theme; then choose it in gtk-chtheme. In qt4-config, there is a dropdown menu setting to make qt take the GTK+ settings. Credits: https://askubuntu.com/a/600946.

My personal favorite fonts: Cantarell, size 13 and JuliaMono Medium, size 13.

### Two monitors as one virtual monitor
With `xrandr` on my Macmini Late 2012 `i3wm` installation, the bash scripts `2h.sh` and `2v.sh` will arrange my two monitors horizontally or vertically, while `1h.sh` and `1v.sh` will arrange my two monitors in a single virtual monitor spanning horizontally or vertically.

#### VLC note
I found out that normal user activity prevented fluid full screen rendering in VLC on a different workspace on the second monitor. Playing around this issue, I decided to "fuse" the two monitors in a single virtual monitor: `~/bin/1v.sh`. I started VLC, Terminal, then used `Mod+e` to position each on half the virtual monitor, each on a physical monitor, in fact. I then used `Mod+h` while on Terminal to create a new container. I then opened Chromium and I rearranged Terminal and Chromium by way of `Mod+w`, for a tabbed layout, while the VLC container remained master on the other half of the workspace. I chose a minimal interface for VLC and played it as such, no fullscreen. The difference with such a layout is that a new window on a new workspace can span on both physical monitors. I doubt it is of any use spanning VLC window, but with other stuff it may be desireable to get double the content at a glance.

## Referencias
- [Instalar ‘I3’ Desde Repositorio Oficial De Debian](https://hijosdeinit.gitlab.io/howto_i3wm_debian_10_netbook/)

I ended up uninstalling VLC and I now use SMPlayer in Kompact mode: `CTRL+C`.

### Compositors
With `i3wm`, one may experience poor video rendering: tearing, artefacts. A compositor is nedeed in this case: `xcompmgr`, `compton`, `picom`. Still under consideration, at this point.
