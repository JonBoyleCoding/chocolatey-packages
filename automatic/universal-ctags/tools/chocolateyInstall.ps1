$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-12/p5.9.20201108.0-11-g9bb75d02/ctags-2020-11-12_p5.9.20201108.0-11-g9bb75d02-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-12/p5.9.20201108.0-11-g9bb75d02/ctags-2020-11-12_p5.9.20201108.0-11-g9bb75d02-x64.zip'
  checksum       = '5A33CDA925F54CC2292A414887E1E27CA81B22F13A07C351FCEFB220DC3DC428'
  checksum64     = '8EDF6010DA7DBDFA91D95A3E7E7E338C145C6AB54ED5AE3F74FCD6C13FD539EF'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
