import os
import platform
import logging

# Setup logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")
logger = logging.getLogger(__name__)

# Allowed file types
FILE_EXTENSIONS = {".txt", ".pdf", ".csv", ".xml",".docx"}

# Function to detect OS and get the scan directory
def get_scan_directory():
    system_os = platform.system()
    if system_os == "Windows":
        return "C:\\Users"
    elif system_os in ["Linux", "Darwin"]:  # Darwin is macOS
        return "/home"
    else:
        logger.error("Unsupported OS detected.")
        return None

# Function to scan for files
def scan_files(directory):
    found_files = []
    try:
        for root, _, files in os.walk(directory):
            for file in files:
                file_path = os.path.join(root, file)
                _, ext = os.path.splitext(file)
                
                # Only scan certain file types
                if ext.lower() in FILE_EXTENSIONS:
                    found_files.append(file_path)
                    logger.info(f"Found: {file_path}")

    except Exception as e:
        logger.error(f"Error scanning files: {e}")

    return found_files

# Main function
def main():
    scan_directory = get_scan_directory()
    if scan_directory:
        logger.info(f"Scanning directory: {scan_directory}")
        found_files = scan_files(scan_directory)
        
        if found_files:
            logger.info(f"Found {len(found_files)} files.")
        else:
            logger.info("No matching files found.")

if __name__ == "__main__":
    main()
