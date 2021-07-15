$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-14/p5.9.20210711.0-6-g88cd4981/ctags-2021-07-14_p5.9.20210711.0-6-g88cd4981-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-14/p5.9.20210711.0-6-g88cd4981/ctags-2021-07-14_p5.9.20210711.0-6-g88cd4981-x64.zip'
  checksum       = '2BDFB1E1C544AB50D44E679ADB22D50697DF3DE0D21203B9936D59326DDBE58A'
  checksum64     = '4B442C55C0F3848C61A22828C277B90E0531D17308C54D780A924617BB85C91A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
