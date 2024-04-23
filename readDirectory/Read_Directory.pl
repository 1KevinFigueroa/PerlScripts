#!/usr/bin/perl -w

opendir DIR, "/";

while ($filename = readdir (DIR) ) {
	print $filename, "\n";
}

closedir DIR;
