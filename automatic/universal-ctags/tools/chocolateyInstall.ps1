$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-06/p5.9.20210103.0-23-g08b1c490/ctags-2021-01-06_p5.9.20210103.0-23-g08b1c490-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-06/p5.9.20210103.0-23-g08b1c490/ctags-2021-01-06_p5.9.20210103.0-23-g08b1c490-x64.zip'
  checksum       = '16C8B3155BBB41EAC2A46409DF83E450F0EE99C94A5A0A7BC6628BCC7FC97C85'
  checksum64     = '19E20CF9B207E7505775716F7F026B0BBCD93BEAFF798A4DC03F13AB2AC567FC'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
