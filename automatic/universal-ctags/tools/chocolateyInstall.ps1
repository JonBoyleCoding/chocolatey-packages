$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-11/47de0ff9/ctags-2019-11-11_47de0ff9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-11/47de0ff9/ctags-2019-11-11_47de0ff9-x64.zip'
  checksum       = 'A2D6C5EAFE2C396C87B203C7271BF810E4121FCD1822C9751E5650539E162EDC'
  checksum64     = '54D0A9D14169C3E9E7372EFCF2D8568DB8B9580D6D16C9AFE9FE41B4FFAFF428'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
