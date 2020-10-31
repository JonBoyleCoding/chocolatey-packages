$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-30/p5.9.20201025.0-31-g6222334c/ctags-2020-10-30_p5.9.20201025.0-31-g6222334c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-30/p5.9.20201025.0-31-g6222334c/ctags-2020-10-30_p5.9.20201025.0-31-g6222334c-x64.zip'
  checksum       = '9AF90C765917CC9D1B3EF10DD703449A3FF1DE4FC63E7718A719FD3FE2E754BA'
  checksum64     = 'B359D6090C2DE83463B9E93588678F698EEA590D7CE063029A77EEC64F224BCA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
