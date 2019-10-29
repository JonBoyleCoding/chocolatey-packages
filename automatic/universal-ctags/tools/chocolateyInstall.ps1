$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-28/0afef663/ctags-2019-10-28_0afef663-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-28/0afef663/ctags-2019-10-28_0afef663-x64.zip'
  checksum       = 'D8276C7E6F7F188B1A1EB582719C682F161CC0A01C34CCD5E015FBE8205AEE84'
  checksum64     = '39CF27EA05655D17DBC3B49B1815D53F56BBE1B444C8E8CD16CD54590C7142F2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
