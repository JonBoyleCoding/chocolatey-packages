$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-28/ee1f32bc/ctags-2019-03-28_ee1f32bc-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-28/ee1f32bc/ctags-2019-03-28_ee1f32bc-x64.zip'
  checksum       = 'E19AF0CB11C25B6AB7A3DB6F4274F5410700F2B3177B16F1A9F06A6409529270'
  checksum64     = 'DCF72CEC1DFDACF51A77269C361C06BF2537188728B046BBCC456DD84D0CEE4E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
