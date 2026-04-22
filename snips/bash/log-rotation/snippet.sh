#!/bin/bash
# Log Rotation Script
# Rotates log files by renaming them with a timestamp
# and keeping only the most recent N backups.

LOG_DIR="/var/log/myapp"
MAX_BACKUPS=5
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

rotate_log() {
  local log_file="$1"

  if [[ ! -f "$log_file" ]]; then
    echo "Log file not found: $log_file"
    return 1
  fi

  # Rename current log with timestamp
  mv "$log_file" "${log_file}.${TIMESTAMP}.bak"
  touch "$log_file"

  echo "Rotated: $log_file → ${log_file}.${TIMESTAMP}.bak"

  # Remove old backups beyond MAX_BACKUPS
  local backup_count
  backup_count=$(ls -1 "${log_file}".*.bak 2>/dev/null | wc -l)

  if (( backup_count > MAX_BACKUPS )); then
    ls -1t "${log_file}".*.bak | tail -n +$((MAX_BACKUPS + 1)) | xargs rm -f
    echo "Cleaned up old backups (kept $MAX_BACKUPS)"
  fi
}

# Rotate all .log files in the directory
for log in "$LOG_DIR"/*.log; do
  rotate_log "$log"
done
