sudo apt update -y
curl -L "$(curl -s https://api.github.com/repos/tenable/terrascan/releases/latest | grep -o -E "https://.+?_Linux_x86_64.tar.gz")" > terrascan.tar.gz
tar -xf terrascan.tar.gz terrascan && sudo rm terrascan.tar.gz
sudo install terrascan /usr/local/bin && sudo rm terrascan
terrascan
