# Write-Issue

## SYNOPSIS
Writes a new issues to CrossCheck

## SYNTAX

```
Write-Issue [-Title] <String> [-Priority] <Priority> [[-Description] <String>]
```

## DESCRIPTION
This function allows you to write new issues using the CrossCheck API. 
You are required to define a title and a priority, however description is optional
This function will return with the issue object to allow further operations

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Write-Issue -Title MyIssue -Priority High
```

Create a high priority issue, ommitting a description

### -------------------------- EXAMPLE 2 --------------------------
```
Write-Issue -Title MyIssue -Priority Medium -Description "Description of MyIssue"
```

Create a medium priority issues with a description

## PARAMETERS

### -Title
{{Fill Title Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Priority
{{Fill Priority Description}}

```yaml
Type: Priority
Parameter Sets: (All)
Aliases: 
Accepted values: High, Medium, Low

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
{{Fill Description Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

