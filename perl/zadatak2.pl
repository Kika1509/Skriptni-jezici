#!perl

print "Unesite niz brojeva\n";
@list = <STDIN>;

$j=0;
$sum=0;
while($list[$j] != EOF){
	$sum+=$list[$j];
	$j++;
}

print "Suma svih brojeva je $sum.\n";
print "Lista sadrzi $j brojeva.\n";
print "Aritmeticka sredina liste je: ", $sum/$j, " .\n";