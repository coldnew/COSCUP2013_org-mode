
#!/bin/sh
if [ -z "$1" ]
then
    echo "Usage: $0 chroot_path"
    exit -1
else
    mount --bind /dev $1/dev
    mount --bind /dev/pts $1/dev/pts
    mount --bind /proc $1/proc
    mount --bind /sys $1/sys
    cp /etc/resolv.conf $1/etc/resolv.conf
fi
