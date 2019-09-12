$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-11/a36dc618/ctags-2019-09-11_a36dc618-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-11/a36dc618/ctags-2019-09-11_a36dc618-x64.zip'
  checksum       = 'CD76D1D20A3E80B8A225B433B28E2556972FEEB7C487D17062AB8C7D69F14520'
  checksum64     = 'F8CB35F1315CE66161E6117480CEF702C590299C52FB0A0621B7B835400C264B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
