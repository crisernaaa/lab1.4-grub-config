# Configuration Changes

This document summarizes the modifications made to the GRUB configuration during Lab 1.4.

---

## 1. Files Modified
- `/etc/default/grub`
- `/boot/grub/grub.cfg` (automatically updated via `update-grub`)

---

## 2. Changes Implemented
- **GRUB_TIMEOUT**: Adjusted to a custom value to control the boot menu wait time.  
- **GRUB_DEFAULT**: Changed the default boot entry to the preferred operating system.  
- Verified the presence of recovery and advanced options in the boot menu.  
- Ensured kernel parameters (`root=UUID=… rw`, `quiet splash`) are correct.  

---

## 3. Methodology
1. Created backups of the original GRUB configuration using `grub-backup.sh`.  
2. Edited `/etc/default/grub` to apply the desired modifications.  
3. Ran `sudo update-grub` to regenerate `grub.cfg`.  
4. Rebooted the VM and observed the boot menu to verify changes.  

---

## 4. Results
- No errors occurred after booting the system.  
- The GRUB menu displayed correctly with the modified timeout and default entry.  
- Recovery and advanced options were intact and functional.  

---

## 5. Notes
- All changes were made following safe practices to prevent system boot issues.  
- Backups are stored in `configs/` for reproducibility and recovery purposes.

