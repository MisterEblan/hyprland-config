import os
import shutil
import sys
from pathlib import Path

from terminal_colors import *
from backup_files import backup_existing_configs

if input(f"{BOLD}{YELLOW}This script will replace your current config files. Do you agree? [y/n]{RESET} \n >>>") != "y":
    print("You disagreed")
    sys.exit(1)

def replace_configs():
    backup_existing_configs()

    current_dir = Path.cwd()
    target_dir = Path.home() / ".config"
    
    target_dir.mkdir(parents=True, exist_ok=True)
    
    print(f"{CYAN}Copying configs from {current_dir} to {target_dir}")
    
    for item in current_dir.iterdir():
        if item.is_dir():
            target_item = target_dir / item.name
            print(f"Copying {item} -> {target_item}")
            
            
            shutil.copytree(item, target_item, 
                          copy_function=shutil.copy2,
                          dirs_exist_ok=True)
    
    print(f"{BOLD}{GREEN}Copying completed{RESET}")

if __name__ == "__main__":
    try:
        replace_configs()
    except Exception as e:
        print(
            f"{BOLD}{RED}Something went wrong:{RESET} {e}"
              )
