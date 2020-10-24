$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-23/p5.9.20201018.0-10-g68d04789/ctags-2020-10-23_p5.9.20201018.0-10-g68d04789-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-23/p5.9.20201018.0-10-g68d04789/ctags-2020-10-23_p5.9.20201018.0-10-g68d04789-x64.zip'
  checksum       = '78B00FCAC8E16257154AA58FC3BFA8E20EE7BCAD0AC043471CD7683D67E15435'
  checksum64     = '6721F1B053DB0B63F84DE446C164D137DB1B8A433E070E0587F9FE7CED1C6635'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
