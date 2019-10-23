$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-22/42b74d5d/ctags-2019-10-22_42b74d5d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-22/42b74d5d/ctags-2019-10-22_42b74d5d-x64.zip'
  checksum       = '90B3729E0099E06AB19557EDD9F055206C337F0FA6C638662CEECBF6B16C485F'
  checksum64     = '1A95B5DB2B1B2BBD87177C1B74997C1747B361D58B23D8AFE79E484718899E80'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
