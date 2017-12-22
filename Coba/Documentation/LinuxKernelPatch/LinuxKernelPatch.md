# Kernel Patch

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