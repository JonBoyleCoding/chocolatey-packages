$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-05/p5.9.20210404.0-10-g068a16f4/ctags-2021-04-05_p5.9.20210404.0-10-g068a16f4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-05/p5.9.20210404.0-10-g068a16f4/ctags-2021-04-05_p5.9.20210404.0-10-g068a16f4-x64.zip'
  checksum       = 'BEA81399482C9B221EFD8250F8AADFB0A88B53AE59D947620869594590AA95FC'
  checksum64     = '0CE4FC53E59A5A0DBDC3979D2646716A779CEC09485BAAEA8FF72C93BA6D5A5F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
