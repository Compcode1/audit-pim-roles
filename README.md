# Audit PIM Roles

A PowerShell-based utility designed to audit Microsoft Entra ID Privileged Identity Management (PIM) role assignments using the Microsoft Graph API. This project automates the review of active and eligible privileged roles to help identity administrators maintain a secure, least-privilege environment and streamline governance auditing.

## Features
* PIM Role Inventory: Extracts both active and eligible role assignments across the Entra ID tenant.
* Graph API Integration: Leverages the Microsoft.Graph PowerShell module for secure, modern identity data retrieval.
* Governance Compliance: Identifies standing privileges and over-privileged accounts to support access reviews.

## File Structure
* audit-pim-roles.ps1: The core automation script handling authentication, Graph API queries, and data processing.
* README.md: Project overview and documentation.

## Prerequisites
* PowerShell 7.x or higher
* Microsoft.Graph PowerShell SDK installed (Install-Module Microsoft.Graph)
* Azure AD / Entra ID permissions: RoleManagement.Read.Directory and PrivilegedAccess.Read.AzureAD
