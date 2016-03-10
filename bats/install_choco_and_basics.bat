@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco -v
choco install jdk8 -y
choco install git -y
choco install googlechrome -y 
choco install sublimetext3 -y
choco install notepadplusplus -y
REM choco install svn -y
choco install eclipse -y

