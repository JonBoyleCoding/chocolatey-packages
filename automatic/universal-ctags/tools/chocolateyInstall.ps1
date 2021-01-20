$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-19/p5.9.20210117.0-8-ga4f1d818/ctags-2021-01-19_p5.9.20210117.0-8-ga4f1d818-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-19/p5.9.20210117.0-8-ga4f1d818/ctags-2021-01-19_p5.9.20210117.0-8-ga4f1d818-x64.zip'
  checksum       = '9EEAB9A58BB7BDB9574B06BCA6133EB06A4313707841DF73533B511089CC08E4'
  checksum64     = '108C5CE381E5C7EE70163FA6189A669B99EB291AB1D13958B80616FF19C97EAE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
