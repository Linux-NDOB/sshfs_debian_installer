#/bin/sh
echo "FOR CLIENT AND SERVER"

sudo apt-get install openssh-server openssh-client

echo "FOR CLIENT"

echo "INSTALL SSHF AND FUSE"
sudo apt-get install sshfs fuse

echo "COMPROBING IF FUSE MODULE IS ACTIVE"
lsmod | grep fuse

echo "IF NO OUTPUT MESSAGE"
grep -i fuse /lib/modules/$(uname -r)/modules.builtin

echo "IF MODULE IS NOT ACTIVE"
sudo modprobe fuse

echo "ADDING GROUP FUSE AUTOMATICALLY"
sudo groupadd fuse

echo "COMPROBING IF $USER IS IN FUSE GROUP"
members fuse

echo "ADDING TO GROUP IF IS NOT ADDED"
sudo gpasswd -a $USER fuse

echo "COMPROBING AGAIN"
members fuse


