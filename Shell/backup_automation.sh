# Create a directory for backup logs if it doesn't exist
mkdir -p ~/backup_logs

# Copy all .log files from /var/log to the backup directory
cp /var/log/*.log ~/backup_logs/

# Create a compressed tarball of the backup directory
tar -czf ~/backup_logs/backup.tar.gz ~/backup_logs

# Check if the previous command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed and saved as ~/backup_logs/backup.tar.gz"
else
    echo "Copy failed! Backup not created."
fi
