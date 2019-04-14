#!/usr/bin/perl -w
use strict;

my ($list) = @ARGV;

open LIST, $list or die "$!";
my $i = 0;
while(<LIST>){
    chomp;
    next if !/Rmd/ || /#/;
    my @file = <*$_>;
    my $index = sprintf("%02d", $i);
    my $new_file = $_;
    $new_file =~ s/^\d+_//g;
    print "mv $file[0] $index\_$new_file\n";
    ++$i;
}

