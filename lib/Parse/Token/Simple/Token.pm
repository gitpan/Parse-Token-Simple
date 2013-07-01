package Parse::Token::Simple::Token;
use Moo;

our $VERSION = '0.100'; # VERSION
# ABSTRACT: Token class


has data=>(is=>'rw');


has rule=>(is=>'rw');




1;

__END__

=pod

=head1 NAME

Parse::Token::Simple::Token - Token class

=head1 VERSION

version 0.100

=head1 ATTRIBUTES

=head2 data

returns current matched string.

=head2 rule

returns current matched rule.

=head1 AUTHOR

khs <sng2nara@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by khs.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
