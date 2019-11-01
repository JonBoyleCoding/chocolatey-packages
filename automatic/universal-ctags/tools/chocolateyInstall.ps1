$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-31/82788f69/ctags-2019-10-31_82788f69-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-31/82788f69/ctags-2019-10-31_82788f69-x64.zip'
  checksum       = 'A96C0CC2FC189AD5EFCAAF4E62B12E30C4596BB8F0CED83A8276EB46ADD3A453'
  checksum64     = '4B4700BB9AA0D02E990EC15214EE9CDA62CBC7DF7A8536AA4BEBBC8A8144A68A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
