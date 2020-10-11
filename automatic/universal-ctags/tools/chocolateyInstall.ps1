$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-10/a111a611/ctags-2020-10-10_a111a611-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-10/a111a611/ctags-2020-10-10_a111a611-x64.zip'
  checksum       = '542AD6283DBB23C54707085D080CED0A7BD4F636AB2EA19E885034FE7AC6CED9'
  checksum64     = 'B7237092FBE8ED553FC6C994AF2740EE9C0BC9CBB2365830A354061E67ADAF82'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
