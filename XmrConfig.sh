cd /usr/local/bin
sudo wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-static-x64.tar.gz
sudo tar xvzf xmrig-6.13.1-linux-static-x64.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nRestart=on-failure\nRestartSec=15s\nExecStart=/usr/local/bin/xmrig-6.13.1/xmrig -o pool.minexmr.com:4444 -u 82ytFXBxDi1AiN8Wm567p9QmYmUswFeRYDNkkYkFDJ5CQqTu3QDZ8WheyNPSVYc4yQRLdeFR6KzNkPCS2S8HLe3q48imC63 --rig-id 10t8 --randomx-no-rdmsr\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
sudo systemctl start xmrig.service
echo "Setup completed!"
