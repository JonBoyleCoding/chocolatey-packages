$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-11/ba26b8a7/ctags-2019-12-11_ba26b8a7-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-11/ba26b8a7/ctags-2019-12-11_ba26b8a7-x64.zip'
  checksum       = '1C103428C215CA066D7BD466887051D057988FA9A2931844A939ECC8A0B06A39'
  checksum64     = '47B462188ABCB1E4A50A98FA5FC2B739BBCC8F3FC305E821B16130DDC77A5607'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
