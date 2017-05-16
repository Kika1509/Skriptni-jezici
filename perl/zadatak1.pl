print("Ucitajte niz znakova\n");
chomp($signs = <STDIN>);
print("Ucitajte broj ponavljanja\n");
chomp(nums = <STDIN>);
 
for my $i (1..nums) {
        print "$signs\n";
}