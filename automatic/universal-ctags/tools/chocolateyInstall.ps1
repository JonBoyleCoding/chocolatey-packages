$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-02/p5.9.20210328.0-2-g3185b289/ctags-2021-04-02_p5.9.20210328.0-2-g3185b289-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-02/p5.9.20210328.0-2-g3185b289/ctags-2021-04-02_p5.9.20210328.0-2-g3185b289-x64.zip'
  checksum       = 'A09001F1A8A82CCC411B107764D17D70B6ED9A9613021E5E8E9E33714848A43F'
  checksum64     = 'C731FC03131873826ACA2C9A32D0382F12B2FC1A96D01B9F27E1E6265B95AE2B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
