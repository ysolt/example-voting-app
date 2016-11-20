sudo rm -fr /*/vagrant/.ssh /root/.ssh 

sudo passwd --delete vagrant
sudo passwd -l vagrant

sudo passwd --delete root
sudo passwd -l root

sudo rm -fr /var/log/{messages,dmesg,maillog,secure,wpa_supplicant.log}

