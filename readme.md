# Linux Shell Utilities Project

This project is a collection of Bash shell scripts designed to help users audit, analyze, and inspect various aspects of a Linux system. Each script serves a specific purpose, from checking disk usage to analyzing logs and generating system manifestos.

## Contents

- `disk_auditor.sh` — Audits disk usage and provides a summary of disk space consumption.
- `log_analyzer.sh` — Analyzes system log files to extract useful information and statistics.
- `manifesto_anshuman.txt` — Example output or template for system manifesto.
- `manifesto_generator.sh` — Generates a manifesto or summary report about the system.
- `package_inspector.sh` — Inspects installed packages and provides details about them.
- `system_identity.sh` — Displays key information about the system's identity (hostname, OS, etc.).

## Usage

1. **Make scripts executable:**
	```bash
	chmod +x *.sh
	```

2. **Run a script:**
	```bash
	./script_name.sh
	```
	Replace `script_name.sh` with the desired script (e.g., `disk_auditor.sh`).

## Script Descriptions

### disk_auditor.sh
Scans the system's disks and provides a summary of disk usage, helping users identify large files or directories.

### log_analyzer.sh
Parses and analyzes system log files (such as `/var/log/syslog` or `/var/log/messages`) to extract errors, warnings, or other relevant statistics.

### manifesto_generator.sh
Creates a manifesto or summary report about the system, which may include hardware, software, and configuration details. The output can be saved as `manifesto_anshuman.txt`.

### package_inspector.sh
Lists and inspects installed packages, providing details such as version, installation date, and dependencies.

### system_identity.sh
Displays essential information about the system, such as hostname, operating system, kernel version, and network configuration.

## Requirements

- Bash shell (most scripts use standard Bash features)
- Standard Linux utilities (e.g., `df`, `du`, `awk`, `grep`, `lsb_release`, `hostname`, etc.)

Some scripts may require root privileges to access certain system files or logs.

## License

This project is provided for educational and informational purposes. Feel free to modify and use the scripts as needed.

## Author

Created by Harshil 
