#!/bin/bash
# grub-backup.sh
# Script to backup GRUB configuration files

# Fecha actual para el backup
DATE=$(date +%Y%m%d_%H%M%S)

# Carpeta de destino del backup
BACKUP_DIR="$HOME/grub_backup_$DATE"

# Crear la carpeta de backup
mkdir -p "$BACKUP_DIR"

# Archivos a respaldar
FILES=(
    "/etc/default/grub"
    "/boot/grub/grub.cfg"
)

echo "Backing up GRUB configuration to $BACKUP_DIR"

# Copiar archivos
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        cp "$FILE" "$BACKUP_DIR/"
        echo "Copied $FILE"
    else
        echo "Warning: $FILE not found!"
    fi
done

echo "Backup completed successfully!"
