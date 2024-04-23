#!/usr/local/bin/perl -w

#$path = shift;
$path = "." unless $path;

opendir( DIR, $path ) || die "Can't open $path: $!";

while ( $entry = readdir ( DIR ) ) {
	$type = ( -d "$path\\$entry" ) ? "dir" : "file";
	print "$type\t$entry\n";
}