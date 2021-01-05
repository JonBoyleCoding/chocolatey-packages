$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-04/p5.9.20210103.0-19-gbea3961a/ctags-2021-01-04_p5.9.20210103.0-19-gbea3961a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-04/p5.9.20210103.0-19-gbea3961a/ctags-2021-01-04_p5.9.20210103.0-19-gbea3961a-x64.zip'
  checksum       = 'CC70C449EE9C57471A914A4DAAB3D073B86B55D605D82803922A95498799DFD4'
  checksum64     = '18571E1458B96E0D27BC8974AF4DF27010A8F27F37CA267DF8B05B44064D2A3D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
