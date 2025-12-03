# Windows Script Collection

A collection of useful Windows batch (.cmd) and PowerShell (.ps1) scripts for system administration and automation tasks.

## Scripts Overview

### 1. firstexample.cmd
A simple "Hello World" script that demonstrates basic command output.

**Usage:**
```cmd
firstexample.cmd
```

**Output:**
```
Hello World
```

---

### 2. logicexample.cmd
Demonstrates conditional logic by checking if a backup folder exists and creating it if necessary.

**Usage:**
```cmd
logicexample.cmd
```

**What it does:**
- Checks if `C:\Users\Daed\BACKUP` exists
- Creates the folder if it doesn't exist
- Displays appropriate status messages

**Note:** Update the `BACKUP_FOLDER` variable to match your desired backup location.

---

### 3. morningreport.cmd
A batch script that performs a quick system health check, useful for morning routine checks.

**Usage:**
```cmd
morningreport.cmd
```

**Information displayed:**
- Total and available physical memory
- System boot time and uptime
- Top 5 memory-consuming processes

**Features:**
- Simple text output
- Uses built-in Windows commands (systeminfo, tasklist)
- Pauses at the end for review

---

### 4. morningreport.ps1
A PowerShell version of the morning system check with enhanced formatting and additional metrics.

**Usage:**
```powershell
.\morningreport.ps1
```

**Information displayed:**
- Disk space usage for all drives (in GB)
- Total and free physical memory (in GB)
- System uptime (days, hours, minutes)
- Top 5 memory-consuming processes (in MB)

**Features:**
- Color-coded output for better readability
- More detailed and formatted information
- Automatic calculations and conversions to GB/MB

---

## Requirements

### For .cmd files:
- Windows Command Prompt
- No additional requirements

### For .ps1 files:
- Windows PowerShell 5.1 or later
- Execution policy may need to be adjusted to run scripts:
  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

## Installation

1. Download the scripts to a folder on your system
2. For batch files (.cmd), simply double-click or run from Command Prompt
3. For PowerShell files (.ps1), right-click and select "Run with PowerShell" or execute from PowerShell terminal

## Tips

- **Morning Report Scripts**: Consider scheduling the morning report scripts to run automatically at system startup or at a specific time using Task Scheduler
- **Backup Script**: Modify the backup folder path in `logicexample.cmd` before running
- **PowerShell Performance**: The PowerShell version provides more detailed information and better formatting, making it ideal for regular system monitoring

## License

Feel free to modify and use these scripts for personal or commercial purposes.