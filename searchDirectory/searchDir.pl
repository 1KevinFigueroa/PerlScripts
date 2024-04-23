#!/usr/bin/perl -w

use strict;

sub recurse ($) {
	my($path) = @_;

	##append a trailing / if it's not there
	$path .= '/' if ($path !~/\/$/);

	## print the directory being searched
	print $path,"\n";

	## loop through the files contained in the directory
	for my $eachfile (glob($path.'*')) {

		## if the file is a directory
		if ( -d $eachFile) {
		   ##pass the directory to the routine (recursion)
		   recurse ($eachFile);
		} else {

		## print the file ... tabled for readability
		print "\t", $eachFile,"\n";
		}
	}
}

## initial call ... $ARGV[0] is the first command line argument
recurse($ARGV[0]);
