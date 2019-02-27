$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-26/6fd7f3e9/ctags-2019-02-26_6fd7f3e9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-26/6fd7f3e9/ctags-2019-02-26_6fd7f3e9-x64.zip'
  checksum       = '1861C7296F4CCA6DACAA1F43C880DE77033FE0E9628271D48B676110F7D877BE'
  checksum64     = 'A52A371C65C632490B2C8EF50F34FDC906EA1CFFD27993CD7CF39E728D759938'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
