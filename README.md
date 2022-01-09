## Thinkpad L380 Arch i3 dotfiles

Packages listed in pkglist.txt

![!](https://raw.githubusercontent.com/Hukuta/dotfiles-thinkpad-l380-arch-i3/main/screenshot.png)

### Warning: S3 (suspend) doesn’t work properly on this laptop.

## To disable suspending:

edit file /etc/systemd/logind.conf 

```
HandleLidSwitch=ignore
HandleLidSwitchDocked=ignore
```

Run 

```
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
```

and reboot.

## Swap Fn and Ctrl keys

Enter into  BIOS:

Go to Config -> keyboard/mouse -> Fn and Ctrl Key swap.

## Enabled systemd services
```
$ systemctl list-unit-files --state=enabled
```
~~~
UNIT FILE                          STATE   VENDOR PRESET
autorandr.service                  enabled disabled
bluetooth.service                  enabled disabled
getty@.service                     enabled enabled
greetd.service                     enabled disabled
NetworkManager-dispatcher.service  enabled disabled
NetworkManager-wait-online.service enabled disabled
NetworkManager.service             enabled disabled
ntpd.service                       enabled disabled
systemd-timesyncd.service          enabled enabled
tlp.service                        enabled disabled
remote-fs.target                   enabled enabled
fstrim.timer                       enabled disabled
~~~
