use Module::Build;

my $build = Module::Build->new(
	module_name  => 'Mail::Action::Role::Purge',
    script_files => [ qw|
        bin/mail_tempaddress_purge.pl
        bin/mail_simplelist_purge.pl
    |],
	license      => 'perl',
	requires     => {
		Mail::Action      => '0.20',
        Class::Roles      => '0.30',
        Mail::TempAddress => '0.55',
        Mail::SimpleList  => '0.85',
	},
	dist_version => '0.10',
);

$build->create_build_script;
