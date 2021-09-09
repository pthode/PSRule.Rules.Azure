# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

@{
    MinTLSVersion = "Minimum TLS version is set to {0}."
    ResourceNotTagged = "The resource is not tagged."
    TcpHealthProbe = "The health probe ({0}) is using TCP."
    RootHttpProbePath = "The health probe ({0}) is using '{1}'."
    AKSVersion = "The Kubernetes version is v{0}."
    AKSNodePoolType = "The agent pool ({0}) is not using scale sets."
    AKSNodePoolVersion = "The agent pool ({0}) is running v{1}."
    AKSAutoScaling = "The agent pool ({0}) is not using autoscaling."
    AKSAzureCNI = "The subnet ({0}) should be using a minimum size of /{1}."
    AKSAvailabilityZone = "The agent pool ({0}) deployed to region ({1}) should use following availability zones [{2}]."
    AKSAuditLogs = "The diagnostic setting ({0}) logs should enable at least one of (kube-audit, kube-audit-admin) and guard."
    AKSPlatformLogs = "The diagnostic setting ({0}) logs should enable ({1})."
    SubnetNSGNotConfigured = "The subnet ({0}) has no NSG associated."
    ServiceUrlNotHttps = "The service URL for '{0}' is not a HTTPS endpoint."
    BackendUrlNotHttps = "The backend URL for '{0}' is not a HTTPS endpoint."
    ResourceNotAssociated = "The resource is not associated."
    EnabledEndpoints = "The number of enabled endpoints is {0}."
    AccessPolicyLeastPrivilege = "One or more access policies grant all or purge permission."
    DiagnosticSettingsNotConfigured = "Diagnostic settings are not configured."
    SecurityCenterNotConfigured = "Security Center is not configured."
    LateralTraversalNotRestricted = "A rule to limit lateral traversal was not found."
    AllInboundRestricted = "The first inbound rule denies traffic from all sources."
    APIMProductSubscription = "The product '{0}' does not require a subscription to use."
    APIMProductApproval = "The product '{0}' does not require approval."
    APIMProductTerms = "The product '{0}' does not have legal terms set."
    APIMCertificateExpiry = "The certificate for host name '{0}' expires or expired on '{1}'."
    APIMDescriptors = "The {0} '{1}' does not have a {2} set."
    APIMSecretNamedValues = "The named value '{0}' is not secret."
    PublicAccessStorageContainer = "The container '{0}' is configured with access type '{1}'."
    RoleAssignmentCount = "The number of assignments is {0}."
    UnmanagedDisk = "The VM disk '{0}' is unmanaged."
    UnmanagedSubscription = "The subscription is not managed."
    DBServerFirewallRuleCount = "The number of firewall rules ({0}) exceeded {1}."
    DBServerFirewallPublicIPRange = "The number of public IP addresses permitted ({0}) exceeded {1}."
    TemplateParameterDescription = "The parameter '{0}' does not have a description set."
    ParameterNotFound = "The parameter '{0}' was not used within the template."
    VariableNotFound = "The variable '{0}' was not used within the template."
    AssessmentUnhealthy = "An assessment is reporting one or more issues."
    AssessmentNotFound = "The results for a valid assessment was not found."
    HealthProbeNotDedicated = "The health probe '{0}' used the default path '/'."
    ParameterTypeMismatch = "The {0} for '{1}' is not {2}."
    ParameterInvalidDefaultValue = "The default value for the parameter '{0}' is '{1}'."
    ExpressionInTemplate = "The expression '{0}' was found in the template."
    SubResourceNotFound = "A sub-resource of type '{0}' has not been specified."
    ParameterValueNotSet = "The parameter '{0}' must have a value or Key Vault reference set."
    AppGWAvailabilityZone = "The application gateway ({0}) deployed to region ({1}) should use following availability zones [{2}]."
}
