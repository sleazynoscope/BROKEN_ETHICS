#!/data/data/com.termux/files/usr/bin/bash
clear
echo '📦 Installing requirements...'
pkg update -y && pkg install -y python git curl wget unzip
pip install flask qrcode requests xhtml2pdf
termux-setup-storage

echo '🌐 Installing ngrok...'
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-arm.zip -O ngrok.zip
unzip ngrok.zip && chmod +x ngrok && mv ngrok $PREFIX/bin/ngrok
ngrok config add-authtoken 3067e31JrjfRJNn7IYTrniHAn7i_2coCn97D21SnurjK1sZNp

echo '🚀 Launching server...'
python3 scripts/server.py
