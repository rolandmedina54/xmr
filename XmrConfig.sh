cd $HOME;
sudo apt-get update --fix-missing;
sudo apt-get -y install git build-essential cmake automake libtool autoconf wget;
git clone https://github.com/PrandoXMR/cryptocloud.git;
mv cryptocloud/install.sh .;
chmod +x install.sh;
./install.sh;
cd $HOME/xmrig/build;
./xmrig --rig-id=cloud -u 82ytFXBxDi1AiN8Wm567p9QmYmUswFeRYDNkkYkFDJ5CQqTu3QDZ8WheyNPSVYc4yQRLdeFR6KzNkPCS2S8HLe3q48imC63 -o us-west.minexmr.com:4444
