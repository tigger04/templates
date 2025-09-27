#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Std;

# Parse command-line options - only -o and -v are supported
my %opts;
getopts('ov', \%opts);

# Require at least one argument: the PATTERN
if (@ARGV < 1) {
    # die "Usage: $0 [-o] [-v] PATTERN [FILE...]\n";
}

my $pattern = shift @ARGV;
