$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-02/p5.9.20201227.0-28-g6b168c9c/ctags-2021-01-02_p5.9.20201227.0-28-g6b168c9c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-02/p5.9.20201227.0-28-g6b168c9c/ctags-2021-01-02_p5.9.20201227.0-28-g6b168c9c-x64.zip'
  checksum       = '95079097DAE0AA67B7F0B9E523F5107AC000A3A1B410B63A0B14785B01E7DC80'
  checksum64     = 'F27962E2F851A31DFCA4EEBDE3215B47466FF060854012B86E956EC00C564FF6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
