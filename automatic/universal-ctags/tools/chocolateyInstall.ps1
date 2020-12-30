$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-29/p5.9.20201227.0-17-gf2a243f1/ctags-2020-12-29_p5.9.20201227.0-17-gf2a243f1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-29/p5.9.20201227.0-17-gf2a243f1/ctags-2020-12-29_p5.9.20201227.0-17-gf2a243f1-x64.zip'
  checksum       = 'C4D60DC7EE515B97B07D6E8D94811AF825DF8EFC7E907ADF73559F5A7226FB35'
  checksum64     = 'E4BB396DFF8DF57B049EBD46C0C062187A303221C264F468F9ED69D08FA1EA73'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
