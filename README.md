# Log File Analyzer

A simple Bash scripting tool that analyzes log files and extracts useful information from them.

## Features

- Count total lines in a log file
- Count total error lines
- Find the 5 most frequently occurring errors
- Find unique IP addresses
- Accept a log file path or filename

## Usage

Make the script executable:

```bash
chmod +x analyze.sh
```

Analyze a log file using its path:

```bash
./analyze.sh -p /path/to/logfile
```

Or provide a file from the current directory:

```bash
./analyze.sh -f logfile
```

Show help:

```bash
./analyze.sh -h
```

## Technologies

- Bash
- Linux
- grep
- sed
- sort
- uniq
- wc
- getopts

## Purpose

A beginner-friendly Bash project created to practice **file handling, text processing, command-line arguments, and Linux automation**.