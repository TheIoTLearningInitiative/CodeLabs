# Linux Kernel Architecture

> The Linux kernel is an open source monolithic Unix-like computer operating system kernel. The Linux family of operating systems is based on this kernel and deployed on both traditional computer systems such as personal computers and servers, usually in the form of Linux distributions,[9] and on various embedded devices such as routers, wireless access points, PBXes, set-top boxes, FTA receivers, smart TVs, PVRs, and NAS appliances. [Wikipedia](https://en.wikipedia.org/wiki/Linux_kernel)

- [Anatomy of the Linux kernel](https://www.ibm.com/developerworks/library/l-linux-kernel/index.html)
- https://www.slideshare.net/dominiquec/architecture-of-the-linux-kernel-1851975

- User Space
  - User Applications
  - GNU C Library
- Kernel Space
  - System Call Interface
  - Kernel
  - Architecture Dependent Kernel Code

```
C Standard library	open(), exec(), sbrk(), socket(), fopen(), calloc(), ... (up to 2000 subroutines)
glibc aims to be POSIX/SUS-compatible, uClibc targets embedded systems, bionic written for Android, etc.
```

## User Space

> [](https://en.wikipedia.org/wiki/User_space)

## Kernel Space

- System Call Interface
- Kernel
- Architecture Dependent Code
- Process Management
- Memory Management
- 

Kernel Subsystems

- 