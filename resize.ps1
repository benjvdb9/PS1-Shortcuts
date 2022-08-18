Switch ($args[0])
{
	's' {function Global:PROMPT {"shorthand>"}}
	'd' {function Global:PROMPT {"PS $(pwd)>"}}
	Default {"No matches"}
}
