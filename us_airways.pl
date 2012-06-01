#!/usr/bin/env perl
use strict;
use warnings;
use LWP::Simple qw/getstore/;
# Turn on in-place editing
BEGIN{ $^I = ""; }

while (<>) {
    # Be first class
    s/(top:222px;left:473px;font-size:24px">)&nbsp;</$1FIRST</g;

    # Upgrade to seating zone 1
    s/(top:207px;left:182px;font-size:24px">)\d</$1 1</;
    s/(top:92px;left:558px;font-size:8px">)\d</$1 1</;
    print;
}
