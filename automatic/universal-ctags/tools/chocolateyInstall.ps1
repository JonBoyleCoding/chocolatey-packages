$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-06/p5.9.20210502.0-91-gf61ef4a0/ctags-2021-05-06_p5.9.20210502.0-91-gf61ef4a0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-06/p5.9.20210502.0-91-gf61ef4a0/ctags-2021-05-06_p5.9.20210502.0-91-gf61ef4a0-x64.zip'
  checksum       = 'EE67E6703D58CF1F1C18CF622FF3C18BA46FB88E5FC4A627F4952DE55B8B45FD'
  checksum64     = '5573C75AACEC811E9E80B3396EC4AD520C1B987C9CA6CA05E4601C61BAE86503'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
