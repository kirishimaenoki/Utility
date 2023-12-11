mkdir temp
pushd temp

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
wget https://www.python.org/ftp/python/3.12.1/Python-3.12.1.tgz
tar -zxvf Python-3.12.1.tgz
cd Python-3.12.1/
./configure
make
make install
python3 -m pip install --upgrade pip

popd
rm -Rf temp 