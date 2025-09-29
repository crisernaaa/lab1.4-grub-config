# Lessons Learned

During this lab, I gained a deeper understanding of the GRUB bootloader and its role in the Linux boot process.  
The key lessons learned include:

## 1. Importance of Backups
- Before modifying critical configuration files (such as `/etc/default/grub`), it is essential to create backups.  
- This ensures that the system can be restored if something goes wrong.

## 2. GRUB Configuration Parameters
- I learned how parameters like `GRUB_TIMEOUT` and `GRUB_DEFAULT` directly affect the user experience during boot.  
- Changing these values gave me control over which operating system or kernel version loads by default and how much time I have to make a choice.

## 3. Update Process
- After modifying GRUB’s configuration, running `update-grub` is mandatory to apply the changes.  
- This step regenerates the `grub.cfg` file with the new settings.

## 4. Troubleshooting and Recovery
- I practiced recovery steps using GRUB Rescue mode and confirmed how important it is to understand basic recovery commands.  
- Knowing how to troubleshoot helps prevent a full system reinstall in case of misconfiguration.

## 5. Documentation and Evidence
- Maintaining clear documentation (screenshots, config snapshots, and scripts) is crucial for validating work.  
- This also helps in reproducing results or assisting others facing similar issues.

---

### Final Reflection
This lab gave me practical experience with the boot process in Linux. I realized that even small changes in GRUB can have a big impact on the system. Most importantly, I learned the value of careful planning, backing up, and documenting every step when working with low-level system components.
