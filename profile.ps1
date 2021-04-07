Remove-Module PSReadLine -Force
Import-Module PSReadLine -Force
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

$StartDirectory = Join-Path $env:USERPROFILE "Projects"

function touch {
	[CmdletBinding()]
	param (
		[Parameter(ValueFromPipeline,ValueFromPipelineByPropertyName,Position=0)]
		[string]$Path
	)
	try {
		if ( [string]::IsNullOrEmpty($Path) ) {
			$FileName = "tmp{0}.txt" -f (Get-Date -Format FileDateTime)
			$Path = Join-Path (Get-Location) $FileName
		}
		if ( Test-Path $Path ) {
			Write-Warning "File already exists: $Path"
		} else {
			New-Item $Path | Select-Object -ExpandProperty FullName
		}
	} catch {
		Write-Warning $PSItem.Exception.Message
	}
}

if ( Test-Path $StartDirectory ) {
	Set-Location $StartDirectory
}