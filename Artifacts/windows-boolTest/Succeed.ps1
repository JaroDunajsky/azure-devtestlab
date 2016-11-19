[CmdletBinding()]
param(
    # comma- or semicolon-separated list of Chocolatey packages.
    [bool] $succeed
)

# Note: Because the $ErrorActionPreference is "Stop", this script will stop on first failure.  
$ErrorActionPreference = "Stop"

# Ensure that current process can run scripts. 
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force 

if ($succeed -eq $false)
{
    throw 'Failed because requested via parameter $succeed';
}

return 0;