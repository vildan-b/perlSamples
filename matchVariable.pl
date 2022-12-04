$_ = "Hello Victor, How are you?";

if(/(\S+) (\S+) (\S+)/){
    print "$1 \n  $2 \n $3";
}