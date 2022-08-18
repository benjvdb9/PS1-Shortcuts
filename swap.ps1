$f1 = $args[0]
$f2 = $args[1]

mv $f1 "TEMP"
mv $f2 $f1
mv "TEMP" $f2
