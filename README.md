# Lab 1.4: GRUB Configuration and Boot Process Analysis

**Student:** Cristóbal Serna
**Date:** 29/09/25 
**Course:** Operating Systems

---

## Executive Summary
In this lab, the GRUB bootloader configuration was analyzed and modified to understand the boot process in Linux.  
Changes were made to `/etc/default/grub`, backups were created using scripts, and the effects on the boot menu were verified.  
Screenshots and configuration files provide evidence of all modifications.

---

## Objectives Completed
- Observed and analyzed the original GRUB boot menu.  
- Created backups of GRUB configuration files.  
- Modified GRUB parameters, including timeout and default boot entry.  
- Updated GRUB and validated the new boot menu.  
- Documented recovery procedures and lessons learned.  

---

## Main Changes Implemented
- Set `GRUB_TIMEOUT` to a custom value to control menu wait time.  
- Changed `GRUB_DEFAULT` to set the preferred default boot option.  
- Created scripts for backing up and restoring GRUB (`grub-backup.sh` and `grub-restore.sh`).  
- Collected system information relevant to GRUB using `system-info.sh`.  
- Added screenshots and documented all changes in `docs/`.

---

## Key Learnings
- Importance of creating backups before modifying system-critical files.  
- Understanding GRUB configuration parameters and their effects on the boot process.  
- How to update GRUB safely after changes.  
- How to recover from boot failures using GRUB Rescue mode.  
- Maintaining clear documentation (screenshots, configs, scripts) for reproducibility.

---

## Evidence Files
- **docs/**: Analysis before the lab, configuration changes, GRUB recovery guide, lessons learned.  
- **screenshots/**: Images of original and modified boot menus, GRUB outputs.  
- **configs/**: Original and modified GRUB configuration files and analysis of `grub.cfg`.  
- **scripts/**: Backup, restore, and system info scripts.  
- **recovery/**: Recovery procedures, GRUB Rescue commands, and troubleshooting checklist.
