import shutil
from pathlib import Path
from datetime import datetime

from terminal_colors import *

def backup_existing_configs():
    source_dir = Path.cwd()  
    target_dir = Path.home() / ".config"
    
    backup_dir = Path.home() / ".config_backups"
    backup_dir.mkdir(exist_ok=True)
    
    print(f"{CYAN}Making bakups in {backup_dir}{RESET}")

    for item in source_dir.iterdir():
        target_item = target_dir / item.name
        backup_item = backup_dir / f"{item.name}.bak_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
        
        if target_item.exists():
            print(f"Backing up {target_item} -> {backup_item}")
            
            if target_item.is_dir():
                shutil.copytree(target_item, backup_item, 
                              copy_function=shutil.copy2,
                              dirs_exist_ok=True)
            else:
                shutil.copy2(target_item, backup_item)
            
            if target_item.is_dir():
                shutil.rmtree(target_item)
            else:
                target_item.unlink()
