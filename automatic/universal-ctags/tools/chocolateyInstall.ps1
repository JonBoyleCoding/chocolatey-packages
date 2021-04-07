$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-06/p5.9.20210404.0-14-g8933d0f6/ctags-2021-04-06_p5.9.20210404.0-14-g8933d0f6-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-06/p5.9.20210404.0-14-g8933d0f6/ctags-2021-04-06_p5.9.20210404.0-14-g8933d0f6-x64.zip'
  checksum       = 'ECFEAA016DEE28C0975F8B4ECAEDA1B35462D1AF154E6A8AF10C75CF0D0F907D'
  checksum64     = 'C202AA5FC10E5004C1ABFDA8E228E9A568B12999D991A4B05CF7C7358CF1CA29'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
