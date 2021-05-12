$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-11/p5.9.20210509.0-16-g63f5d380/ctags-2021-05-11_p5.9.20210509.0-16-g63f5d380-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-11/p5.9.20210509.0-16-g63f5d380/ctags-2021-05-11_p5.9.20210509.0-16-g63f5d380-x64.zip'
  checksum       = '58E5915DD2A8B21A0CC970B479884244F5FAFF7CD8F648F2F8488C3116A5C860'
  checksum64     = '736B6584390C3E7C3B56DC0CC03ECFAE8931AE832B7DDDE33840601B13902556'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
