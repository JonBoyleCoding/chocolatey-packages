$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-05/affa2f73/ctags-2019-03-05_affa2f73-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-05/affa2f73/ctags-2019-03-05_affa2f73-x64.zip'
  checksum       = '1F0A2D6C68FC1E4478E3E65F00F83D9867D95218C635CC27CFCCC8DDBA1518A7'
  checksum64     = '78E52735606DB07329BAC8E7D0BA2355E4B18CC4BC0A0D03283DEF62F8D2810E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
