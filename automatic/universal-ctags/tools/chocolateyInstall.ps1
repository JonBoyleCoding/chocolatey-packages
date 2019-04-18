$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-17/46490ea3/ctags-2019-04-17_46490ea3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-17/46490ea3/ctags-2019-04-17_46490ea3-x64.zip'
  checksum       = 'F4548A0333B368B2BB38748E606D317ED9DE76D50CCAD0BCD8B2220DC758702E'
  checksum64     = 'BAA963EC8F51384EEC6FBDACA67EDE8F76F26BB922B539D3923D8CAD9D76F92E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
