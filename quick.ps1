$file = "$PSScriptRoot\quickpath.txt"

if ($args[0] -like 's*')
{
	"$pwd" | Set-Content $file 
	Write-Output "Saved path: $pwd"
}
else
{
	$path = Get-Content $file
	cd $path
}
