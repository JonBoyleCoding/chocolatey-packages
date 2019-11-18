$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-17/db4357d0/ctags-2019-11-17_db4357d0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-17/db4357d0/ctags-2019-11-17_db4357d0-x64.zip'
  checksum       = 'DF561C47F83D13B3D114749794BCB408FBFA29B99DAED611C7360FB1D49A5402'
  checksum64     = '45BEE3288D971CAFC66521330FB92A6F724EC7769719FBFA283580AC8C1FF359'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
