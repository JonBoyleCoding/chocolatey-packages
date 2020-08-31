$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-30/36a6dd19/ctags-2020-08-30_36a6dd19-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-30/36a6dd19/ctags-2020-08-30_36a6dd19-x64.zip'
  checksum       = '18724D3C79EC6E6CEE681EA8B22A2D368828A83DB3215E0482593C7D726D0553'
  checksum64     = 'FBDB518A88548513D1F88DB05E64EE2F401474080532C709056C8D111FF3691C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
