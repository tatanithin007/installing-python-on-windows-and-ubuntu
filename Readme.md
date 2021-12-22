#autocontroll.ps1 is for to install python and autocontroll on windows 

Copy chrome.exe from local machine, install chrome and open https://github.com/tatanithin007/installing-python-on-windows-and-ubuntu

downloa the zip fille and open powershell in the downloaded folder

1:need to update device id on config.json
2:open power shell with administrator from start menu
3:copy and paste the folder path where script files are present
4:paste beklow command on panel and click enter

Set-ExecutionPolicy unrestricted

5:type below command on powershell and press enter 

autocontroll.ps1 

This will install all the 5 browsers,please click accept and isntall for opera and vivaldi.

6:once all the 5 browsers got installed run kill-browsers.ps1 (this will kill the opened browsers and restart again)

To add extensions manually, user below URLs

for chrom, chromium and chrome dev use chrome://extensions
vivaldi: vivaldi:://extensions
opera --> opera://extenisons

keep in develoer mode add extensions and extract id

7:double click on install_requirements.py


#auto_controll_on_ubuntu.sh is to install autocontroll on ubunut (this need to be executed via root)
1:sudo passwd root
2:set password(enter device password, news password and confirm password)
3:su root
4:sh auto_controll_on_ubuntu.sh