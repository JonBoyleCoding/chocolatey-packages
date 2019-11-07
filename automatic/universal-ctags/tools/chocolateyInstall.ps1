$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-06/9fcdb065/ctags-2019-11-06_9fcdb065-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-06/9fcdb065/ctags-2019-11-06_9fcdb065-x64.zip'
  checksum       = '5748505D67AEA89F270564EE6C6F7E5F3180B30053CFA1AD8931D8A65E25D035'
  checksum64     = '8386879FBC094922B357DA22E2E643870110159EC539F403C4EBE7E890FD66F8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
