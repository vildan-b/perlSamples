print "\n\n\t\t\ Welcometo Vildan Test Restaurant List\n";
print "\n\t\t\t Designed By: Vildan Bayten\n\n";

&create_option_menu;
&build_list_of_names;
while( $select != 4){
if($select ==  1)
{
 &search_customer;
 $select = &create_option_menu;
} elsif ($select ==  2){
&add_new_customer;
 $select = &create_option_menu;
} elsif  ($select ==  3){
&get_Customer_liste;
 $select = &create_option_menu;

} else {
    print "Please selecet a valid option !!!";
     $select = &create_option_menu;

}
}

$file_name= "list.txt";
open(FILE, "<", $file_name);
foreach $name (@my_list){
    chomp($name);
    print(FILE "$name\n")
    }
close(FILE);

print "\nExiting ...\n\n";
exit;






# get all customers 
sub get_Customer_liste
{
    print "\nCustomers:\n\n";
    my $count = 0;
    
    foreach $name (@my_list){
      $count += 1;
      print "$count. $name\n";
    }
    print "\n\n";
}

#aufrufen list auf list.txt
sub build_list_of_names{
    @my_list = ();

open(FILE, "<", "list.txt");
while(chomp( $name = <FILE>)){
    
    push(@my_list, $name);
}
close(FILE);
return @my_list;
}

#create menu
sub create_option_menu{
print "1.  Search for Customer\n";
print "2.  Add new customer\n";
print "3.  Get all customer\n";
print "Quit\n";

print "\n Select an option: ";
chomp( $select = <STDIN>);
return $select;
}

#add new customer
sub add_new_customer{
    print "Enter name of customer: ";
    chomp( $new_customer = <STDIN>);
 
 $exit_status = push(@my_list, $new_customer);
 if ($exit_status){
    print "\nNew Customer added\n\n\n";
} else {
        print "\nSomething went wrong while triying to add new customer\n\n\n";
}   
}

#search customer
sub search_customer{
    print "\nEnter name of customer : ";
    chomp($customer_find_name= <STDIN>);

    foreach $name (@my_list){
        if(lc($customer_find_name) eq lc($name)){
            print "\n$name was found\n\n\n";
            return;
        }
    }
}