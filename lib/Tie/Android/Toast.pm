package Tie::Android::Toast;
use strict;
use warnings;
use base 'Tie::Handle';
use Android;

our $VERSION = '0.01';

my $android;

sub TIEHANDLE {
	my $package = shift;
	my $handle = shift;
	$android = Android->new;
	bless(\$handle, $package);
}

sub WRITE {
	my ($self, $scalar, $length, $offset) = @_;
	$android->makeToast($scalar);
}

1;
__END__

=head1 NAME

Tie::Android::Toast - Redirect STDOUT to Toast

=head1 SYNOPSIS

  use Tie::Android::Toast;
  
  tie local *STDOUT, 'Tie::Android::Toast';
  
  print 'Hello, World';# Android->new->makeToast('Hello, World');

=head1 DESCRIPTION

This module redirects writing in STDOUT to Android::makeToast().

=head1 AUTHOR

Hideaki Ohno E<lt>hide.o.j55 {at} gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
