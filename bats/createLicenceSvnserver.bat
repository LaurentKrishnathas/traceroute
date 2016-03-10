REM This file install subversion svnserver with the following settings 
REM @author Laurent Krishnathas

SET SERVICENAME=svnserver_licences
SET PORT=3691
SET DISPLAYNAME="Subversion Licence Server"
SET REPO_PATH=e:\svnRepositories\licences

net stop %SERVICENAME%
sc delete %SERVICENAME%
sc create %SERVICENAME% binpath= "\"C:\Program Files (x86)\CollabNet\Subversion Server\svnserve.exe\" --service --listen-port %PORT% -r %REPO_PATH%" displayname= %DISPLAYNAME% depend= Tcpip start= auto

net start %SERVICENAME%
svn list svn://localhost:%PORT%
