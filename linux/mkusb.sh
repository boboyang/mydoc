sudo mkdir -p /mnt/cdrom
sudo mount -o loop,ro -t iso9660 ~/Downloads/gentoo/install-amd64-minimal-20120223.iso /mnt/cdrom

sudo mkdir -p /mnt/usb
sudo mount -t vfat /dev/sdb1 /mnt/usb
sudo cp -r /mnt/cdrom/* /mnt/usb
sudo mv /mnt/usb/isolinux/* /mnt/usb
sudo mv /mnt/usb/isolinux.cfg /mnt/usb/syslinux.cfg
sudo rm -rf /mnt/usb/isolinux*
sudo mv /mnt/usb/memtest86 /mnt/usb/memtest

sudo umount /mnt/cdrom
sudo sed -i -e "s:cdroot:cdroot slowusb:" \
    -e "s:kernel memtest86:kernel memtest:" \
    /mnt/usb/syslinux.cfg
sudo umount /mnt/usb/
sudo syslinux /dev/sdb1

