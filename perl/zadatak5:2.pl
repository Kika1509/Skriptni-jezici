open FILE, $ARGV[$#ARGV];

chomp(@logdata = <FILE>); 

shift @logdata;

for (@logdata) {
	($level, $datetime, $source, $eventID, $task, $category) = split(/\t/, $_);
	$counter{$level}{$source}++;

}

foreach $level (sort keys %counter) {
	print "================================\n";
	print " Level: $level\n";
	print " Source: num. records\n";
	print "--------------------------------\n";

	foreach $source (sort keys $counter{$level}) {
		print "$source : $counter{$level}{$source}\n";
	}
	print "\n";
}