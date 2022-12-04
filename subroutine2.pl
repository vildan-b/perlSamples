use warnings;

sub names {
    $a1 = 23;

    foreach $name_1 (@_) {
        if ($name_1 eq "vildan"){
            return $name_1;
            print "test";
        }
    }
}

my $name = &names("Azra" , "vildan", "Test");
print "$a1";