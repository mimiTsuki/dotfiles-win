Invoke-Expression (&starship init powershell)

@"
  arch, base32, base64, basename, cat, cksum, comm, cp, cut, date, df, dircolors, dirname,
  echo, env, expand, expr, factor, false, fmt, fold, hashsum, head, hostname, join, link, ln,
  ls, md5sum, mkdir, mktemp, more, mv, nl, nproc, od, paste, printenv, printf, ptx, pwd,
  readlink, realpath, relpath, rm, rmdir, seq, sha1sum, sha224sum, sha256sum, sha3-224sum,
  sha3-256sum, sha3-384sum, sha3-512sum, sha384sum, sha3sum, sha512sum, shake128sum,
  shake256sum, shred, shuf, sleep, sort, split, sum, sync, tac, tail, tee, test, touch, tr,
  true, truncate, tsort, unexpand, uniq, wc, whoami, yes
"@ -split ',' |
ForEach-Object { $_.trim() } |
Where-Object { ! @('tee', 'sort', 'sleep').Contains($_) } |
ForEach-Object {
    $cmd = $_
    if (Test-Path Alias:$cmd) { Remove-Item -Path Alias:$cmd }
    $fn = '$input | uutils ' + $cmd + ' $args'
    Invoke-Expression "function global:$cmd { $fn }" 
}

Set-Alias ls lsd

function l() {
  ls -l
}

function la() {
  ls -a
}

function lla() {
  ls -la
}

function lt() {
  ls --tree
}

function cd-ls {
    param($path)
    try {
        set-location $path -erroraction 'stop'
        ls
    }
    catch {"$_"}
}

filter Get-ShortcutProperty() {
    $sh  = new-object -comobject WScript.Shell
    return $sh.CreateShortcut($_)
}

function Move-Location {
    param($path)
    If (((Resolve-Path $path).Path).EndsWith(".lnk")) {
        $ShortcutPath = Get-ChildItem $path | Get-ShortcutProperty
        If ($ShortcutPath.WorkingDirectory) {
            cd-ls $ShortcutPath.WorkingDirectory
        } else {
            cd-ls $ShortcutPath.TargetPath
        }
    } else {
        cd-ls $path
    }
}

Remove-Item alias:cd
Set-Alias cd Move-Location