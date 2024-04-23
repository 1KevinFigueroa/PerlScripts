#!/usr/bin/perl -w
use strict;
use warnings;
use File::Find;
use Digest::MD5;


###################################################################
# find_dups(@dir_list) -- Return an array containing a list
#         of duplicate files.
##################################################################

sub find_dups(@)
{
    # The list of directories to search
    my @dir_list = @_;

    # If nothing there, return nothing
    if ($#dir_list < 0) {
	return (undef);
    }

    my %files; # Files indexed by size

    # Go Through the file tree and find all
    # files with a similar size
    find( sub {
	     -f &&
	     push @{$files{(stat())[7]}}, $File::Find::name
	}, @dir_list
    );

    my @result = ();  #The resulting list

    # Now loop through the list