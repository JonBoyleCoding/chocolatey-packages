$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-20/p5.9.20201018.0-4-g663bfb1c/ctags-2020-10-20_p5.9.20201018.0-4-g663bfb1c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-20/p5.9.20201018.0-4-g663bfb1c/ctags-2020-10-20_p5.9.20201018.0-4-g663bfb1c-x64.zip'
  checksum       = '2F1811F8FDB5F7A20016184F376CDACC8BD1D5ED76A832A59E91EF3B8A61CBE7'
  checksum64     = '762665181AB24FE8D2A294A45D916E2EE126C2B8AEBA3FECBFCE2EC7B9E130C8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
