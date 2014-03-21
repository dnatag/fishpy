Fish shell script to setup a python project with virtual environment (supplied by [virtualfish](https://github.com/adambrenecki/virtualfish.git)) and skeleton python project (supplied by [pain](https://github.com/petermelias/pain.git)). Therefore, you will need to install both virtualfish and pain before deploy this script.

Installation
===
Put the fishpy.fish in $HOME/.config/fish/functions/ folder and restart the fish shell. 

Usage guide
===
    cd directory_desired
    fishpy proj_name

The fishpy function will do:
- setup a python skeleton project
- create a virtual environment
- pip install pip-accel
- setup .gitignore
- perform git init and initial commit-

