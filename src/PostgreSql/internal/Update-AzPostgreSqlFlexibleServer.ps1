
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Updates an existing server.
The request body can contain one to many of the properties present in the normal server definition.
.Description
Updates an existing server.
The request body can contain one to many of the properties present in the normal server definition.
.Example
 Update-AzPostgreSqlFlexibleServer -ResourceGroupName PowershellPostgreSqlTest -Name postgresql-test -Sku Standard_D4s_v3
.Example
 Get-AzPostgreSqlFlexibleServer -ResourceGroupName PowershellPostgreSqlTest -ServerName postgresql-test | Update-AzPostgreSqlFlexibleServer -BackupRetentionDay 23 -StorageMb 262144

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20210601.IServerForUpdate
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.IPostgreSqlIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20210601.IServerAutoGenerated
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IPostgreSqlIdentity>: Identity Parameter
  [ConfigurationName <String>]: The name of the server configuration.
  [DatabaseName <String>]: The name of the database.
  [FirewallRuleName <String>]: The name of the server firewall rule.
  [Id <String>]: Resource identity path
  [LocationName <String>]: The name of the location.
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [SecurityAlertPolicyName <SecurityAlertPolicyName?>]: The name of the security alert policy.
  [ServerName <String>]: The name of the server.
  [SubscriptionId <String>]: The ID of the target subscription.
  [VirtualNetworkRuleName <String>]: The name of the virtual network rule.

PARAMETER <IServerForUpdate>: Represents a server to be updated.
  [AdministratorLoginPassword <SecureString>]: The password of the administrator login.
  [BackupGeoRedundantBackup <GeoRedundantBackupEnum?>]: A value indicating whether Geo-Redundant backup is enabled on the server.
  [BackupRetentionDay <Int32?>]: Backup retention days for the server.
  [CreateMode <CreateModeForUpdate?>]: The mode to update a new PostgreSQL server.
  [HighAvailabilityMode <HighAvailabilityMode?>]: The HA mode for the server.
  [HighAvailabilityStandbyAvailabilityZone <String>]: availability zone information of the standby.
  [Location <String>]: The location the resource resides in.
  [MaintenanceWindowCustomWindow <String>]: indicates whether custom window is enabled or disabled
  [MaintenanceWindowDayOfWeek <Int32?>]: day of week for maintenance window
  [MaintenanceWindowStartHour <Int32?>]: start hour for maintenance window
  [MaintenanceWindowStartMinute <Int32?>]: start minute for maintenance window
  [SkuName <String>]: The name of the sku, typically, tier + family + cores, e.g. Standard_D4s_v3.
  [SkuTier <SkuTier?>]: The tier of the particular SKU, e.g. Burstable.
  [StorageSizeGb <Int32?>]: Max storage allowed for a server.
  [Tag <IServerForUpdateTags>]: Application-specific metadata in the form of key-value pairs.
    [(Any) <String>]: This indicates any property can be added to this object.
.Link
https://learn.microsoft.com/powershell/module/az.postgresql/update-azpostgresqlflexibleserver
#>
function Update-AzPostgreSqlFlexibleServer {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20210601.IServerAutoGenerated])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Alias('ServerName')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Path')]
    [System.String]
    # The name of the server.
    ${Name},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='Update')]
    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.IPostgreSqlIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20210601.IServerForUpdate]
    # Represents a server to be updated.
    # To construct, see NOTES section for PARAMETER properties and create a hash table.
    ${Parameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.Security.SecureString]
    # The password of the administrator login.
    ${AdministratorLoginPassword},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.GeoRedundantBackupEnum])]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.GeoRedundantBackupEnum]
    # A value indicating whether Geo-Redundant backup is enabled on the server.
    ${BackupGeoRedundantBackup},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.Int32]
    # Backup retention days for the server.
    ${BackupRetentionDay},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.CreateModeForUpdate])]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.CreateModeForUpdate]
    # The mode to update a new PostgreSQL server.
    ${CreateMode},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.HighAvailabilityMode])]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.HighAvailabilityMode]
    # The HA mode for the server.
    ${HighAvailabilityMode},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.String]
    # availability zone information of the standby.
    ${HighAvailabilityStandbyAvailabilityZone},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.String]
    # The location the resource resides in.
    ${Location},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.String]
    # indicates whether custom window is enabled or disabled
    ${MaintenanceWindowCustomWindow},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.Int32]
    # day of week for maintenance window
    ${MaintenanceWindowDayOfWeek},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.Int32]
    # start hour for maintenance window
    ${MaintenanceWindowStartHour},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.Int32]
    # start minute for maintenance window
    ${MaintenanceWindowStartMinute},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.String]
    # The name of the sku, typically, tier + family + cores, e.g.
    # Standard_D4s_v3.
    ${SkuName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.SkuTier])]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Support.SkuTier]
    # The tier of the particular SKU, e.g.
    # Burstable.
    ${SkuTier},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [System.Int32]
    # Max storage allowed for a server.
    ${StorageSizeGb},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20210601.IServerForUpdateTags]))]
    [System.Collections.Hashtable]
    # Application-specific metadata in the form of key-value pairs.
    ${Tag},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Az.PostgreSql.private\Update-AzPostgreSqlFlexibleServer_Update';
            UpdateExpanded = 'Az.PostgreSql.private\Update-AzPostgreSqlFlexibleServer_UpdateExpanded';
            UpdateViaIdentity = 'Az.PostgreSql.private\Update-AzPostgreSqlFlexibleServer_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Az.PostgreSql.private\Update-AzPostgreSqlFlexibleServer_UpdateViaIdentityExpanded';
        }
        if (('Update', 'UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
