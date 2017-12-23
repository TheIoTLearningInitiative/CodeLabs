# Git Source Code Management

> Git (/ɡɪt/) is a version control system for tracking changes in computer files and coordinating work on those files among multiple people. It is primarily used for source code management in software development, but it can be used to keep track of changes in any set of files. [Wikipedia](https://en.wikipedia.org/wiki/Git)

> _The development of Git began on 3 April 2005.[20] Torvalds announced the project on 6 April;[21] it became self-hosting as of 7 April.[20] The first merge of multiple branches took place on 18 April.[22] Torvalds achieved his performance goals; on 29 April, the nascent Git was benchmarked recording patches to the Linux kernel tree at the rate of 6.7 patches per second._

> Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Git is easy to learn and has a tiny footprint with lightning fast performance. [Homepage](https://git-scm.com/)

> Learn Git in your browser for free with [Try Git](https://try.github.io/)

# HelloWorld

```sh
cd
mkdir LinuxKernelHelloWorld
cd LinuxKernelHelloWorld
git init .
git remote add origin https://github.com/xe1gyq/LinuxKernelHelloWorld
git add helloworld.c Makefile
git commit -m "LinuxKernelHelloWorld"
git push origin master
```