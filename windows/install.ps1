Set-ExecutionPolicy RemoteSigned -scope CurrentUser
invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop bucket add extras
scoop install git
scoop install aria2
scoop install vcredist2019
scoop install googlechrome vscode winmerge
scoop install gzip less tar gawk sed nvm

scoop bucket add nonportable
scoop install google-japanese-input-np

# 趣味

scoop install streamlabs-obs