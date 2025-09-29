#!/bin/bash
# grub-restore.sh
# Script to restore GRUB configuration from a backup

# Verifica que se pase la carpeta de backup como argumento
if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/backup_folder"
    exit 1
fi

BACKUP_DIR="$1"

# Archivos a restaurar
FILES=(
    "grub"
    "grub.cfg"
)

# Restaurar archivos
for FILE in "${FILES[@]}"; do
    SRC="$BACKUP_DIR/$FILE"
    if [ -f "$SRC" ]; then
        if [[ "$FILE" == "grub" ]]; then
            DEST="/etc/default/grub"
        else
            DEST="/boot/grub/grub.cfg"
        fi
        sudo cp "$SRC" "$DEST"
        echo "Restored $FILE to $DEST"
    else
        echo "Warning: $SRC not found!"
    fi
done

# Actualiza GRUB para aplicar cambios
echo "Updating GRUB..."
sudo update-grub

echo "GRUB restoration completed successfully!"
