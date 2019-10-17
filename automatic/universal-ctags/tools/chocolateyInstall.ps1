$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-16/1da46597/ctags-2019-10-16_1da46597-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-16/1da46597/ctags-2019-10-16_1da46597-x64.zip'
  checksum       = '4755CFDB40D2EBE3E3E9B16360EE7AC772C3DB0253541E9E6EB00AD94667F942'
  checksum64     = '415DF105A04B10581DD3C41F5F3893E5B89867D6B32A9178B9BFC80E08B02DCA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
