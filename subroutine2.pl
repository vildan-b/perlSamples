use warnings;

sub names {

    foreach $name (@_) {
        if ($name eq "vildan"){
            return $name;
            print "test";
        }
    }
}

my $name = &names("Azra" , "vildan", "Test");
print "$name";