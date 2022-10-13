#!/bin/sh

VMNAME=win10

echo "Starting virtual machine:" $VMNAME "..."
sudo virsh start $VMNAME
echo "Started."

echo "Starting Ccream audio device with IVSHMEM interface..."
scream -m /dev/shm/scream-ivshmem -t 10 &
echo "done."

sleep 2s

echo "Starting Looking Glass for graphical display"
looking-glass-client spice:alwaysShowCursor=yes

# echo "Shutting down Scream audio device..."
# killall scream
# echo "done."

# echo "Shutting down virtual machine:" $VMNAME "..."
# sudo virsh shutdown $VMNAME
# echo "done."
