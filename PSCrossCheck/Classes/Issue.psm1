<#
	.SYNOPSIS
	Standard Class: Issue

	.DESCRIPTION
	An issue is the object raised as the result of a check. 
#>

Enum Priority {
	High
	Medium
	Low
}

class Issue {
	[String]$Id
	[String]$Title
	[Priority]$Priority
	[String]$Description

	Issue([String]$Id, [String]$Title, [Priority]$Priority, [String]$Description) {
		$this.Id = $Id
		$this.Title = $Title
		$this.Priority = $Priority
		$this.Description = $Description
	}

	Static [Issue[]]GetIssues() {
		$GetIssues = @{
		    Uri = "http://localhost:5000/crosscheck/api/v1/issues"
			Method = 'GET'
		    ContentType = 'application/json'
        }
		$Result = (Invoke-RestMethod @GetIssues).result
		$Issues = ForEach ($r in $Result) {
			[Issue]::New($r._id.'$oid', $r.title, $r.priority, $r.description)
		}	
		Return $Issues
	}

	Static [Issue]CreateIssue([String]$Title, [Priority]$Priority, [String]$Description) {
		$CreateIssue = @{
		    Uri = "http://localhost:5000/crosscheck/api/v1/issues"
			Method = 'POST'
		    ContentType = 'application/json'
			Body = @{
				title = $Title
				priority = $Priority
				description = $Description
			} | ConvertTo-Json
		}
		$Result = (Invoke-RestMethod @CreateIssue).result
		$Issue = [Issue]::New($Result._id.'$oid', $Result.title, $Result.priority, $Result.description)
		Return $Issue
	}

	[Void]Delete() {
		$DeleteIssue = @{
		    Uri = "http://localhost:5000/crosscheck/api/v1/issues/$($this.Id)"
			Method = 'DELETE'
		    ContentType = 'application/json'
        }
		Invoke-RestMethod @DeleteIssue
	}
}