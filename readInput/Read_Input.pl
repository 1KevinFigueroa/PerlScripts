#!/usr/bin/perl -w

$windir = $ENV{"WINDIR"};
opendir(NT, $windir) || die "no $windir?: $!";
	foreach $name (sort readdir(NT)) {
		print "$name/n";
	}
closedir(NT);
