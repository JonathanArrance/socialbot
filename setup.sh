Socialbot

HOSTNAME=‘k8s-master’

Apt update -y
Apt upgrade -y

sudo hostnamectl set-hostname ${HOSTNAME}

Snap install microk8s
Sudo microk8s install helm3
Sudo microk8s install ingress
Sudo microk8s install  ha-cluster

echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections

sudo iptables -P FORWARD ACCEPT
sudo apt-get install -y iptables-persistent
