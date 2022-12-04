use strict;
use warnings;


print "hello world\n";

print "Name :";
my $weather = <STDIN>;
print "Welcome : " , $weather , "\n" ;

if($weather < 10){
    print "hava güzel, sicaklik  " , $weather;
} 
if ( $weather > 10 ) {
    print "hava kötü, sicaklik  " , $weather;
}
