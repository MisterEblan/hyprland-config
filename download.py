import subprocess

from needed_packages import *

subprocess.run(["pacman", "-Sy", *pacman_packages])
