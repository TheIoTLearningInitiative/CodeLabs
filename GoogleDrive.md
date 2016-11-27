# Google Drive



```sh
user@ubuntu:~$ sudo apt-get install golang git mercurial
user@ubuntu:~$ cat << ! >> ~/.bashrc
> export GOPATH=\$HOME/gopath
> export PATH=\$GOPATH:\$GOPATH/bin:\$PATH
> !
user@ubuntu:~$ source ~/.bashrc
user@ubuntu:~$ 
```