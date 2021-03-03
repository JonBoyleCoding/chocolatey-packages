$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-02/p5.9.20210228.0-10-g61166a75/ctags-2021-03-02_p5.9.20210228.0-10-g61166a75-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-02/p5.9.20210228.0-10-g61166a75/ctags-2021-03-02_p5.9.20210228.0-10-g61166a75-x64.zip'
  checksum       = '91C5B1A079A513737A588CFC71F94BB30627E2A899CEA42B80DCFFDB5E17C45A'
  checksum64     = '2944A5A1B5104C47FC234C5B79B0693A8E218174998F239CBAC0E08713060CDA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
