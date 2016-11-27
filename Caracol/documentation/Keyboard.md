# Keyboard

```sh
user@ubilinux:~$ sudo apt-get install wish xbindkeys
```

```sh
user@ubilinux:~$ xbindkeys
Error : /home/user/.xbindkeysrc not found or reading not allowed.
please, create one with 'xbindkeys --defaults > /home/user/.xbindkeysrc'.
or, if you want scheme configuration style,
with 'xbindkeys --defaults-guile > /home/user/.xbindkeysrc.scm'.
user@ubilinux:~$ 
```

```sh
user@ubilinux:~$ xbindkeys --defaults > /home/user/.xbindkeysrc
```

```sh
user@ubilinux:~$ nano /home/user/.xbindkeysrc
```

```sh
"mplayer -fs /home/user/Downloads/videoplayb_01NYLBn1.mp4"
  Control + 1

"mplayer -fs /home/user/CodeLabs/Caracol/files/output.mp4"
  Control + 3

"/home/user/Downloads/snes9x-1.53-src/unix/snes9x /home/user/Downloads/DonkeyKongCountry.zip"
  Control + 9

"python /home/user/CodeLabs/Caracol/usay.py"
  Shift + 1

"python /home/user/CodeLabs/Caracol/usmile.py"
  Shift + 2

"python /home/user/CodeLabs/Caracol/ulapse.py"
  Shift + 3
```

```sh
user@ubilinux:~$ xbindkeys
```
