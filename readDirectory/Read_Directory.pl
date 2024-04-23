#!/usr/bin/perl -w

opendir DIR, "~/Documents";

while ($filename = readdir (DIR) ) {
	print $filename, "\n";
}

closedir DIR;
