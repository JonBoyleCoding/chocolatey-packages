$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-08/p5.9.20210606.0-1-gcab98283/ctags-2021-06-08_p5.9.20210606.0-1-gcab98283-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-08/p5.9.20210606.0-1-gcab98283/ctags-2021-06-08_p5.9.20210606.0-1-gcab98283-x64.zip'
  checksum       = '2DCE041A52D600F3347EBB53AB93DE108D938AF91E7246B862466298FE6B3F8A'
  checksum64     = '4472430418BC6E2408F51B1B787FD0AD7F8BF9A989559ED3CC129D380E94AA78'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
