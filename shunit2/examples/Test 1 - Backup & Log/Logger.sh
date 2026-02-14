#!/bin/bash
####################################
#
# Backup script.
#
####################################

# What to backup. 
backup_files="./test/"

# Where to backup to.
dest="./"

# Create archive filename.
archive_file="backup_$(date +%Y-%m-%d).tgz"

if [ $(((`date +%s` - `stat -L --format %Y $backup_files`) > (10))) -eq 1 ]; then
    # Backup the files using tar.
    tar czf $dest/$archive_file $backup_files
    # Print end status message.
    echo "Backup finished"
    date
    # Long listing of files in $dest to check file sizes.
    exec ls -lh $backup_files>log_$(date +%Y-%m-%d).out
fi
  

