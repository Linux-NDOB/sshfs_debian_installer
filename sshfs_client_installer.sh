echo "INSTALLING REQUIERED PACKAGES/sshfs"

sudo apt-get install sshfs 

echo "CREATING EXTERNAL DIRECTORY"
echo "GIVE A NAME FOR EXTERNAL DIRECTORY"
read WD

sudo mkdir /home/$USER/$WD 
echo "CREATED DIRECOTORY AS /home/$USER/$WD"
sleep 1
echo "¿DO YOU WANT TO CONNECT NOW?"
echo "TYPE:yes/no"
read ANS
if [ $ANS == "yes" ]; then
echo "ESTABLISHING CONNECTION"
echo "PLEASE GIVE THE SERVER IP"
read IP
echo "PLEASE GIVE THE SERVER NAME"
read SNAME
echo "CONNECTING AS ROOT"
sudo sshfs $SNAME@$IP:/home/$NAME /home/$NAME/$WD
elif [ $ANS == "no" ];then
echo "CLOSING SCRIPT..."
fi

echo "¿DO YOU WANT TO UMOUNT VOLUME?"
echo "TYPE:yes/no"
read $ANSW
if [ $ANSW == "yes" ]; then
sudo fusermount -u /home/$SNAME/$WD
sleep 1
echo "DISCONNECTED"
elif [ $ANS == "no" ];then
echo "CLOSING SCRIPT..."
fi

