#!/usr/bin/perl

if(@ARGV == 0) {
	
	print "Nedovoljno ulaznih argumenata";
	die;
	
}

num = uc($ARGV[0]);
num = ord(num);

shift(@ARGV);

$diff = num + ord('A');


while(defined($line = <>)) {
	
	$line = uc($line); 
	@nline = split //,$line;
	
	foreach $chr (@nline) {
		
		if($chr =~ /[A-Z]/) {
			
			$new = ord($chr) - $diff;
			
			if($new > ord('Z')) {
				$new = ord('A') + $new % (65+26); #print "$new \n";
			}
						
			$chr = chr($new);
		}
		
		print $chr;
	} # end foreach
		
}