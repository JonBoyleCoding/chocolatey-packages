$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-28/p5.9.20201025.0-10-g8b4a13c0/ctags-2020-10-28_p5.9.20201025.0-10-g8b4a13c0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-28/p5.9.20201025.0-10-g8b4a13c0/ctags-2020-10-28_p5.9.20201025.0-10-g8b4a13c0-x64.zip'
  checksum       = '9234C763A8CA5FD4DF842E58A642EA3C2E626B76299112EBC208A5B879DBCBE1'
  checksum64     = 'DF1FF31C40E6DB253688552E952D3F33355BBF35B9C0491B0AF20D35AB506CB5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
