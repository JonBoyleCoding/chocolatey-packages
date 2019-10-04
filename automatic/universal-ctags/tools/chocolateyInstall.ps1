$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-03/70b44e7d/ctags-2019-10-03_70b44e7d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-03/70b44e7d/ctags-2019-10-03_70b44e7d-x64.zip'
  checksum       = '11ABB5E89708F6FD15FBF66C774136313337CF89DC17684832AA8D6B0569D403'
  checksum64     = '16D3F1C1C62669898771022A564A1C9AA5C606A26D6048A40FCA79E5BBA44CD2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
