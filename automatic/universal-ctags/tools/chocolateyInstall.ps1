$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-08/p5.9.20210207.0-2-gf9858cc2/ctags-2021-02-08_p5.9.20210207.0-2-gf9858cc2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-08/p5.9.20210207.0-2-gf9858cc2/ctags-2021-02-08_p5.9.20210207.0-2-gf9858cc2-x64.zip'
  checksum       = 'D99369F1682CE4979982C4D93D26157F9F4B4CF11CFDA840487DC219D447A761'
  checksum64     = 'C21B51241738E197406D6357BCB246897B95A55740B7BE822C431CC34618BCC5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
