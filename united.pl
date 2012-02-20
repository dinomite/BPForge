#!/usr/bin/env perl
use strict;
use warnings;
use LWP::Simple qw/getstore/;
# Turn on in-place editing
BEGIN{ $^I = ""; }

my $boardingDocumentsDir = './Boarding documents_files';
my $printHTML = $boardingDocumentsDir . '/print.html';

my $seatingGroupURL = 'https://travel.united.com/web/common/images/BP_1.gif';

# Get the seating group 1 image
getstore($seatingGroupURL, $boardingDocumentsDir . '/BP_1.gif');

@ARGV = ($printHTML);
while (<>) {
    # Add the "Premier line" text
    s/(eco-bp-premier4?-text">)/$1Premier line/g;
    # Upgrade to seating group 1
    s/BP_[2-4].gif/BP_1.gif/g;
    print;
}
