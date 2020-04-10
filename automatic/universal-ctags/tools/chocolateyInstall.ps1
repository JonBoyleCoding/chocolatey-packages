$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-09/9560d988/ctags-2020-04-09_9560d988-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-09/9560d988/ctags-2020-04-09_9560d988-x64.zip'
  checksum       = '0ACDAE5F4E760C0E7161E9126DF602651D3E18D601DC74AB22194F3B08A00203'
  checksum64     = '301EB35BBD91E53ABD303E391CB23E08C6E74AE522DAD15D60BB08791306F5A0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
