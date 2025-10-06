# BadApple utilities
These are some useful utilities that I have ported to work in the BadApple shell. \
Commands to run them (after connecting to the internet and performing [BadApple](https://github.com/applefritter-inc/BadApple)), or by using an usb: 
### With an USB
1. Flash [ba_utils.img](https://github.com/crosbreaker/BadApple-Utilities/releases/latest/download/ba_utils.img) to an USB
2. Find the USB identifier with `fdisk -l`
3. Mount the image with `mount /dev/sdX /us`, where `X` is your usb identifier, e.g. `/dev/sda`
4. Now, to list payloads run `ls /usb/`
5. Then, to execute a payload, run `sh /usb/{payloadname}.sh`
# With an internet connection
### br0ker:  
`curl -LO https://ba.crosbreaker.dev/daub.sh && sh daub.sh`

### Daub:
`curl -LO https://ba.crosbreaker.dev/daub.sh && sh daub.sh`

### Unkeyroll:  
`curl -LO https://ba.crosbreaker.dev/unkeyroll.sh && sh unkeyroll.sh`

### Recovery to any version (not just latest)
`curl -LO https://ba.crosbreaker.dev/recovery_selector.sh && sh recovery_selector.sh <versiontorecoverto>`

### Touch .developer_mode (even on volume group versions)
`curl -LO https://ba.crosbreaker.dev/touchdev.sh && sh touchdev.sh`

### spoob
`/bin/sh <(https://raw.githubusercontent.com/crosbreaker/BadApple-Utilities/main/spoob.sh)`
