$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-23/f5c7a0c3/ctags-2019-02-23_f5c7a0c3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-23/f5c7a0c3/ctags-2019-02-23_f5c7a0c3-x64.zip'
  checksum       = 'C3AA669A7505FB738DEE2864A0F905172AD49548E6CBC22D4DFD6D3BB4669F54'
  checksum64     = 'AD034C8708EEE8F013B2CEB6D29A11D1EF3ADEF20CCE5E8ED5BDEA5EC98FE3F5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
