$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-26/p5.9.20210620.0-10-gc436bca6/ctags-2021-06-26_p5.9.20210620.0-10-gc436bca6-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-26/p5.9.20210620.0-10-gc436bca6/ctags-2021-06-26_p5.9.20210620.0-10-gc436bca6-x64.zip'
  checksum       = 'D40D5F5880E9D98DB9ADB21AB86B7D30BC56B0F614156EC846E5ABDC146DE6BE'
  checksum64     = '5C952D5A78200F5F49F70FC6ADC87CBB406A0F7A1B3A8050A4C17F6CF37CCEA5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
