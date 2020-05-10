$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-09/ca0412ab/ctags-2020-05-09_ca0412ab-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-09/ca0412ab/ctags-2020-05-09_ca0412ab-x64.zip'
  checksum       = 'FCB3224C820351CF1DFF5AC630A7BE296EBCE174C5634D402D84BF0451487574'
  checksum64     = '43DA6DB2CFB637DD25C64C24730FEF274F1B19EF9408500AB4783EDE1EC49DC8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
