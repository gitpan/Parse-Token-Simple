use strict;
use warnings;
use lib qw(./lib);
use Test::More tests => 15;                      # last test to print
use Data::Printer;

BEGIN{
	use_ok("Parse::Token::Simple");
}

my $rules = {
    MAIN=>[
        {name=>'CHR', re=>qr/./}    
    ],
};

my $lexer = Parse::Token::Simple->new(rulemap=>$rules);
eval{ 
	$lexer->from("hello world");
};

fail('Check Implemented') if $@;

my @r;

@r = $lexer->nextToken;
is ($r[0]->rule->name, 'CHR');
is ($r[0]->data, 'h');

@r = $lexer->nextToken;
is ($r[0]->data, 'e');

@r = $lexer->nextToken;
is ($r[0]->data, 'l');

@r = $lexer->nextToken;
is ($r[0]->data, 'l');

@r = $lexer->nextToken;
is ($r[0]->data, 'o');

@r = $lexer->nextToken;
is ($r[0]->data, ' ');

@r = $lexer->nextToken;
is ($r[0]->data, 'w');

@r = $lexer->nextToken;
is ($r[0]->data, 'o');

@r = $lexer->nextToken;
is ($r[0]->data, 'r');

@r = $lexer->nextToken;
is ($r[0]->data, 'l');

is $lexer->eof,0,'check EOF';

@r = $lexer->nextToken;
is ($r[0]->data, 'd');

is $lexer->eof,1,'check EOF';

done_testing;
