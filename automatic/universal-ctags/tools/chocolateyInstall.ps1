$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-27/9b28d8ce/ctags-2019-04-27_9b28d8ce-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-27/9b28d8ce/ctags-2019-04-27_9b28d8ce-x64.zip'
  checksum       = 'E654400B995EB3F6C686357247664E6D5E4F279D658FBC716AE5F43604F1E3EA'
  checksum64     = 'DA6BDBE4ED0A752256B597B96516410BD3F0ADFF2FB216B1D99E1632DC108F38'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
