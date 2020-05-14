my $file = "input.txt";

if(-e $file){
    open FILE, "$file" or die $!;
    my $w;
    print("\n");
    while(<FILE>){
        $w = "$_";
        chomp($w);
        if($w=~m/or/){
            print "$w contains or \n";
        }
        if($w=~m/^(?![hH])/){
            print "$w does not start with h\n";
        }
        if($w=~m/.[e]/ && $w=~/y$/){
            print "$w has e as the second symbol and ends with y \n";
        }
        if($w=~m/[a-z]/ && $w=~m/[0-9]/){
            print "$w contains both letters and digits \n";

        }
        if($w=~m/[aeiou].*?[aeiou]/){
            print "$w contains at least two vowel letters \n";
        }
    }
}
else{
    print "$file : does not exist\n";
}