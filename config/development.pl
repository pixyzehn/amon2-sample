use File::Spec;
use File::Basename qw(dirname);
+{
    'DBI' => [
        'dbi:mysql:sample', 'root', '',
        +{
            'mysql_enable_utf8' => 1,
        }
    ],
};
=put
my $basedir = File::Spec->rel2abs(File::Spec->catdir(dirname(__FILE__), '..'));
my $dbpath = File::Spec->catfile($basedir, 'db', 'development.db');
+{
    'DBI' => [
        "dbi:SQLite:dbname=$dbpath", '', '',
        +{
            sqlite_unicode => 1,
        }
    ],
};
=cut
