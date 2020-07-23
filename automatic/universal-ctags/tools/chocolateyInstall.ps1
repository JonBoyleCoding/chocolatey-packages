$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-22/631690ad/ctags-2020-07-22_631690ad-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-22/631690ad/ctags-2020-07-22_631690ad-x64.zip'
  checksum       = '19748B8797AB449F9D91258D3CE4C02871BEE389C866D5EB5C36FCFDCC0C7601'
  checksum64     = 'E464A3A78E32E7EE1BDAE7C64884E1A7B18E55B7D789EE87479922EA1BDD0871'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
