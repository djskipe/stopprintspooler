# Stop and Clean Printer Spooler Script

This batch script is designed to stop the Windows print spooler service, clean the print queue by removing all print jobs, and then restart the spooler service. It is useful for troubleshooting issues with stuck print jobs.

## Features

- Stops the print spooler service.
- Removes any stuck print jobs in the queue.
- Restarts the print spooler service.

## Usage

1. Download the script and save it as `stop_printer_spooler.bat` (or any name with a `.bat` extension).
2. Right-click the script and select **Run as Administrator** to run it with elevated privileges.
3. The script will stop the print spooler, clear the print queue, and restart the spooler automatically.

## How It Works

- The script first checks if the user has administrator privileges. If not, it prompts for elevation and reruns the script with elevated permissions.
- It stops the `spooler` service, removes any files in the print queue located in `%SYSTEMROOT%\System32\Spool\Printers\`, and then restarts the spooler service.
- Once the operation is completed, it asks the user to press any key to exit.

## Requirements

- Windows operating system
- Administrator privileges to run the script

## Notes

- This script should be used for troubleshooting print jobs that are stuck in the print queue or when there is an issue with the print spooler service.
- Always ensure to run the script with administrative rights for it to work properly.


