$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-12/aac61932/ctags-2020-07-12_aac61932-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-12/aac61932/ctags-2020-07-12_aac61932-x64.zip'
  checksum       = '233F94019B0B72BC89A48C87DF08F12BA281E801EA54C2BA2D000CDD5FEBF70C'
  checksum64     = '6375001C0C3E7C975CB8386F516E80941C80A4B0509800F41736FD7AAE6C80CB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
