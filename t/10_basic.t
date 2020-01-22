#! perl

use strict;
use warnings;
use utf8;

-d 't' && chdir 't';

use Test::More tests => 2;
BEGIN { use_ok('HarfBuzz::Shaper') };

my $hb = HarfBuzz::Shaper->new;

$hb->set_font('LiberationSans.ttf');
$hb->set_size(36);
$hb->set_text("Hell€!");
my $info = $hb->shaper;

my $result = [
  {
    ax => '25.992',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 4,
    name => 'H',
  },
  {
    ax => '20.016',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 5,
    name => 'e',
  },
  {
    ax => '7.992',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 6,
    name => 'l',
  },
  {
    ax => '7.992',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 6,
    name => 'l',
  },
  {
    ax => '20.016',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 8,
    name => 'Euro',
  },
  {
    ax => '10.008',
    ay => 0,
    dx => 0,
    dy => 0,
    g => 3,
    name => 'exclam',
  },
];

is_deeply( $info, $result, "content" );
