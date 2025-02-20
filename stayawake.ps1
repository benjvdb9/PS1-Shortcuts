cls

# Write-Host -NoNewline "PS C:\Workspace>"
Write-Host "`e[38;2;154;52;142m`e[0m" -NoNewline && Write-Host "`e[48;2;154;52;142m 🥕 Workspace `e[0m" -NoNewline && Write-Host "`e[38;2;154;52;142;48;2;218;98;125m`e[0m" -NoNewline && Write-Host "`e[38;2;218;98;125;48;2;252;161;125m`e[0m" -NoNewline && Write-Host "`e[38;2;252;161;125;48;2;6;150;154m`e[0m" -NoNewline && Write-Host "`e[38;2;6;150;154m`e[0m " -NoNewline 

#Write-Host "Keeping screen from locking"
cscript //NoLogo //B "C:\Users\vandenbusscheb\Documents\Shortcuts\sawake.vbs" $args[0]
