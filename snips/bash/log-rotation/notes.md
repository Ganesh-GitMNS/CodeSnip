# Log Rotation

## What It Does

Automatically rotates log files by renaming them with a timestamp suffix and removing the oldest backups once a maximum count is exceeded.

## Configuration

| Variable       | Default              | Purpose                          |
|----------------|----------------------|----------------------------------|
| `LOG_DIR`      | `/var/log/myapp`     | Directory containing log files   |
| `MAX_BACKUPS`  | `5`                  | Number of backup files to keep   |

## How It Works

1. Renames `app.log` → `app.log.20260313-214000.bak`
2. Creates a fresh, empty `app.log`
3. Counts existing `.bak` files and deletes the oldest if over the limit

## Tips

- Schedule with `cron` for automatic rotation (e.g., daily at midnight)
- Adjust `MAX_BACKUPS` based on disk space and retention needs
- Consider compressing old backups with `gzip` for large log files
