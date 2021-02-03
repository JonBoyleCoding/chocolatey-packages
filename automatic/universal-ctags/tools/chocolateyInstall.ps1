$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-02/p5.9.20210131.0-8-gc3280a05/ctags-2021-02-02_p5.9.20210131.0-8-gc3280a05-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-02/p5.9.20210131.0-8-gc3280a05/ctags-2021-02-02_p5.9.20210131.0-8-gc3280a05-x64.zip'
  checksum       = 'B1AA2BBD4AC549164E745B8339FCF8A91F19CA50F72D9BD529DA130C2E51B187'
  checksum64     = 'D888C2A5BDA40A0433B66294D0C86A436A2FAB84DE3CEFB0764AE0796CA8B58D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
