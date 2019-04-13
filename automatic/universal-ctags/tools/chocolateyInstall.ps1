$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-12/f07b0a98/ctags-2019-04-12_f07b0a98-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-12/f07b0a98/ctags-2019-04-12_f07b0a98-x64.zip'
  checksum       = 'FAE48C1B12028315A344038AA0BBBB2ECF4FB4104F4C81D7920B83C1E36EF9F4'
  checksum64     = '85FA432EFA675C729DE0EA47DDDFD15C128100D3E138C45101C970BEC94448BD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
