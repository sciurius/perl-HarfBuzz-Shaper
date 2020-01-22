#! perl

use strict;
use warnings;
use utf8;
use charnames ':full';

-d 't' && chdir 't';

use Test::More tests => 2;
BEGIN { use_ok('HarfBuzz::Shaper') };

my $hb = HarfBuzz::Shaper->new;

$hb->set_font('Lohit-Devanagari.ttf');
$hb->set_size(36);
$hb->set_text(
  "\N{DEVANAGARI LETTER TA}".
  "\N{DEVANAGARI LETTER MA}".
  "\N{DEVANAGARI VOWEL SIGN AA}".
  "\N{DEVANAGARI LETTER NGA}".
  "\N{DEVANAGARI SIGN VIRAMA}".
  "\N{DEVANAGARI LETTER GA}"
);
my $info = $hb->shaper;
#use DDumper; DDumper($info);
my $result = [
  {
    ax => '21.384',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 341,
    name => 'tadeva',
  },
  {
    ax => '20.34',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 351,
    name => 'madeva',
  },
  {
    ax => '9.36',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 367,
    name => 'aasigndeva',
  },
  {
    ax => '23.904',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 611,
    name => 'ngadeva_viramadeva_gadeva',
  },
];

is_deeply( $info, $result, "content" );
