#this program should be run under root

echo "Enter the device id: "  
read deviceid
sudo apt install -y git
git clone https://tatanithin007:gitclone22@github.com/tatanithin007/ubuntu-ui.git `pwd`

cp getdatafromapi.ps1 /getdatafromapi.ps1
cp trackpyjob.ps1 /trackpyjob.ps1

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install fonts-liberation xdg-utils -y
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Update the list of packages
sudo apt-get update
# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# Update the list of products
sudo apt-get update
# Enable the "universe" repositories
sudo add-apt-repository universe
# Install PowerShell
sudo apt-get install -y powershell
apt install -y python3-pip
sudo apt install -y xvfb

sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
# sudo echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
# sudo apt-get -y update
# sudo apt-get -y install google-chrome-stable
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
apt install unzip
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
sudo mkdir /track
sudo mkdir /log
sudo mkdir /files
chmod 777 /files
git clone https://tatanithin007:gitclone22@github.com/tatanithin007/linode.git
cd linode
sudo pip3 install -r requirements.txt
sudo pip3 install pyvirtualdisplay
cp * /
cd /
sudo mkdir /config
#cp config.json config/config.json
#server_name="${SERVER_NAME}";
echo '{
    "apiUrl":"https://msbauthentication.com/autocontrol/api/getdevicecampaignuplfile.php?deviceid='$deviceid'",
    "apiKey":"",
"startupscript":"index.py",
    "scriptlocation":"/files",
    "lfolder":"/log",
    "lfile":"api.log",
    "searchstring":"Yes",
    "trackfolder":"/track",
    "pyjobtracklog":"pyjobtrack.log"
}' > /config/config.json    

(crontab -l 2>/dev/null; echo "* * * * * pwsh /getdatafromapi.ps1") | crontab -
(crontab -l 2>/dev/null; echo "* * * * * pwsh /trackpyjob.ps1") | crontab -
#sudo reboot now


