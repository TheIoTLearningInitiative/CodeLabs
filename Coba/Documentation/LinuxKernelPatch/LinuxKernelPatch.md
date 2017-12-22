# Linux Kernel Patch

```sh
user@workstation:~/linux$ git status
On branch master
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
user@workstation:~/linux$ 
```

```sh
user@workstation:~/linux$ git add drivers/Kconfig drivers/Makefile drivers/helloworld/
```

```sh
user@workstation:~/linux$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   drivers/Kconfig
	modified:   drivers/Makefile
	new file:   drivers/helloworld/Kconfig
	new file:   drivers/helloworld/Makefile
	new file:   drivers/helloworld/helloworld.c

user@workstation:~/linux$ 
```

```sh
user@workstation:~/linux$ git commit -s
```

```sh
Drivers: Hello World

Optimized Hello World Kernel Module

Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# Date:      Wed May 31 18:01:26 2017 -0500
#
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#   (use "git push" to publish your local commits)
#
# Changes to be committed:
#       modified:   drivers/Kconfig
#       modified:   drivers/Makefile
#       new file:   drivers/helloworld/Kconfig
#       new file:   drivers/helloworld/Makefile
#       new file:   drivers/helloworld/helloworld.c
#
```

```sh
[master b81849d] Drivers: Hello World
 5 files changed, 36 insertions(+)
 create mode 100644 drivers/helloworld/Kconfig
 create mode 100644 drivers/helloworld/Makefile
 create mode 100644 drivers/helloworld/helloworld.c
user@workstation:~/linux$ 
```

```sh
user@workstation:~/linux$ git log
```

```sh
commit a5f811e5cd53fc7a4a07033d57694147d5b5c914
Author: Abraham Arce <xe1gyq@gmail.com>
Date:   Wed May 31 18:01:26 2017 -0500

    Drivers: Hello World
    
    Optimized Hello World Kernel Module
    
    Signed-off-by: Abraham Arce <xe1gyq@gmail.com>

```

```sh
user@workstation:~/linux$ scripts/checkpatch.pl patches/0001-Drivers-Hello-World.patch 
WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

WARNING: please, no spaces at the start of a line
#79: FILE: drivers/helloworld/helloworld.c:8:
+    printk(KERN_INFO "Module? Hello!\n");$

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#79: FILE: drivers/helloworld/helloworld.c:8:
+    printk(KERN_INFO "Module? Hello!\n");

WARNING: please, no spaces at the start of a line
#80: FILE: drivers/helloworld/helloworld.c:9:
+    return 0;$

WARNING: please, no spaces at the start of a line
#85: FILE: drivers/helloworld/helloworld.c:14:
+    printk(KERN_INFO "Module? Bye!\n");$

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#85: FILE: drivers/helloworld/helloworld.c:14:
+    printk(KERN_INFO "Module? Bye!\n");

total: 0 errors, 6 warnings, 47 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

patches/0001-Drivers-Hello-World.patch has style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.
user@workstation:~/linux$ 
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
patches/0001-Drivers-Hello-World.patch
```

```sh
user@workstation:~/linux$ git send-email patches/0001-Drivers-Hello-World.patch
patches/0001-Drivers-Hello-World.patch
Who should the emails be sent to (if any)? xe1gyq@gmail.com
Message-ID to be used as In-Reply-To for the first email (if any)? 
(mbox) Adding cc: Abraham Arce <xe1gyq@gmail.com> from line 'From: Abraham Arce <xe1gyq@gmail.com>'
(body) Adding cc: Abraham Arce <xe1gyq@gmail.com> from line 'Signed-off-by: Abraham Arce <xe1gyq@gmail.com>'

From: Abraham Arce <xe1gyq@gmail.com>
To: xe1gyq@gmail.com
Subject: [PATCH] Drivers: Hello World
Date: Wed, 31 May 2017 18:21:18 -0500
Message-Id: <1496272878-7212-1-git-send-email-xe1gyq@gmail.com>
X-Mailer: git-send-email 2.1.4

    The Cc list above has been expanded by additional
    addresses found in the patch commit message. By default
    send-email prompts before sending whenever this occurs.
    This behavior is controlled by the sendemail.confirm
    configuration setting.

    For additional information, run 'git send-email --help'.
    To retain the current behavior, but squelch this message,
    run 'git config --global sendemail.confirm auto'.

Send this email? ([y]es|[n]o|[q]uit|[a]ll): y
Password for 'smtp://hochob.vc@gmail.com@smtp.gmail.com:587': 
Password for 'smtp://hochob.vc@gmail.com@smtp.gmail.com:587': 
OK. Log says:
Server: smtp.gmail.com
MAIL FROM:<xe1gyq@gmail.com>
RCPT TO:<xe1gyq@gmail.com>
From: Abraham Arce <xe1gyq@gmail.com>
To: xe1gyq@gmail.com
Subject: [PATCH] Drivers: Hello World
Date: Wed, 31 May 2017 18:26:52 -0500
Message-Id: <1496273212-7350-1-git-send-email-xe1gyq@gmail.com>
X-Mailer: git-send-email 2.1.4

Result: 250 2.0.0 OK 1496273188 v188sm27267079pgv.51 - gsmtp

user@workstation:~/linux$ 
```