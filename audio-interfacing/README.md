# Overview
This project focus on interfacing audio input using ESP32 chip and visualized by Pyhton.

# Contents
This folder arranged as this following order:
- [Reference](#Reference)
- [Acknowledge](#Acknowlegde)

# Reference
When starting this work, it is recommended to check these following contents:
- [INMP441 Omnidiretional Microphone Datasheet](https://invensense.tdk.com/wp-content/uploads/2015/02/INMP441.pdf)
- [Geeting Started with ESP32 Devkit V1](https://randomnerdtutorials.com/getting-started-with-esp32/)
- [ESP32-WROOM-32 datasheet](https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf)

For further reading (well, these actually be a basic concept of audio interfacing using Inter-IC Sound I2S protocol), you can see these following contents:
- [I2S protocol standard  by Philips Semiconductor](https://web.archive.org/web/20070102004400/http://www.nxp.com/acrobat_download/various/I2SBUS.pdf)

# Acknowledge
This work is based on:
- [ESP32 Sound Spectrum Implementation](https://github.com/pedrominatel/esp32-projects/blob/master/demo/sound_spectrum/main/i2s_spectrum_example_main.c)

# Wiring
The wiring configuration connect INMP441 to ESP32 Devkit explained on this following table:
| INMP441   | DEVKIT    | ESP32-WROOM-32    | Note  |
|:-------:|:-------:|:-----:|:------:|
| L/R | GND | GND | The L/R connected to GND resulting in mono audio |
| WS | D13 | GPIO13, ADC2, HSPI MOSI | Word select (WS) represent word clock lines (left channel: 0, right channel: 1) in bus/timing diagram |
| SD | D12 | GPIO12, ADC2, HSPI MISO | Serial data (SD) represent two time-multiplexed data (first n-bits belongs to channel 0, the next belongs to channel 1, and repeat) line in bus/timing diagram |
| SCK | D14 | GPIO14, ADC2, HSPI CLK | Continuous serial clock (SCK) indicates clock lines in bus/timing diagram. The clock can be provided by either transmitter or reciver which act as master |
| GND | GND | GND | |
| VDD | 3V3 | 3V3 | |

# Environment Setup
This work carried out on Archlinux environment. These following packages added on the environment:
- [Python 3.9]
- [Xtensa GCC]
- [ESP-IDF]
- [ESP-DSP]

After the packages are installed, then create a Python virtual environemnt

```sh
cd $HOME
# change the directory to home

virtualenv --python=usr/bin/python3.9 esp-python --system-site-packages
# basic format : virtualenv [interpreter] [environment_name] [config]
# create new virtual env with selected interpreter using paremeter -p, --python and define the path
# the parameter --system-site-packages will enable (True) the environment access to system site packages
# for the details, check virtualenv -h, --help

source $HOME/esp-python/bin/activate
# for activate the virtual environement : source $HOME/environemnt_name/bin/activate

pip install kconfiglib future cryptography pyserial pyparsing==2.2.0
# inside the environment, install necessary packages using pip

deactivate
# deactivate and back to the initial (parent) environment

cd -
# bring back to the previous directory

```

Simplifying the initiation of environement, you can create the a shell (*.sh) file as below :

```sh
export IDF_PATH=/opt/esp-idf
# export command declare variables and functions to be passed on derived (child) process
# declare variable IDF_PATH which indicate the path of idf

export PATH="$IDF_PATH/tools:$PATH"
# declare the PATH inside the IDF_PATH

export MAKEFLAGS="-j$(nproc)"
# define the number of cores/thread that used during the process
# nproc indicate the number of CPU cores/thread which available

export GNUMAKEFLAGS="-j(nproc)"
# define the number of cores/thread that used during the process

source $HOME/esp-python/bin/activate
# activate the virtual environment

```
