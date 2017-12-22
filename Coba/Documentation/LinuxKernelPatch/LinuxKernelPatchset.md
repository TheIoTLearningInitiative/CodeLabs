# Linux Kernel Patchset

```sh
user@workstation:~/linux$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
user@workstation:~/linux$ git checkout -b multiple origin/master
Branch multiple set up to track remote branch master from origin.
Switched to a new branch 'multiple'
user@workstation:~/linux$ 
```

```sh
xe1gyq@server:~/linux$ git apply patches/0001-Drivers-Hello-World.patch
patches/0001-Drivers-Hello-World.patch:58: new blank line at EOF.
+
patches/0001-Drivers-Hello-World.patch:94: new blank line at EOF.
+
warning: 2 lines add whitespace errors.
xe1gyq@server:~/linux$ 
```

## Git Status

```sh
user@workstation:~/linux$ git status
On branch multiple
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   drivers/Kconfig
	modified:   drivers/Makefile

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	drivers/helloworld/

no changes added to commit (use "git add" and/or "git commit -a")
```

## Git Add ../HelloWorld/HelloWorld.c

```sh
user@workstation:~/linux$ git add drivers/helloworld/helloworld.c
```

```sh
user@workstation:~/linux$ git commit -s
```

```sh
Drivers: Hello World Source Code

Optimized Hello World Kernel Module

Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
# On branch multiple
# Your branch is up-to-date with 'origin/master'.
#
# Changes to be committed:
#       new file:   drivers/helloworld/helloworld.c
#
# Changes not staged for commit:
#       modified:   drivers/Kconfig
#       modified:   drivers/Makefile
#
# Untracked files:
#       drivers/helloworld/Kconfig
#       drivers/helloworld/Makefile
#
```

```sh
[multiple 761be25] Drivers: Hello World Source Code
 1 file changed, 23 insertions(+)
 create mode 100644 drivers/helloworld/helloworld.c
```

## Git Add ../HelloWorld/Makefile

```sh
user@workstation:~/linux$ git add drivers/helloworld/Makefile
```

```sh
user@workstation:~/linux$ git commit -s
```

```sh
Drivers: Hello World Makefile   

Makefile for Optimized Hello World Kernel Module

Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
# On branch multiple
# Your branch is ahead of 'origin/master' by 1 commit.
#   (use "git push" to publish your local commits)
#
# Changes to be committed:
#       new file:   drivers/helloworld/Makefile
#
# Changes not staged for commit:
#       modified:   drivers/Kconfig
#       modified:   drivers/Makefile
#
# Untracked files:
#       drivers/helloworld/Kconfig
#
```

```sh
[multiple b0c1d51] Drivers: Hello World Makefile
 1 file changed, 1 insertion(+)
 create mode 100644 drivers/helloworld/Makefile
```

## Git Add ../HelloWorld/Kconfig

```sh
user@workstation:~/linux$ git add drivers/helloworld/Kconfig
```

```sh
user@workstation:~/linux$ git commit -s
```

```sh
Drivers: Hello World Kconfig

Kconfig for Optimized Hello World Kernel Module

Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# Date:      Wed May 31 18:49:24 2017 -0500
#
# On branch multiple
# Your branch is ahead of 'origin/master' by 3 commits.
#   (use "git push" to publish your local commits)
#
# Changes to be committed:
#       new file:   drivers/helloworld/Kconfig
#
# Changes not staged for commit:
#       modified:   drivers/Kconfig
#       modified:   drivers/Makefile
#
```

```sh
[multiple 82f295b] Drivers: Hello World Kconfig
 1 file changed, 9 insertions(+)
 create mode 100644 drivers/helloworld/Kconfig
```

## Git Add ../Makefile

```sh
user@workstation:~/linux$ git add drivers/Makefile
```

```sh
user@workstation:~/linux$ git commit -s
```

```sh
Drivers: Hello World Compilation

Enable Hello World Kernel Module Compilation

Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# Date:      Wed May 31 18:51:39 2017 -0500
#
# On branch multiple
# Your branch is ahead of 'origin/master' by 4 commits.
#   (use "git push" to publish your local commits)
#
# Changes to be committed:
#       modified:   drivers/Makefile
#
# Changes not staged for commit:
#       modified:   drivers/Kconfig
#
```

