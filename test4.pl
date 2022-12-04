use strict;
use warnings;

my $fileName= "test.txt";
open(my $fh, ">>", $fileName);
print $fh "\nTest test\n";

close($fh);
