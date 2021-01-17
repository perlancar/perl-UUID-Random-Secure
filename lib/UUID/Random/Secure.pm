package UUID::Random::Secure;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;
use Math::Random::Secure qw(irand);

sub generate {
    sprintf(
        "%08x-%04x-%04x-%04x-%04x%08x",
        irand(),
        irand(2**16),
        irand(2**16),
        irand(2**16),
        irand(2**16),
        irand(),
    );
}

1;
# ABSTRACT: Like UUID::Random, but uses Math::Random::Secure for random numbers

=head1 SYNOPSIS

Use like you would L<UUID::Random>:

 use UUID::Random::Secure;
 say UUID::Random::Secure::generate();


=head1 DESCRIPTION


=head1 SEE ALSO

L<UUID::Random>

L<Math::Random::Secure>

=cut
