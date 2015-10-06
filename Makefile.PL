use strict;
use warnings;
use ExtUtils::MakeMaker;

use lib 'lib';
use Task::Munin ();
my $prereqs =  Task::Munin::get_prereqs();

WriteMakefile(
	NAME         => 'Task::Munin',
	AUTHOR       => q{Gabor Szabo <szabgab@cpan.org>},
	VERSION_FROM => 'lib/Task/Munin.pm',
	ABSTRACT_FROM => 'lib/Task/Munin.pm',
	( $ExtUtils::MakeMaker::VERSION >= 6.3002
		? ( 'LICENSE' => 'perl' )
		: () ),
	PL_FILES  => {},
	PREREQ_PM => $prereqs,
	META_MERGE => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type       => 'git',
				url        => 'http://github.com/szabgab/Task-Munin.git',
				web        => 'http://github.com/szabgab/Task-Munin',
				license    => 'http://dev.perl.org/licenses/',
			},
			bugtracker => {
				web        => 'http://github.com/szabgab/Task-Munin/issues',
			},
		},
	},

	dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
