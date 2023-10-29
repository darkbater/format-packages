open(my $fh, '<:encoding(UTF-8)', "list.txt") or die "no list.txt";
while ($_ = <$fh>){
  #chomp $_;
  if(m/^([^\.]+)\.(x86_64|noarch|i686)\s+(\d+:)?([\d\w\._-]+)(\s*.*)$/){
    print("$1-$4.$2.rpm\n");
    }
  }
