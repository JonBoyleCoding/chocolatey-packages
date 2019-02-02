$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-02%2F1b747b38/ctags-2019-02-02_1b747b38-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-02%2F1b747b38/ctags-2019-02-02_1b747b38-x64.zip'
  checksum       = 'AC644D36587AA9440CD5514B59F44FE88327552DA22CF0BFB1426141106CFD0C'
  checksum64     = '17371FE9A3BBF83E12982F07F1BECDB38876D57BD87242A4BF1DD3DC20BD1DCB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
