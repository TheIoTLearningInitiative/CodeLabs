# Google Drive

```sh
sudo apt-get install golang git mercurial
xe1gyq@jessie:~$ cat << ! >> ~/.bashrc
> export GOPATH=\$HOME/gopath
> export PATH=\$GOPATH:\$GOPATH/bin:\$PATH
> !
xe1gyq@jessie:~$ source ~/.bashrc
xe1gyq@jessie:~$ 
```