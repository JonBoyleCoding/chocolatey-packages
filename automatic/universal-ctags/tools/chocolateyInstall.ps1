$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-24/p5.9.20201220.0-14-gbc9a0f87/ctags-2020-12-24_p5.9.20201220.0-14-gbc9a0f87-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-24/p5.9.20201220.0-14-gbc9a0f87/ctags-2020-12-24_p5.9.20201220.0-14-gbc9a0f87-x64.zip'
  checksum       = 'EC3F54C92EFC0B361D4121C4A25FD1BC511CE183338E1B72AA62EDBE1EEEB2EF'
  checksum64     = 'C81715CA5822F12438DED8BBA9A7A6419CC35A9B0E68AB673FC8F95FE5D34BAD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
