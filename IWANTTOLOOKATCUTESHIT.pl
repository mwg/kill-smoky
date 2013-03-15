#!/opt/local/bin/perl

use strict;
use warnings;

print "Getting Imgur links from Subreddit: aww\n";
#if(scalar(@ARGV) > 0)
#{
#	print "$ARGV[0]\n";
#	exit 0;
#}
`curl -L http://reddit.com/r/aww.rss >> new.html`;

my @imgurs=`grep -Eo 'http:[^&]+jpg' new.html | grep imgur`;

foreach my $pic (@imgurs){
	my $temp = $pic;
	$pic =~ s/http:[^&]+imgur.com\///g;
	#print $pic;
	#print $temp;
	$pic =~ s/^\s+|\s+$//g;
	$temp =~ s/^\s+|\s+$//g;
	print $pic;
	print $temp;
	`curl -0L $temp > $pic`;
	
}

`rm new.html`;

`open *.jpg`;
