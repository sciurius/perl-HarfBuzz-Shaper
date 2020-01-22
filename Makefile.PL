#! perl

use strict;
use warnings;
use ExtUtils::MakeMaker;

my $master = 'lib/HarfBuzz/Shaper/Version.pm';
my $version = MM->parse_version($master);

WriteMakefile(
 NAME                => 'HarfBuzz::Shaper',
 AUTHOR              => 'Johan Vromans <jv@cpan.org>',
 VERSION             => $version,
 ABSTRACT_FROM       => $master,
 LICENSE             => 'perl_5',
 PL_FILES            => {},
 LIBS                => ['-lharfbuzz'],
 INC                 => '-I/usr/include/harfbuzz',
 MIN_PERL_VERSION    => '5.010001',
 PREREQ_PM => {
     'ExtUtils::MakeMaker' => 6.46, # for META_MERGE, LICENSE
     'Test::More' => 0,
 },
 TEST_REQUIRES  => {
		   },
 META_MERGE => {
   resources    => {
     repository => {
       type => 'git',
	web  => 'https://github.com/sciurius/perl-HarfBuzz-Shaper',
	url  => 'https://github.com/sciurius/perl-HarfBuzz-Shaper.git',
      },
      bugtracker => "https://github.com/sciurius/perl-HarfBuzz-Shaper/issues",
     },
     'meta-spec' => {
       version => '2',
       url     => 'https://metacpan.org/pod/CPAN::Meta::Spec',
     },
     provides => {
	 "HarfBuzz::Shaper"
		  => { file => "lib/HarfBuzz/Shaper.pm",
		       version => $version },
     },

     no_index => {
         directory => [
	    "t",
	 ],
     },
 }


	     );

