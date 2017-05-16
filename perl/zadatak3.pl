#! perl

$z=0;
while(<>){
	@pom = split /\[/, $_;
	@pom1 = split /:/, $pom[1];
	$date = $pom1[0];
	$sat = $pom1[1];
	
	if($z == 0 || $z != $date){
		if($z != 0){
			print "  $s : $pon[$k]\n";
		}
		print "\n Datum: $date\n";
		print " sat : broj pristupa\n";
		print "------------------------------\n";
		$z = $date;
		$k = 0;
		foreach $i (0..24){
			$pon[$i] = 0;
			$i++;
		}
	}
	
	if($z == $date){
		if($k == $sat){
			$pon[$k]++;
			$s = $sat;
		}
		else{
			$k++;
			$pon[$k]++;
			print "  $s : $pon[$k-1]\n";
		}
	}
}
print "  $s : $pon[$k]\n";