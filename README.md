# HarfBuzz::Shaper

HarfBuzz::Shaper is a perl module that provides access to a small
subset of the native HarfBuzz library.

The subset is suitable for typesetting programs that need to deal with
complex languages like Devanagari.

This module is intended to be used with module L<Text::Layout>. Feel
free to (ab)use it for other purposes.

## INSTALLATION

Please read document INSTALL first.

To install this module type the following:

    perl Makefile.PL
    make
    make test
    make install

## SUPPORT AND DOCUMENTATION

Development of this module takes place on GitHub:
https://github.com/sciurius/perl-HarfBuzz-Shaper.

You can find documentation for this module with the perldoc command.

    perldoc HarfBuzz::Shaper

Please report any bugs or feature requests using the issue tracker on
GitHub.

HarfBuzz website and documentation: https://harfbuzz.github.io/index.html.

## COPYRIGHT AND LICENCE

Copyright (C) 2020 by Johan Vromans

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

The source for the HarfBuzz library may be included in this kit, and
is licenced according to hb_src/harfbuzz/COPYING.
