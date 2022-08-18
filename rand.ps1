$students = "Benjamin", "Abul", "Andreas", "Anees", "Baker", "Ercan", "Gokhan", "Mohammed", "Monica", "Nadia", "Peter"

$index = Get-Random -Minimum 0 -Maximum 11

return $students[$index]
