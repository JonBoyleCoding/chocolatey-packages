$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-25/d2bbc026/ctags-2019-10-25_d2bbc026-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-25/d2bbc026/ctags-2019-10-25_d2bbc026-x64.zip'
  checksum       = '7A2500B573750A25C36D194E04CD1A93C21ABE831717FCDF64DF1B32956BEDF2'
  checksum64     = '8F5099183EA16C01C2BC4C265ABE4F60884A3897E29DFC2892C6991CD2119237'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
