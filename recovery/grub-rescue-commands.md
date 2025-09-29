# GRUB Rescue Commands

This document provides a list of commonly used commands in GRUB Rescue mode.

---

## 1. Basic Commands

| Command       | Description |
|---------------|-------------|
| `ls`          | Lists available drives and partitions (e.g., `(hd0,msdos1)`) |
| `set`         | Displays current variables like `prefix` and `root` |
| `insmod normal` | Loads the normal GRUB module to return to the standard menu |
| `normal`      | Boots the normal GRUB menu if `prefix` and `root` are set correctly |
| `help`        | Shows a short help message with available commands |

---

## 2. Navigation and Boot

| Command             | Description |
|--------------------|-------------|
| `set root=(hdX,Y)`  | Sets the root partition where GRUB is installed |
| `set prefix=(hdX,Y)/boot/grub` | Sets the location of GRUB modules |
| `linux /vmlinuz root=/dev/sdXY ro quiet splash` | Loads the Linux kernel with parameters |
| `initrd /initrd.img` | Loads the initial RAM disk |
| `boot`              | Boots the selected kernel or OS |

---

## 3. Examples

1. Recover GRUB menu:
```bash
set root=(hd0,msdos1)
set prefix=(hd0,msdos1)/boot/grub
insmod normal
normal

