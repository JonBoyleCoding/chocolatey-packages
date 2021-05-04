$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-03/p5.9.20210502.0-71-gf816a0d1/ctags-2021-05-03_p5.9.20210502.0-71-gf816a0d1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-03/p5.9.20210502.0-71-gf816a0d1/ctags-2021-05-03_p5.9.20210502.0-71-gf816a0d1-x64.zip'
  checksum       = 'A1DFB56D7B738CA39C99B6CDAEEFD07835600F6A54B54870D6ECF0CB62098138'
  checksum64     = 'D9BB573063E25F152075CDB1B63B3831E4BEB4CBEB34F56345121AB01FE08B7D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
