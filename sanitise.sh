sudo rm -fr /*/vagrant/.ssh /root/.ssh 

sudo passwd --delete lbs
sudo passwd -l lbs

sudo passwd --delete root
sudo passwd -l root

sudo rm -fr /var/log/{messages,dmesg,maillog,secure,wpa_supplicant.log}

