%my_hash = ("number_01" => "Vildan", "number_02" => "Vildan2", "number_03" => "Vildan3" );
$my_hash{"number_04"}="Vildan4";
foreach $value (%my_hash){
    print "$value \n\n";
}