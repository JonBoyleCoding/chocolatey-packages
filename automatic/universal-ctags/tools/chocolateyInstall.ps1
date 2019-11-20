$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-19/7492b90e/ctags-2019-11-19_7492b90e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-19/7492b90e/ctags-2019-11-19_7492b90e-x64.zip'
  checksum       = '50EB57CB4E9780718C56ECA8D5131B73718C7017ECF3697B57208954180128BD'
  checksum64     = 'BA62E8EA9E77DC75AB44AAB0A2B7B4B9176C2DB75918CA84963E7A613F856EB3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
