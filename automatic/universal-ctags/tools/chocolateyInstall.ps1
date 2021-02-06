$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-05/p5.9.20210131.0-15-g073c52a0/ctags-2021-02-05_p5.9.20210131.0-15-g073c52a0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-05/p5.9.20210131.0-15-g073c52a0/ctags-2021-02-05_p5.9.20210131.0-15-g073c52a0-x64.zip'
  checksum       = 'F747BDE1FE9B90CF20AEB18CDC99AC06B52B7DB7676368272C5716A3DA1C9523'
  checksum64     = 'B00B15CC2DC6AB20E97A6C283CC615D891CF1EEA4F5EE8B6D9BD5D7F0890C801'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