```sh
[multiple 7d44f56] Drivers: Hello World Compilation
 1 file changed, 1 insertion(+)
```

## Git Add ../Kconfig

```sh
user@workstation:~/linux$ git add drivers/Kconfig
```

```sh
user@workstation:~/linux$ git commit -s
```

```sh
Drivers: Hello World Kernel Configuration

Enable Hello World Kernel Module Compilation

Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# Date:      Wed May 31 18:54:22 2017 -0500
#
# On branch multiple
# Your branch is ahead of 'origin/master' by 5 commits.
#   (use "git push" to publish your local commits)
#
# Changes to be committed:
#       modified:   drivers/Kconfig
#
```

```sh
[multiple 4ee00c8] Drivers: Hello World Kernel Configuration
 1 file changed, 2 insertions(+)
```

## Git Log

```sh
user@workstation:~/linux$ git log --pretty=oneline
```

```sh
52441d5113d84f51d9090a94fe3be1df41411323 Drivers: Hello World Kernel Configuration
1586aa8cbd5042cdefc408f13866e9b28b2e15f7 Drivers: Hello World Compilation
82f295bd8ccaf058b24eed8f3c6978bc2c28a349 Drivers: Hello World Kconfig
b0c1d51959126aadd8e238698ef2d65252ed277c Drivers: Hello World Makefile
761be2516193f7719c9d3b5112452992a8c0690f Drivers: Hello World Source Code
d602fb6844940b23afb64d4bf70bb963c15571ee Merge branch 'overlayfs-linus' of git://git.kernel.org/pub/scm/linux/kernel/git/mszeredi/vfs
```

# Git Send Email

- [documentation Git Send Email](https://git-scm.com/docs/git-send-email)

```sh
root@workstation:~# apt install git-email
```

```sh
user@workstation:~/linux$ nano ~/.gitconfig
[user]
        name = Abraham Arce
        email = email@gmail.com
[push]
        default = simple
[sendemail]
        smtpEncryption = tls
        smtpServer = smtp.gmail.com
        smtpUser = email@gmail.com
        smtpServerPort = 587
```

```sh
user@workstation:~/linux$ git format-patch -M origin/master
0001-Drivers-Hello-World.patch
```

```sh
user@workstation:~/linux$ git format-patch -M origin/master -o patches/
patches/0001-Drivers-Hello-World-Source-Code.patch
patches/0002-Drivers-Hello-World-Makefile.patch
patches/0003-Drivers-Hello-World-Kconfig.patch
patches/0004-Drivers-Hello-World-Compilation.patch
patches/0005-Drivers-Hello-World-Kernel-Configuration.patch
```

## Cover Letter

```sh
xe1gyq@server:~/linux$ rm patches/*
```

```sh
xe1gyq@server:~/linux$ git format-patch --cover-letter -M origin/master -o patches/
patches/0000-cover-letter.patch
patches/0001-Drivers-Hello-World-Source-Code.patch
patches/0002-Drivers-Hello-World-Makefile.patch
patches/0003-Drivers-Hello-World-Kconfig.patch
patches/0004-Drivers-Hello-World-Compilation.patch
patches/0005-Drivers-Hello-World-Kernel-Configuration.patch
xe1gyq@server:~/linux$ 
```

```sh
From 52441d5113d84f51d9090a94fe3be1df41411323 Mon Sep 17 00:00:00 2001
From: Abraham Arce <xe1gyq@gmail.com>
Date: Wed, 31 May 2017 19:01:24 -0500
Subject: [PATCH 0/5] *** SUBJECT HERE ***

*** BLURB HERE ***

Abraham Arce (5):
  Drivers: Hello World Source Code
  Drivers: Hello World Makefile
  Drivers: Hello World Kconfig
  Drivers: Hello World Compilation
  Drivers: Hello World Kernel Configuration

 drivers/Kconfig                 |  2 ++
 drivers/Makefile                |  1 +
 drivers/helloworld/Kconfig      |  9 +++++++++
 drivers/helloworld/Makefile     |  1 +
 drivers/helloworld/helloworld.c | 23 +++++++++++++++++++++++
 5 files changed, 36 insertions(+)
 create mode 100644 drivers/helloworld/Kconfig
 create mode 100644 drivers/helloworld/Makefile
 create mode 100644 drivers/helloworld/helloworld.c

-- 
2.1.4
```