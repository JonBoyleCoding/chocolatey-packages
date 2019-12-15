$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-14/f7513be0/ctags-2019-12-14_f7513be0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-14/f7513be0/ctags-2019-12-14_f7513be0-x64.zip'
  checksum       = '681BF4513DA0785645F13FB2696EF7D037B837B8C4C1916512BD5F713A5266DF'
  checksum64     = 'E159FDD28A4234030C89412BA098E8394D0A22F5234EFF6E9B44DFF6C6E64BB0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
