Set-ExecutionPolicy RemoteSigned -scope CurrentUser
invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop install aria2
scoop install git
scoop bucket add extras
scoop bucket add nonportable
scoop install vcredist2019

scoop update *

$PACKAGES = @(
    uutils-coreutils
    gzip
    less
    tar
    gawk
    sed
    nvm
    google-japanese-input-np
    googlechrome
    vscode
    winmerge
    vlc
)
scoop install $PACKAGES

# 趣味

scoop install streamlabs-obs