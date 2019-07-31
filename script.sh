sudo mkdir /mnt/mkrum001
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/mkrum001.cred" ]; then
    sudo bash -c 'echo "username=mkrum001" >> /etc/smbcredentials/mkrum001.cred'
    sudo bash -c 'echo "password=jnTepJ+z4gNAHybSK8AjJGof3f1i0yc6GkYm4bBC6ffubNkQcXQBUBrVmVQiIzhURD5bwz+xW0sL34yFinswAg==" >> /etc/smbcredentials/mkrum001.cred'
fi
sudo chmod 600 /etc/smbcredentials/mkrum001.cred

sudo bash -c 'echo "//mkrum001.file.core.windows.net/test /mnt/mkrum001 cifs nofail,vers=3.0,credentials=/etc/smbcredentials/mkrum001.cred,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab'
sudo mount -t cifs //mkrum001.file.core.windows.net/test /mnt/mkrum001 -o vers=3.0,credentials=/etc/smbcredentials/mkrum001.cred,dir_mode=0777,file_mode=0777,serverino