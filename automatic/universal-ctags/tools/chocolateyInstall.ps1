$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-05/p5.9.20210228.0-25-g81a7010d/ctags-2021-03-05_p5.9.20210228.0-25-g81a7010d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-05/p5.9.20210228.0-25-g81a7010d/ctags-2021-03-05_p5.9.20210228.0-25-g81a7010d-x64.zip'
  checksum       = '86EA15848C0D52CD076B30B7F5CB385E4020912F87822DAEA5084FCAEBB98D95'
  checksum64     = 'DD3D09310B11448C01D931E1F6D23524E910ACC652421971B922830C17A58C77'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
