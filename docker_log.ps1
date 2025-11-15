# Docker containers.logger script
$current_date = Get-Date -Format "yyyy-MM-dd"
$current_datetime = Get-Date
$filename = "containers-$current_date.txt"
"=== Docker containers at $current_datetime ===" | Out-File -FilePath $filename
docker ps | Out-File -FilePath $filename -Append
Write-Host "File created: $filename"