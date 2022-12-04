use strict;
use warnings;

my $fileName= "test.txt";
open(my $fh, "<", $fileName);
while(my $row = <$fh>){
    chomp($row);
    print $row , "\n";
}
close($fh);
