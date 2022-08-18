$cont_id = docker ps -aqf "name=$args[0]*"
$cont_id | Set-Clipboard 
Write-Output "Copied `"$cont_id`" to clipboard"
