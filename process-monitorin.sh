#!/bin/bash
read -p "Enter the process name : " PROCESS_NAME
RESTART="systemctl restart $PROCESS_NAME"

if ps -ef | grep -q "$PROCESS_NAME"; then
    echo "$PROCESS_NAME is running !!!!!!!!!"
else
    echo "Restarting Process !!!!!!!"
    $RESTART
fi
