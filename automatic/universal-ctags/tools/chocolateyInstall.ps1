$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-12/p5.9.20210110.0-4-g89159388/ctags-2021-01-12_p5.9.20210110.0-4-g89159388-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-12/p5.9.20210110.0-4-g89159388/ctags-2021-01-12_p5.9.20210110.0-4-g89159388-x64.zip'
  checksum       = 'D25DB668D7747671CCABF15252C77A32433C63C3C2850D0AA1A0AE9D075036A7'
  checksum64     = 'AE3A02C90EB7E5D2B746D98C0570D27271A37120C554D7105AF1541CCA637272'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
