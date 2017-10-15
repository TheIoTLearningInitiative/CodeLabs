# Root




```sh
root@server:~# nano /etc/ssh/ssh_config
    ...
    PermitRootLogin without-password
    PermitRootLogin yes
```

```sh
hochob@server:~# ssh-keygen
hochob@server:~# ssh-copy-id root@127.0.0.1
hochob@server:~# ssh root@127.0.0.1 ls
```