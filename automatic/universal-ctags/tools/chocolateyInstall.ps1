$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-14/p5.9.20210509.0-20-g3af94f72/ctags-2021-05-14_p5.9.20210509.0-20-g3af94f72-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-14/p5.9.20210509.0-20-g3af94f72/ctags-2021-05-14_p5.9.20210509.0-20-g3af94f72-x64.zip'
  checksum       = 'A58003E03001DD88BF85C955242C387ADF80C14BF2CEC6365AF2D94050FA70CB'
  checksum64     = 'B74AF6EB1CE29E80754D8B56BE33A1894C49FFC185EDE37DD82AA03980DAF2E0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
