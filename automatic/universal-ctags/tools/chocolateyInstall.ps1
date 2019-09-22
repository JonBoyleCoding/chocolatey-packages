$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-21/39e840e6/ctags-2019-09-21_39e840e6-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-21/39e840e6/ctags-2019-09-21_39e840e6-x64.zip'
  checksum       = 'F0B48D18AC6C2C73E0726DFA2D535B2175E364D150F3ABDB86957E0F7D10D00E'
  checksum64     = '9968128120BA05FA0E0E9FEA19A562F97EEE583D7DCBF4D5871F303B953C2862'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
