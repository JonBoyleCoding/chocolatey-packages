$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-14/0b2607d3/ctags-2020-04-14_0b2607d3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-14/0b2607d3/ctags-2020-04-14_0b2607d3-x64.zip'
  checksum       = '835F86BFB9E445BCE8D3D515BF2CEB90B63EC144043230411C7B16F912627532'
  checksum64     = '1BC7C2FD08FC44B014087BDC9B9463F57FD6DF11CE9CE2864A25A9BF69359C01'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
