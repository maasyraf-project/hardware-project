export IDF_PATH=/opt/esp-idf
# export command declare variables and functions to be passed on derived (child) process
# declare variable IDF_PATH which indicate the path of idf

export PATH="$IDF_PATH/tools:$PATH"
# declare the PATH inside the IDF_PATH

export MAKEFLAGS="-j$(nproc)"
# define the number of cores/thread that used during the process
# nproc indicate the number of CPU cores/thread which available

export GNUMAKEFLAGS="-j$(nproc)"
# define the number of cores/thread that used during the process

source $HOME/esp-python/bin/activate
# activate the virtual environment
