Connect-MgGraph -Scopes "RoleManagement.Read.Directory", "User.Read.All"

$activeAssignments = Get-MgRoleManagementDirectoryRoleAssignment -All

$translatedReport = foreach ($assignment in $activeAssignments) {
    $matchedUser = Get-MgUser -UserId $assignment.PrincipalId -ErrorAction SilentlyContinue
    $matchedRole = Get-MgRoleManagementDirectoryRoleDefinition -UnifiedRoleDefinitionId $assignment.RoleDefinitionId -ErrorAction SilentlyContinue
    
    [PSCustomObject]@{
        UserPrincipalName = $matchedUser.UserPrincipalName
        RoleName          = $matchedRole.DisplayName
    }
}

$translatedReport | Format-Table -AutoSize