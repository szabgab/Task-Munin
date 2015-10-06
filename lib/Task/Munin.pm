package Task::Munin;
use strict;
use warnings;
use 5.008005;

our $VERSION = '0.01';

=head1 SYNOPSIS

Task::Munin - an unoffical module listing the dependencies of Munin

=head1 DESCRIPTION

L<Munin|http://munin-monitoring.org/>

=head1 AUTHOR

L<Gabor Szabo|http://szabgab.com/>

=cut


sub get_prereqs {
	open my $fh, '<', 'modules.txt' or die 'Could not open modules.txt';
	my @modules = <$fh>;
	close $fh;
	chomp @modules;
	return { map { split /\s*=\s*/ } @modules };
}

1;

