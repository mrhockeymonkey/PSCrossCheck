<#
	.SYNOPSIS
	Retreive issues form CrossCheck

	.DESCRIPTION
	This function retreives all or a subset of issues via the CrossCheck API for further operations

	.EXAMPLE
	Get-Issue

	Retreive all issues from CrossCheck
#>

Function Get-Issue {
	[CmdletBinding()]
	Param ()

	Try {
		$Issues = [Issue]::GetIssues()
		Write-Output $Issues
	}
	Catch {
		$PSCmdlet.ThrowTerminatingError($_)
	}
}