# Getting started with VSCode & ESP-IDF & ESP32 

## Installation

### 1. At VSCode, add the following extensions:
  - C/C++
  - C/C++ Extension Pack
  - CMake
  - CMake Tools

### 2. At GitHub:
- Make a fork from https://github.com/liukiti/ESP32 to your personal github account;

### 3. At terminal:
  - Install the following packages:
    ```
    $ sudo apt-get install git wget flex bison gperf python3 python3-pip python3-setuptool cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0​
    ```

  - Clone the repository `ESP32` from your account
    - Change the `USUARIO` to your github user
      ```
      $ git clone git@github.com:USUARIO/ESP32.git
      ```
  - init submodule esp-idf @ 7eaeaaa
    ```
    $ cd ESP32
    $ git submodule update --init --recursive
    ```
  - Install the ESP-IDF
    ```
    $ cd esp-idf
    $ ./install.sh esp32
    ```

## Your Code
- Put your code inside the `ESP32/myCodes` directory;
- It's recommended to use an IDF example as a template. Copy one from `ESP32/esp-idf/examples/`

## Open
- double click in edit.desktop;
- at VSCode, click on `No Kit Selected` at the bottom menu (blue bar);
- Select `GCC 8.4.0 xtensa-esp32-elf ..` at the dropdown menu;
- Open a new terminal in VSCode;
- Navigate to the project directory, like `ESP32/myCodes/blink`;
- Execute the following command to build the application:
  ```
  $ idf.py all
  ```
- If the previous step was successed, try to flash and monitor the device at `/dev/ttyUSB0` serial port
  ```
  $ idf.py flash monitor -p /dev/ttyUSB0
  ```

## useful commands
- At terminal, view if ESP-IDF is configured and ready to go
```
$ echo $IDF_PATH
```
- Check port on Linux
```
ls /dev/tty*
```

## [Adding user to dialout on Linux](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/establish-serial-connection.html#adding-user-to-dialout-on-linux)
- The currently logged user should have read and write access the serial port over USB.
```
sudo usermod -a -G dialout $USER
```
- Make sure you re-login to enable read and write permissions for the serial port

## Change ESP-IDF commit/tag
```
$ cd ESP32/esp-idf

$ git fetch origin
$ git checkout <commit_id>

$ git submodule update --init --recursive
$ git ./install.sh esp32
```