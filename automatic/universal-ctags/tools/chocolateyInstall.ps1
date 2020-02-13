$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-02-12/b2793fa1/ctags-2020-02-12_b2793fa1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-02-12/b2793fa1/ctags-2020-02-12_b2793fa1-x64.zip'
  checksum       = '891FE6A99B490274BAA52328A07CFBF2394C86BCD9FBD0FA098FF4C0A08A83BD'
  checksum64     = 'EE533C46974F27841021D831B47C3F89C4E10F0079B18EB97D7E33A7491170CB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
