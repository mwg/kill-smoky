#!/opt/local/bin/perl

use strict;

print "Removing untracked files...\n";
`git clean -d -x -f`;

print "Reverting modified files...\n";
my @gitstatus = `git status`;

foreach my $line (@gitstatus){
    if($line =~ /modified:\s+(.+)/){
        print "Reverting $1...\n";
        `git checkout $1`;
    }
}