$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-30/p5.9.20201129.0-38-g09cc1b0a/ctags-2020-11-30_p5.9.20201129.0-38-g09cc1b0a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-30/p5.9.20201129.0-38-g09cc1b0a/ctags-2020-11-30_p5.9.20201129.0-38-g09cc1b0a-x64.zip'
  checksum       = '6A6BA05D4423860A169130F86FDC38AEBBC48DDCED74D6575B0F0251C5C45D66'
  checksum64     = '183DE81F59E0DBC64DD5DEAED7522DD85BEF44BC27A409B4B9EB4FD871EBBE77'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
