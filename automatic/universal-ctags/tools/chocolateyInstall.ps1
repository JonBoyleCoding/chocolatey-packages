$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-30/fe3f312a/ctags-2020-06-30_fe3f312a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-30/fe3f312a/ctags-2020-06-30_fe3f312a-x64.zip'
  checksum       = '6CEB1B1062C0576901AAE024CC5064E5C11FC6A33A317E0432139424114D8637'
  checksum64     = 'E18422668AE191A2E9016404760BB250E47C28224CA99D49C758E9B298FB71F2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
