import os
import requests
from requests import get

ip = get('https://api.ipify.org').content.decode('utf8')
print('My public IP address is: {}'.format(ip))
device_name=ip
#f= open("/Users/superadmedia/Dropbox/Selenium/raw-files-from-github/start_servers/start-scripts/config/config.json","w+")
f=open(r"C:\API\config\config.json","w+")
config_data = '''{
    "apiUrl":"https://msbauthentication.com/autocontrol/api/getdevicecampaignuplfile.php?deviceid='''+device_id+'''",
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