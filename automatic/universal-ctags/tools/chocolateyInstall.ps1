$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-01/bf00708d/ctags-2019-12-01_bf00708d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-01/bf00708d/ctags-2019-12-01_bf00708d-x64.zip'
  checksum       = '538989DBFDFC96C25FE5412176ABB8472253FEA12DCC88C010C2BC59D15557FB'
  checksum64     = '40E74DBCEDD3AA73546C0603CB6C7C3B584B4521EFE8B0C592160774679ED764'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
