use strict;
use warnings;

use lib 'lib';

use Test::More;
use Task::Munin ();
my $prereqs =  Task::Munin::get_prereqs();

plan tests => scalar(keys %$prereqs) - 1;
foreach my $module (sort keys %$prereqs) {
	next if $module eq 'perl';
	eval "use $module"; # $prereqs-{$module}";
	is $@, '';
}

