$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-17/1f68718d/ctags-2019-10-17_1f68718d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-17/1f68718d/ctags-2019-10-17_1f68718d-x64.zip'
  checksum       = '975EE34A4F64C843C962DA2E45A6E2577F3CCEC5D7A8ADF86B2A5DAC5081DAE8'
  checksum64     = '5AF1377E3FFD839F01C1FE942951CF631BE52A6B12E5878D3960F6846A97B8D1'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
