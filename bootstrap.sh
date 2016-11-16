echo "Shell provisioner"
if [[ ! -e /srv/salt ]];
 then ln -s /vagrant/salt/roots/ /srv/salt
fi
salt-call state.highstate --local
#exit 1
