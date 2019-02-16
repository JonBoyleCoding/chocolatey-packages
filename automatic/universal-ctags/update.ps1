import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/universal-ctags/ctags-win32/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"     = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
            "(?i)(^\s*packageName\s*=\s*)('.*')"  = "`$1'$($Latest.PackageName)'"
        }

        #"$($Latest.PackageName).nuspec" = @{
        #    "(\<releaseNotes\>).*(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        #}
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $download_page = Invoke-WebRequest https://api.github.com/repos/universal-ctags/ctags-win32/releases | ConvertFrom-Json

    $url   = $download_page[0].assets | select browser_download_url | where { $_ -notmatch "debug" -and $_ -match "x86" }
    $url64 = $download_page[0].assets | select browser_download_url | where { $_ -notmatch "debug" -and $_ -match "x64" }

    $version = $download_page[0].name -split "/" | select -First 1
    $version = $version -replace "-", "."

    $url = $url.browser_download_url
    $url64 = $url64.browser_download_url

    $releasenotes = $download_page[0].body

    @{
        Version      = $version
        URL32        = $url
        URL64        = $url64
        ReleaseNotes = $releasenotes
    }
}

update -ChecksumFor all
