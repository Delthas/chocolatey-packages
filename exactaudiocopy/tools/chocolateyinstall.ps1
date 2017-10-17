$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'http://www.exactaudiocopy.de/eac-1.3.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Exact Audio Copy'
  checksum      = '49F1028BD2B0CCE0829250430BF8771C4A766DAF'
  checksumType  = 'sha1'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
