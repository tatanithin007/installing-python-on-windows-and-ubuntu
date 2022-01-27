#autocontroll.ps1 is for to install python and autocontroll on windows 

Copy chrome.exe from local machine, install chrome and open https://github.com/tatanithin007/installing-python-on-windows-and-ubuntu

download the zip fille and open powershell in the downloaded folder

3:copy and paste the folder path where script files are present

5:type below command on powershell and press enter 

autocontroll.ps1 

If any error comes up give below command: 

Set-ExecutionPolicy unrestricted

This will install all the 5 browsers,please click accept and isntall for opera and vivaldi.

6:once all the 5 browsers got installed run kill-browsers.ps1 (this will kill the opened browsers and restart again)

To add extensions manually, user below URLs

for chrom, chromium and chrome dev use chrome://extensions
vivaldi: vivaldi:://extensions
opera --> opera://extenisons

keep in develoer mode add extensions and extract id

7:double click on install_requirements.py


## startUp.ps1 is for to install python and autocontroll on windows 
1. Copy the from local machine and open powershell 
2. Copy and paste the folder path where script file is present
3. type the below command on powershell and press enter
##### startUp.ps1 --GoogleFileId(Google drive Id)


This will install all the 5 browsers,please click accept and isntall for opera and vivaldi.
4. once all the 5 browsers got installed run kill-browsers.ps1 (this will kill the opened browsers and restart again)

To add extensions manually, user below URLs

for chrom, chromium and chrome dev use chrome://extensions
vivaldi: vivaldi:://extensions
opera --> opera://extenisons

keep in develoer mode add extensions and extract id

5. double click on install_requirements.py



#auto_controll_on_ubuntu.sh is to install autocontroll on ubunut (this need to be executed via root)
1:sudo passwd root
2:set password(enter device password, news password and confirm password)
3:su root
4:sh auto_controll_on_ubuntu.sh