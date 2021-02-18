$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-17/p5.9.20210214.0-5-gbf27b482/ctags-2021-02-17_p5.9.20210214.0-5-gbf27b482-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-17/p5.9.20210214.0-5-gbf27b482/ctags-2021-02-17_p5.9.20210214.0-5-gbf27b482-x64.zip'
  checksum       = '6D2F9F6F9A305C769CB70B1EACB99A5EA0992A423E23D55E74D146EDAF0B20D4'
  checksum64     = 'F72A5923D18D2D37AB9878C398C8E7337B74573AB980FAE01E648E237B67DD73'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
