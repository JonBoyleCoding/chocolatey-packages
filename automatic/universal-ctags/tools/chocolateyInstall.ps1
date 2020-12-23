$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-22/p5.9.20201220.0-8-g165f7e38/ctags-2020-12-22_p5.9.20201220.0-8-g165f7e38-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-22/p5.9.20201220.0-8-g165f7e38/ctags-2020-12-22_p5.9.20201220.0-8-g165f7e38-x64.zip'
  checksum       = 'C8D5DBE5C6E5CD0D9C9357AA1547D5FCE5F2318DBDE3CA60465E4AA47FED8B00'
  checksum64     = '3D64ECDB21637636886542973F5DFED5230C7ED9F0EB1FCC9222B34F19504993'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
