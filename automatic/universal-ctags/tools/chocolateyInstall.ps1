$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-04/75b853bb/ctags-2019-11-04_75b853bb-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-04/75b853bb/ctags-2019-11-04_75b853bb-x64.zip'
  checksum       = '1BDB59C99BC7ADF82EC5508818EBF10BDC54E2A2709FDB5D04ECC099F4ECA86B'
  checksum64     = '04E5379EC12D0FE0C3818A9AA58AD8F57DB2E6CA552DB55A8BCFFFDAD52E7750'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
