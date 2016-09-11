# Text Editors

# Text Editors

> When getting used to the command-line, Linux novices are often put off by other, more advanced text editors such as vim and emacs. While they are excellent programs, they do have a bit of a learning curve. Enter Nano, an easy-to-use text editor that proves itself versatile and simple. [The Beginner’s Guide to Nano, the Linux Command-Line Text Editor](http://www.howtogeek.com/howto/42980/the-beginners-guide-to-nano-the-linux-command-line-text-editor/)

# vi

> vi /ˈviːˈaɪ/ is a screen-oriented text editor originally created for the Unix operating system. The portable subset of the behavior of vi and programs based on it, and the ex editor language supported within these programs, is described by (and thus standardized by) the Single Unix Specification and POSIX. [Wikipedia Vi](https://en.wikipedia.org/wiki/Vi)

- [Gentoo Vi Learning](https://wiki.gentoo.org/wiki/Vim/Guide)
- [Wikibooks Vi Learning](https://en.wikibooks.org/wiki/Learning_the_vi_Editor)

```sh
    root@board:~# vi hellovi.txt
    Press "i"
    Write some text
    Press "ESC" then ":" then "wq" then "Enter"
    root@board:~# 
```

# nano

> nano is a text editor for Unix-like computing systems or operating environments using a command line interface. It emulates the Pico text editor, part of the Pine email client, and also provides additional functionality. In contrast to Pico, nano is licensed under the GNU General Public License (GPL). Released as free software by Chris Allegretta in 1999, today nano is part of the GNU Project. [Wikipedia GNU Nano](https://en.wikipedia.org/wiki/GNU_nano)

See if you can install nano command line editor

```sh
    root@board:~# opkg install nano
    Installing nano (2.0.1-r0) on root.
    Downloading http://repo.opkg.net/edison/repo/core2-32/nano_2.0.1-r0_core2-32.ipk.
    Configuring nano.
    root@board:~# nano hello.txt
    Write some text
    Ctrl-X
    root@board:~#     
```

```sh
    root@board:~# vi hellonano.txt
    Write some text
    Press "CTRL" + "X" then "Enter" then "Y" then "ENTER"
    root@board:~# 
```

