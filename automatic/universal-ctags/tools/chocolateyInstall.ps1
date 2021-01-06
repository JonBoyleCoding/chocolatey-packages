$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-05/p5.9.20210103.0-21-ge053bcd0/ctags-2021-01-05_p5.9.20210103.0-21-ge053bcd0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-05/p5.9.20210103.0-21-ge053bcd0/ctags-2021-01-05_p5.9.20210103.0-21-ge053bcd0-x64.zip'
  checksum       = 'B130384A04FF16451EFDADC012276F8F55016D5ED9A167298190D21974AE3E91'
  checksum64     = '02520550E56BEB672C92DA988B848EEB21EA8D07AF01E6D86FB6E5C7B8B489CC'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
