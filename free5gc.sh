#!/bin/bash
sudo rm -rf /usr/local/go
wget https://dl.google.com/go/go1.18.10.linux-amd64.tar.gz
sudo tar -C /usr/local -zxvf go1.18.10.linux-amd64.tar.gz
wget https://dl.google.com/go/go1.18.10.linux-amd64.tar.gz
sudo tar -C /usr/local -zxvf go1.18.10.linux-amd64.tar.gz
mkdir -p ~/go/{bin,pkg,src}
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> ~/.bashrc
echo 'export GO111MODULE=auto' >> ~/.bashrc
source ~/.bashrc
export PATH=$PATH:/usr/local/go/bin
source ~/.profile
export PATH=$PATH:/usr/local/go/bin
sudo apt -y update
sudo apt -y install git gcc g++ cmake autoconf libtool pkg-config libmnl-dev libyaml-dev
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o ens33 -j MASQUERADE
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags SYN,RST SYN -j TCPMSS --set-mss 1400
sudo systemctl stop ufw
sudo systemctl disable ufwcd ~
cd ~
git clone --recursive -b v3.3.0 -j `nproc` https://github.com/free5gc/free5gc.git
cd free5gc
git checkout main
git submodule sync
git submodule update --init --jobs `nproc`
git submodule foreach git checkout main
git submodule foreach git pull --jobs `nproc`
cd ~/free5gc
make
echo "All installed............Time to Test"
echo "All installed............Time to Test"
echo "All installed............Time to Test"
echo "All installed............Time to Test"
echo "All installed............Time to Test"
echo "All installed............Time to Test"
echo "All installed............Time to Test"
git clone -b v0.8.5 https://github.com/free5gc/gtp5g.git
cd gtp5g
make
sudo make install
cd ~/free5gc
./test.sh TestRegistration
echo "Install WebConsole....................."
echo "Install WebConsole....................."
echo "Install WebConsole....................."
echo "Install WebConsole....................."
echo "Install WebConsole....................."
echo "Install WebConsole....................."
echo "Install WebConsole....................."
sudo apt install curl -y
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - 
sudo apt update
sudo apt install -y nodejs
corepack enable 
cd ~/free5gc
make webconsole
echo "Time to open webconsole............."
echo "Time to open webconsole............."
echo "Time to open webconsole............."
echo "Time to open webconsole............."
echo "Time to open webconsole............."
echo "Time to open webconsole............."
cd webconcole
go run server.go

