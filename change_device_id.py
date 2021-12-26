import os
os.system("pip3 install requests")
import requests
from requests import get

device_name = get('https://api.ipify.org').content.decode('utf8')
print('My public IP address is: {}'.format(device_name))
#f= open("/Users/superadmedia/Dropbox/Selenium/raw-files-from-github/start_servers/start-scripts/config/config.json","w+")
f=open(r"C:\API\config\config.json","w+")
config_data = '''{
    "apiUrl":"https://msbauthentication.com/autocontrol/api/getdevicecampaignuplfile.php?deviceid='''+device_name+'''",
    "apiKey":"",
"startupscript":"index.py",
    "scriptlocation":"/files",
    "lfolder":"/log",
    "lfile":"api.log",
    "searchstring":"Yes",
    "trackfolder":"/track",
    "pyjobtracklog":"pyjobtrack.log"
}'''
print(config_data)
f.write(config_data)
