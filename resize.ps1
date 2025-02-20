$file = "$PSScriptRoot\promptstate.txt"

Switch ($args[0])
{
	's' {cp ~/.config/shorthand.toml ~/.config/starship.toml -Force && "short" | Set-Content $file }
	'd' {cp ~/.config/custom.toml ~/.config/starship.toml -Force && "default" | Set-Content $file}
	Default
	{
		$state = Get-Content $file

		Switch ($state)
		{
			'default' {cp ~/.config/shorthand.toml ~/.config/starship.toml -Force && "short" | Set-Content $file}
			'short' {cp ~/.config/custom.toml ~/.config/starship.toml -Force && "default" | Set-Content $file}
			Default {"Error: Please check promptstate file content"}
		}
	}
}
