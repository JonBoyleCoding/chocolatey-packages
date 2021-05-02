$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-01/p5.9.20210425.0-28-gb9f8c5f2/ctags-2021-05-01_p5.9.20210425.0-28-gb9f8c5f2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-01/p5.9.20210425.0-28-gb9f8c5f2/ctags-2021-05-01_p5.9.20210425.0-28-gb9f8c5f2-x64.zip'
  checksum       = '93013D33E43CA61869E90A2A1B4915513F55B5FECACEEDFB37ED461FA99BE723'
  checksum64     = 'E38CA9CF4F8207C7372CC2888095FAD9D906E4DF7D853D4F0094EB30C1C456B2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
