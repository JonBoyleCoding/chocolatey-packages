$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-10/p5.9.20210404.0-24-gf6234d04/ctags-2021-04-10_p5.9.20210404.0-24-gf6234d04-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-10/p5.9.20210404.0-24-gf6234d04/ctags-2021-04-10_p5.9.20210404.0-24-gf6234d04-x64.zip'
  checksum       = '847D0BC04BD76DF55276B35E44D48B8DC1DC839D229C4D2AF429F0BCA23634BC'
  checksum64     = 'E298A812841BBE2011ACE49772C8ACB5911FC9B1C215D5831AFB994678694A46'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
