set -xe
echo "Shell provisioner"
if [[ ! -e /srv/salt ]];
 then ln -s /vagrant/salt/roots/ /srv/salt
fi

cat <<'EOF' >/etc/yum.repos.d/saltstack.repo
[saltstack]
name=SaltStack latest Release Channel for RHEL/CentOS $releasever
baseurl=https://repo.saltstack.com/yum/redhat/$releasever/$basearch/latest/
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://repo.saltstack.com/yum/redhat/$releasever/$basearch/latest/SALTSTACK-GPG-KEY.pub
enabled=1
enabled_metadata=1
EOF
yum install -y salt-minion
salt-call state.highstate --local
#exit 1
