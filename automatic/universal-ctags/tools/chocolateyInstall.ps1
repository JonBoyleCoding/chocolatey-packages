$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-20/p5.9.20210117.0-28-g528f61f2/ctags-2021-01-20_p5.9.20210117.0-28-g528f61f2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-20/p5.9.20210117.0-28-g528f61f2/ctags-2021-01-20_p5.9.20210117.0-28-g528f61f2-x64.zip'
  checksum       = 'B3875908F9142F3B6E22560C3BB513CE545D43AA1CCDCF69DF973064751A8830'
  checksum64     = 'EB172B745458B6264D229448872C02C1003F1FAEE6AD2D105579C66400CC9409'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
