# infoscreen

The info screens synchronized in the makerspace.

See
- [MakerSpace Calendar](https://ammanvalley.foss.wales/t/calendar-for-the-makerspace/233)
- [Advertisement Screens](https://ammanvalley.foss.wales/t/advertisement-screens-of-events/86)

<img src="https://user-images.githubusercontent.com/564768/215332306-38d6bc3f-1a7d-4229-8568-2e8973433728.jpg" height="300px">

## Setup

Setup a system `Raspberry Pi OS Legacy 32 bit` with the user `pi`. All scripts with with links to that user. Once booted, you can follow these steps in the console of the pi.

Create SSH key:

```
ssh-keygen
```

Add the deploy key to https://github.com/AmmanVMS/infoscreen/settings/keys
You can get the deploy key with this command:

```
cat .ssh/id_rsa.pub
```

Clone the repository

```
cd
git clone git@github.com:AmmanVMS/infoscreen.git
```

Link the autostart script:

```
mkdir -p ~/.config/lxsession/LXDE-pi/
ln -st ~/.config/lxsession/LXDE-pi/ ~/infoscreen/autostart
```
Set screen rotation:

Add this to `sudo nano /boot/config.txt`:

```
# rotate 90deg
# see https://linuxhint.com/rotate-screen-raspberry-pi/#:~:text=Step%201%3A%20Go%20to%20the,%E2%80%9D%20and%20%E2%80%9Cleft%E2%80%9D%20options.
display_hdmi_rotate=3
```

Add autostart of screen off and update `crontab -e`:

```
# turn the screen off and on
0 22 * * * /home/pi/infoscreen/screen-switch off
0  7 * * * /home/pi/infoscreen/screen-switch on
# update the repository
0 5 * * * /home/pi/infoscreen/update





## Further Reading

Screen config:
- .config/lxsession/LXDE-pi/autostart
- https://codex.so/kiosk-mode-on-raspberry-pi	
- https://linuxhint.com/rotate-screen-raspberry-pi/#:~:text=Step%201%3A%20Go%20to%20the,%E2%80%9D%20and%20%E2%80%9Cleft%E2%80%9D%20options.

switch screens on/off:
- https://askubuntu.com/questions/963921/how-to-force-a-remote-server-to-wake-up-its-monitor-using-ssh


