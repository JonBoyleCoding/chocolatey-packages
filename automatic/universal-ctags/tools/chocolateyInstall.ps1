$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-08/3430f8fd/ctags-2019-07-08_3430f8fd-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-08/3430f8fd/ctags-2019-07-08_3430f8fd-x64.zip'
  checksum       = 'AF47423C626FF54F98FE6931496612788A57281B8F7AADD89FDC5F765D141A48'
  checksum64     = '76E3EE92E10634CD62D87E3401D335F2CF6B182615AB1DA1D5F43EDBDAFB0DFD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
