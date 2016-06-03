$ErrorActionPreference = 'Stop';

$packageName= 'docker-toolbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/docker/toolbox/releases/download/v1.11.1b/DockerToolbox-1.11.1b.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  softwareName  = 'docker-toolbox*'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















