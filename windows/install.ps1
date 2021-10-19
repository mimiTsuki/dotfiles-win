Set-ExecutionPolicy RemoteSigned -scope CurrentUser
invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop install aria2
scoop install git
scoop bucket add extras
scoop bucket add nonportable
scoop bucket add java
scoop install vcredist2019

# 無効化方法 scoop config aria2-enabed false
scoop config aria2-enabed true

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