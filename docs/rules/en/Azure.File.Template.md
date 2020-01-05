---
severity: Important
category: Automation
online version: https://github.com/BernieWhite/PSRule.Rules.Azure/blob/master/docs/rules/en/Azure.File.Template.md
---

# Use ARM template file structure

## SYNOPSIS

Use ARM template files that are valid.

## DESCRIPTION

Azure Resource Manager (ARM) template files have a pre-defined structure.
ARM templates require `$schema`, `contentVersion` and `resources` sections to be defined.
If any of these sections are missing, ARM will not accept the template.

## RECOMMENDATION

Consider reviewing the requirements for this file.
Also consider using Visual Studio Code to assist with authoring these files.

## LINKS

- [Define resources in Azure Resource Manager templates](https://docs.microsoft.com/en-us/azure/templates/)