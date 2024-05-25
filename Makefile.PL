use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Categories for HTTP header items.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.03;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'HTTP-Headers-Categories';
perl_version 5.008;
readme_from 'Categories.pm';
recursive_author_tests('xt');
requires 'Error::Pure' => 0.07;
requires 'Exporter' => 0;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/HTTP-Headers-Categories/issues';
resources 'homepage' => 'https://github.com/michal-josef-spacek/HTTP-Headers-Categories';
resources 'repository' => 'git://github.com/michal-josef-spacek/HTTP-Headers-Categories';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.02';

# Run.
WriteAll();
