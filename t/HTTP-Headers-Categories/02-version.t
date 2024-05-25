use strict;
use warnings;

use HTTP::Headers::Categories;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($HTTP::Headers::Categories::VERSION, 0.01, 'Version.');
