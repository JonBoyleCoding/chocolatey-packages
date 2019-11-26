$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-25/8b7c636d/ctags-2019-11-25_8b7c636d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-25/8b7c636d/ctags-2019-11-25_8b7c636d-x64.zip'
  checksum       = 'C9A5E9C3BAA9F398993B334D5B8042A97670C7291191979224FA1848B6E72E52'
  checksum64     = 'DAC6E8D97F8BFFD801647030F87141682FE04D70F5AC84749D9D6B876D2D30BF'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
