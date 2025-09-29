#!/bin/bash
# system-info.sh
# Script to collect system information relevant to GRUB and boot

OUTPUT_DIR="$HOME/system_info_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$OUTPUT_DIR"

echo "Collecting system information..."
echo "Output will be saved in: $OUTPUT_DIR"

# 1. OS and kernel info
echo "=== OS and Kernel Info ===" > "$OUTPUT_DIR/os_kernel.txt"
uname -a >> "$OUTPUT_DIR/os_kernel.txt"
lsb_release -a >> "$OUTPUT_DIR/os_kernel.txt" 2>/dev/null

# 2. Disk and partition info
echo "=== Disk and Partition Info ===" > "$OUTPUT_DIR/disk_info.txt"
lsblk >> "$OUTPUT_DIR/disk_info.txt"
df -h >> "$OUTPUT_DIR/disk_info.txt"

# 3. Mounted filesystems
echo "=== Mounted Filesystems ===" > "$OUTPUT_DIR/mounts.txt"
mount >> "$OUTPUT_DIR/mounts.txt"

# 4. GRUB and boot info
echo "=== GRUB Configuration Files ===" > "$OUTPUT_DIR/grub_files.txt"
if [ -f /etc/default/grub ]; then
    cp /etc/default/grub "$OUTPUT_DIR/grub_default.txt"
fi
if [ -f /boot/grub/grub.cfg ]; then
    cp /boot/grub/grub.cfg "$OUTPUT_DIR/grub_cfg.txt"
fi

# 5. Environment and shell info
echo "=== Environment Variables ===" > "$OUTPUT_DIR/env.txt"
env >> "$OUTPUT_DIR/env.txt"

echo "System information collected successfully!"
