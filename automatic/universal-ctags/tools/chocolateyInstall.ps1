$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-21/p5.9.20210516.0-30-g2b88b80a/ctags-2021-05-21_p5.9.20210516.0-30-g2b88b80a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-21/p5.9.20210516.0-30-g2b88b80a/ctags-2021-05-21_p5.9.20210516.0-30-g2b88b80a-x64.zip'
  checksum       = '255836E3367EFEF40CC1557010E178FD19DC48B1E83939BBB8316DB7C9B0C67B'
  checksum64     = 'B2FC6A79FF0AF8423DEC54030866FF1B5C08EE6ADDCAA335E9B262ADADFCD8E5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
