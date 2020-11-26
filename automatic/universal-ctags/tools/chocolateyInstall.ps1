$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-25/p5.9.20201122.0-55-g03b82c96/ctags-2020-11-25_p5.9.20201122.0-55-g03b82c96-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-25/p5.9.20201122.0-55-g03b82c96/ctags-2020-11-25_p5.9.20201122.0-55-g03b82c96-x64.zip'
  checksum       = '1B9577FC1BE914B1F0E71D0AD46CBDFDF32FC00655D145C660AEAC54A8070B9C'
  checksum64     = '76EF6A91A5594BC86458BD1FA94975B8F30506F22C77293E4FEA135EFBED06C8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
