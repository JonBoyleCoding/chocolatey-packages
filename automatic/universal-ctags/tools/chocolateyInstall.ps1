$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-25/p5.9.20210523.0-4-ga1b35a9c/ctags-2021-05-25_p5.9.20210523.0-4-ga1b35a9c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-25/p5.9.20210523.0-4-ga1b35a9c/ctags-2021-05-25_p5.9.20210523.0-4-ga1b35a9c-x64.zip'
  checksum       = 'B1BC61B2DB61B21F61FF3209D1E6D989BDA66D00536366E01938490F04EBE581'
  checksum64     = 'CB25D6C0EA9601CAFB33ED83242C14190DCF1005C10A164DFF89EE5138C33252'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
