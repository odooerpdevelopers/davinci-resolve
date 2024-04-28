
# Davinci Resolve 19 Ubuntu 24.04

## Command List 

### Extract Image
``` bash
# extract appImage
./Davinci19.AppImage --appimage-extract

```
### Remove obsolete libs
``` bash
sed -i '/libapr1/d; /libaprutil1/d; /libasound2/d; /libglib2.0-0/d' ./AppRun

```

### Execute Installer
``` bash
sudo ./AppRun -i

```
