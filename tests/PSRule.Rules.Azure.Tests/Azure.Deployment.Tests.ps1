# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

#
# Unit tests for Azure deployments
#

[CmdletBinding()]
param ()

BeforeAll {
    # Setup error handling
    $ErrorActionPreference = 'Stop';
    Set-StrictMode -Version latest;

    if ($Env:SYSTEM_DEBUG -eq 'true') {
        $VerbosePreference = 'Continue';
    }

    # Setup tests paths
    $rootPath = $PWD;
    Import-Module (Join-Path -Path $rootPath -ChildPath out/modules/PSRule.Rules.Azure) -Force;
    $here = (Resolve-Path $PSScriptRoot).Path;
}

Describe 'Azure.Deployment' -Tag 'Deployment' {
    Context 'Conditions' {
        BeforeAll {
            $invokeParams = @{
                Baseline = 'Azure.All'
                Module = 'PSRule.Rules.Azure'
                WarningAction = 'SilentlyContinue'
                ErrorAction = 'Stop'
            }
        }

        It 'Azure.Deployment.OutputSecretValue' {
            $sourcePath = Join-Path -Path $here -ChildPath 'Tests.Bicep.7.json';
            $data = Export-AzRuleTemplateData -TemplateFile $sourcePath -PassThru;
            $result = $data | Invoke-PSRule @invokeParams -Name 'Azure.Deployment.OutputSecretValue';
            $filteredResult = $result | Where-Object { $_.RuleName -eq 'Azure.Deployment.OutputSecretValue' };

            # Fail
            $ruleResult = @($filteredResult | Where-Object { $_.Outcome -eq 'Fail' });
            $ruleResult | Should -Not -BeNullOrEmpty;
            $ruleResult.Length | Should -Be 2;
            $targetNames = $ruleResult | ForEach-Object { $_.TargetObject.name };
            $targetNames | Should -BeIn 'ps-rule-test-deployment', 'child';

            # Pass
            $ruleResult = @($filteredResult | Where-Object { $_.Outcome -eq 'Pass' });
            $ruleResult | Should -Not -BeNullOrEmpty;
            $ruleResult.Length | Should -Be 1;
            $targetNames = $ruleResult | ForEach-Object { $_.TargetObject.name };
            $targetNames | Should -BeIn 'good';
        }
    }
}
