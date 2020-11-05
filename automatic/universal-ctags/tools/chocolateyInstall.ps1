$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-04/p5.9.20201101.0-6-g69af98ed/ctags-2020-11-04_p5.9.20201101.0-6-g69af98ed-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-04/p5.9.20201101.0-6-g69af98ed/ctags-2020-11-04_p5.9.20201101.0-6-g69af98ed-x64.zip'
  checksum       = '6E1D97961BDC9D827DA7367D9679DE0CCEA7B819591E37D91DB3866D076E1888'
  checksum64     = '6BB0C9F3E6324D9EE07CC0BE2ADEF91D3AAA5AD24EF85E0595B983AC57AC5371'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
