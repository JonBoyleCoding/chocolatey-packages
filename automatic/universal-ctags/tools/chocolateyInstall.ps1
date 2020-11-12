$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-11/p5.9.20201108.0-5-g78c0bcd4/ctags-2020-11-11_p5.9.20201108.0-5-g78c0bcd4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-11/p5.9.20201108.0-5-g78c0bcd4/ctags-2020-11-11_p5.9.20201108.0-5-g78c0bcd4-x64.zip'
  checksum       = '0325B8E30438425DE7A4F77F6E4F20F08A58815156766849699D94E2CE3E1AB2'
  checksum64     = 'FB960FE62F9A70155AC9D3668F636047E07D6F4D50119D166802C341B1EF7CEB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
