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
The wiring configuration from INMP441 to ESP32 Devkit explained on this following table:
|   Component   ||| Note    |
| INMP441   | DEVKIT    | ESP32-WROOM-32    ||
|:-------:|:-------:|:-----:|:------:|
| L/R | GND | GND | The L/R connected to GND resulting in mono audio |
| WS | | | |
| SD | | | |
| SCK | | | |
| GND | | | |
| VDD | | | |


