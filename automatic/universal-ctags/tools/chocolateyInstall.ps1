$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-10/p5.9.20210509.0-8-g63425696/ctags-2021-05-10_p5.9.20210509.0-8-g63425696-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-10/p5.9.20210509.0-8-g63425696/ctags-2021-05-10_p5.9.20210509.0-8-g63425696-x64.zip'
  checksum       = '983F206D65E6F74103A9A78EF03F92C40C061A2CD82E996204B45C5DBCFC53CB'
  checksum64     = '469C932A4CC1358AB72872C8E6E2B62A0E71192E5B909C730504C91AE112053F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
