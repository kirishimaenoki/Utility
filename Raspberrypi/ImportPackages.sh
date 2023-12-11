mkdir temp
cd temp

# install packages.
apt install -y git
apt install -y ufw
apt install -y vim
apt install -y nginx
apt install -y postgresql

# install Python3.
apt install -y pip
apt install -y libffi-dev
apt install -y libssl-dev openssl
wget https://www.python.org/ftp/python/3.13.0/Python-3.13.0.tgz
tar -zxvf Python-3.13.0.tgz
cd Python-3.13.0/
./configure
make
make install

cd ..
rm -d temp 