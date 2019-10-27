$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-26/efce8b1f/ctags-2019-10-26_efce8b1f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-26/efce8b1f/ctags-2019-10-26_efce8b1f-x64.zip'
  checksum       = '725C5482580966A302F300151269709D8F0F27CD3D3D5161F6E9988EC97E0835'
  checksum64     = 'CC7587E8214D85AFF7BA22B68DDB74B6E5A18CC28A1DE143F2FA76A3411D4E0B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
