#!/usr/bin/env perl

use strict;
use warnings;
use Syntax::Highlight::Engine::Kate;
use 5.010;

my @styles = qw(Alert BaseN BString Char Comment DataType DecVal Error Float
        Function IString Keyword Operator Others RegionMarker Reserved String
        Variable Warning );

my $hl = Syntax::Highlight::Engine::Kate->new(
    language => (shift || 'Perl'),
    substitutions => {
        '<'  => '&lt;',
        '>'  => '&gt;',
        '&'  => '&amp;',
#        " "  => "&nbsp;",
#        "\t" => "&nbsp;&nbsp;&nbsp;",
#        "\n" => "<BR>\n",
    },
    format_table => {
        Normal       => [ "", "" ],
        (map { $_ => [ qq{<span class="syn$_">}, '</span>' ] } @styles)
    },
);

while ( my $in = <> ) {
    print $hl->highlightText($in);
}
