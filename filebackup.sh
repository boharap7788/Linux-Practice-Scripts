#!/bin/bash

SOURCE_DIR="/home/ubuntu/logs-backup/"
BACKUP_DIR="/home/ubuntu/"

if [ ! -d "$BACKUP_DIR" ];
then
        mkdir -p "$BACKUP_DIR"
fi

tar -czvf "$BACKUP_DIR/backup_$(date "+%Y.%m.%d-%H.%M.%S").tar.gz" --absolute-names "$SOURCE_DIR"

# Send email notification
echo "Backup completed successfully!" | mail -s "Data Backup Report" boharap475@gmail.com