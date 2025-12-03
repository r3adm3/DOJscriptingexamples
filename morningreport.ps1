# morning_check.ps1 - Quick system health check

Write-Host "Starting morning system check..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""

Write-Host "Checking disk space:" -ForegroundColor Yellow
Get-PSDrive -PSProvider FileSystem | Where-Object {$_.Used -gt 0} | 
    Select-Object Name, @{Name="Used(GB)";Expression={[math]::Round($_.Used/1GB,2)}}, 
                       @{Name="Free(GB)";Expression={[math]::Round($_.Free/1GB,2)}}

Write-Host ""
Write-Host "Checking memory:" -ForegroundColor Yellow
$memory = Get-CimInstance Win32_OperatingSystem
Write-Host "Total Physical Memory: $([math]::Round($memory.TotalVisibleMemorySize/1MB,2)) GB"
Write-Host "Free Physical Memory: $([math]::Round($memory.FreePhysicalMemory/1MB,2)) GB"

Write-Host ""
Write-Host "System uptime:" -ForegroundColor Yellow
$uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
Write-Host "System has been running for: $($uptime.Days) days, $($uptime.Hours) hours, $($uptime.Minutes) minutes"

Write-Host ""
Write-Host "Top 5 memory-consuming processes:" -ForegroundColor Yellow
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5 Name, 
    @{Name="Memory(MB)";Expression={[math]::Round($_.WorkingSet/1MB,2)}}

Write-Host ""
Write-Host "Check complete!" -ForegroundColor Green