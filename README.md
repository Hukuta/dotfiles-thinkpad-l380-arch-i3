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

