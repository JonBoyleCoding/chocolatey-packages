$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-11/p5.9.20201206.0-19-g0837c42c/ctags-2020-12-11_p5.9.20201206.0-19-g0837c42c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-11/p5.9.20201206.0-19-g0837c42c/ctags-2020-12-11_p5.9.20201206.0-19-g0837c42c-x64.zip'
  checksum       = '1636633CA97427538823A28C95FA9A1ECDFD3D081DB3BA658110103BE2B4F354'
  checksum64     = '4BE5959E047BF3D1866A86FA7F3EFDE42C6E19947D9E2DB43D7BA8F2147CFAAB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
