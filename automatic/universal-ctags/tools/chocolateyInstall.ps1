$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-16/p5.9.20210411.0-8-g4a3ba775/ctags-2021-04-16_p5.9.20210411.0-8-g4a3ba775-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-16/p5.9.20210411.0-8-g4a3ba775/ctags-2021-04-16_p5.9.20210411.0-8-g4a3ba775-x64.zip'
  checksum       = '438287EE5BB463E8D9238D1A140473CC59837B2A472E9113BD0EDEA51AD0B8BB'
  checksum64     = '0FC14AAE711A4BB21C4A241290671B68ED8E05EBD2B1443105EA3E02530BD037'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
