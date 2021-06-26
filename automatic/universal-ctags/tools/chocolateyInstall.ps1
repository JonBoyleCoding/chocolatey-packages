$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-25/p5.9.20210620.0-8-g04a983bf/ctags-2021-06-25_p5.9.20210620.0-8-g04a983bf-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-25/p5.9.20210620.0-8-g04a983bf/ctags-2021-06-25_p5.9.20210620.0-8-g04a983bf-x64.zip'
  checksum       = 'A81894D7A6E501993A7143B02B815ADA73DC6A6983B2DB20113721D88AF2F462'
  checksum64     = 'A88BB39A0C1D81A7B7121692E15A45FEED8520100718BBCB58EA637BB92D5356'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
