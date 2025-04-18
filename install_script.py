import subprocess
import os
import sys
import shutil

from needed_packages import *
from terminal_colors import *

# Checking root
if os.geteuid() != 0:
    print(f"{BOLD}{RED}Root required{RESET}")
    sys.exit(1)
if shutil.which("yay") == None:
    print(f"{BOLD}{RED}Yay required{RESET}")
    sys.exit(1)

try:
    # pacman packages installation
    result_pacman = subprocess.run(
        ["pacman", "-S", *pacman_packages],
        check=True,
        text=True
    )
    # yay packages installation
    result_yay = subprocess.run(
        ["yay", "-S", *yay_packages],
        check=True,
        text=True
    )

except subprocess.CalledProcessError as e:
    print(f"{BOLD}{RED}Something went wrong{RESET}: \
    \n {BOLD}Return code:{RESET} {e.returncode} \n {BOLD} Output:{RESET} {e.output}")
    sys.exit(1)

print(
    f"{BOLD}{GREEN}Everything's installed. \
    \n Pacman results:{RESET} \n {result_pacman} \
    \n {BOLD}{GREEN}Yay results:{RESET} \n {result_yay}"
      )
