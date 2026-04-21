while ($true) {
    Clear-Host
    Write-Host "=============================="
    Write-Host "      PowerShell Tools"
    Write-Host "=============================="
    Write-Host ""
    Write-Host "1. Show top processes"
    Write-Host "2. Show execution policy"
    Write-Host "3. Back"
    Write-Host ""

    $choice = Read-Host "Select option"

    if ($choice -eq "1") {
        & "$PSScriptRoot\system\show_processes.ps1"
        Pause
    }
    elseif ($choice -eq "2") {
        Get-ExecutionPolicy -List
        Pause
    }
    elseif ($choice -eq "3") {
        break
    }
}
