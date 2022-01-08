#Thinkpad L380 Arch i3 dotfiles

Packages listed in pkglist.txt

###Warning: S3 (suspend) doesn’t work properly on this laptop.

##To disable suspending:

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

