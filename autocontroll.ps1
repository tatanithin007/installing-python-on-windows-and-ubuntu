#@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
#for windows, first change the device name in config.json before executing it.
#this is a powershell file
#Set-ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y python3
#py -v
py get_pip.py
pip install -r requirements.txt
New-Item -Path 'C:\API' -ItemType Directory
New-Item -Path 'C:\API\config' -ItemType Directory
New-Item -Path 'C:\API\log' -ItemType Directory
New-Item -Path 'C:\API\track' -ItemType Directory
Copy-Item "config.json" -Destination "C:\API\config"
Copy-Item "getdatafromapi.ps1" -Destination "C:\API"
Copy-Item "trackpyjob.ps1" -Destination "C:\API"
Register-ScheduledTask -xml (Get-Content 'getdatafromapi.xml' | Out-String) -TaskName "getdatafromapi" -TaskPath "\MyTasks" -User $env:userdomain\$env:username -Force
Register-ScheduledTask -xml (Get-Content 'trackpyjob.xml' | Out-String) -TaskName "trackpyjob" -TaskPath "\MyTasks" -User $env:userdomain\$env:username -Force
Set-ExecutionPolicy Bypass
