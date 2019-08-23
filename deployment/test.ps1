if (-not (Get-Command -Module 'Az.ResourceGraph' -CommandType 'Cmdlet'))
{
    Write-Output "Module 'Az.ResourceGraph' not found, installing right now..."
    Install-Module -Name Az.ResourceGraph
}
else {
    Write-Output "You are all set."
}
