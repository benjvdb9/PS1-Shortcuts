$name = whoami
Write-Host -NoNewline "`nYour name is `""
Write-Host -ForegroundColor White -NoNewline $name
Write-Host "`""

Start-Process -FilePath cmd.exe /c -Credential (Get-Credential)
