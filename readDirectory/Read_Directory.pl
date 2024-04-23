#!/usr/bin/perl -w

opendir DIR, "C:";

while ($filename = readdir (DIR) ) {
	print $filename, "\n";
}

closedir DIR;
