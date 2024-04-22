#!/usr/bin/perl -w

use strict;


@files = <*>;
foreach $file (@files) {
	print $file ."\n";
}