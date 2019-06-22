$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-21/0de02b65/ctags-2019-06-21_0de02b65-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-21/0de02b65/ctags-2019-06-21_0de02b65-x64.zip'
  checksum       = '9FD3F55AB77A6122B3CAAF2143F1EE460746BA7B113895C9DA4C91D4D1B8102F'
  checksum64     = '8B6877518CEDF08BA80376670071D2CA0803DC1574C2D5313A4DD758B0766EDF'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
