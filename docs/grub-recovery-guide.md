Accessing GRUB Rescue Mode
•	GRUB rescue mode is triggered automatically if the bootloader cannot find its configuration or binaries, often due to corruption, disk changes, or errors in the GRUB configuration.
•	Alternatively, rescue or single-user modes can be accessed by editing the boot entry at the GRUB menu by pressing e and adding systemd.unit=rescue.target to the linux line.
Basic GRUB Rescue Commands
•	ls: Lists disks and partitions (identify your root partition).
•	set: Displays or sets variables like root and prefix.
•	insmod: Loads GRUB modules (such as normal).
•	normal: Attempts to load the standard GRUB interface.
•	boot: Boots the kernel specified by manual commands (rarely used at rescue stage).
Manual Boot Process from GRUB Rescue
1.	Use ls to list partitions and locate the correct one for /boot or /boot/grub.
2.	Set GRUB variables:
set root=(hd0,1)
set prefix=(hd0,1)/boot/grub
Substitute partition identifiers as appropriate.
3.	Load the normal module:
insmod normal
normal
This should return to the standard GRUB menu. If normal isn’t present, the system will stay in rescue mode.
Recovery Using Live USB/DVD
•	Boot from a live Linux environment (USB/DVD). Most distributions allow this from their installation media.
•	Open a terminal.
Mount System Partition
1.	Identify your root partition (e.g., /dev/sda2) with lsblk or fdisk -l.
2.	Mount the root partition:
sudo mount /dev/sda2 /mnt
3.	Mount other partitions if needed:
sudo mount /dev/sda1 /mnt/boot    # If /boot is a separate partition
sudo mount --bind /dev /mnt/dev
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys
Using chroot
•	Enter your installed system’s environment:
sudo chroot /mnt
•	Now commands run as if in the installed system.
GRUB Reinstallation Process
1.	Inside chroot, reinstall GRUB:
grub-install /dev/sda
Replace /dev/sda with your drive.
2.	Regenerate GRUB’s configuration:
update-grub        # Debian/Ubuntu
grub-mkconfig -o /boot/grub/grub.cfg   # Arch/RedHat/generic
3.	Exit chroot and reboot.
Backup Restoration
•	If /etc/default/grub is broken or lost, restore from backup (cp /etc/default/grub.bak /etc/default/grub).
•	Regenerate the GRUB config file as above to apply the restored settings.
Verification Procedures
•	On reboot, ensure the GRUB menu appears and the system boots as expected.
•	Run:
grub-install --recheck /dev/sda
to verify installation; and inspect /boot/grub/grub.cfg for correctness.
•	Optionally, run os-prober and update-grub to check for all installed OS.

