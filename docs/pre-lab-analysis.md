# Pre-Lab Analysis

This document summarizes the observations made before modifying the GRUB configuration.

---

## 1. Boot Menu Observation
- The GRUB boot menu currently has **no timeout** (`GRUB_TIMEOUT=0`).  
  - Result: The menu waits indefinitely for user input until a selection is made.  
- There are **four boot options** available:
  1. Ubuntu  
  2. Advanced options for Ubuntu  
  3. Memory test (memtest86+)  
  4. Memory test (serial console)  

---

## 2. Potential Considerations
- Since the timeout is set to 0, the user must manually select the desired option, which may slow down automated boot processes.  
- It is important to verify that the default boot entry and recovery options are correctly listed before making any changes.

---

## 3. Preliminary Notes
- A screenshot of the current boot menu was taken for documentation purposes (`screenshots/01-original-boot-menu.png`).  
- This baseline analysis will be used to compare the effects of configuration changes made during the lab.
