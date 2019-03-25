$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-24/92a2c04b/ctags-2019-03-24_92a2c04b-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-24/92a2c04b/ctags-2019-03-24_92a2c04b-x64.zip'
  checksum       = '97459C3211BDDA8C2D3A9F44842E3E493B2F066A7BA11DC277B21A8047BE9D91'
  checksum64     = '8E655407E0EAA405D845A2F401CA097938355C61810EEB9F05700F83469FCED2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
