$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-09/p5.9.20201108.0-3-g97c3b917/ctags-2020-11-09_p5.9.20201108.0-3-g97c3b917-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-09/p5.9.20201108.0-3-g97c3b917/ctags-2020-11-09_p5.9.20201108.0-3-g97c3b917-x64.zip'
  checksum       = 'D846AC5BC01967C4F8D33696BA79A1C359EBA94EB40C0E0EF4B6D24579BD5F8A'
  checksum64     = '5EA454899D6F54D32828985FFBF8618DD9050539BC7730F99E746335E78EE6DA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
