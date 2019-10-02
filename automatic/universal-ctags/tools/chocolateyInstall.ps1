$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-01/8c6eab67/ctags-2019-10-01_8c6eab67-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-01/8c6eab67/ctags-2019-10-01_8c6eab67-x64.zip'
  checksum       = 'ACFC44F8FCA16760EFDCCE85BB68196A8DBAE6EECD36743223C16F0506989AED'
  checksum64     = 'AA747707EAC1CD9FF4699A2626EC7A176C3C03C7065B51BE00667B2770B9000A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
