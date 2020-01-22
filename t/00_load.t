#! perl

use strict;
use warnings;

use Test::More tests => 1;
BEGIN { use_ok('HarfBuzz::Shaper') };

diag( "Testing HarfBuzz::Shaper $HarfBuzz::Shaper::VERSION, Perl $], $^X" );
