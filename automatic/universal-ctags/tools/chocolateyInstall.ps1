$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-15/p5.9.20201213.0-17-gb49410f9/ctags-2020-12-15_p5.9.20201213.0-17-gb49410f9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-15/p5.9.20201213.0-17-gb49410f9/ctags-2020-12-15_p5.9.20201213.0-17-gb49410f9-x64.zip'
  checksum       = '2FE3869E8C73920CCDAFB26F7AABD159622F62BE2E24BD2127B4AEAFF663A6D3'
  checksum64     = '07DA79095BD934182D28EA3DEF51FEB6A1FD81262CD16780B45E4C453D3787F3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
