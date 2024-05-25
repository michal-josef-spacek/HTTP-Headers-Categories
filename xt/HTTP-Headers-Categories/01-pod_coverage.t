use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('HTTP::Headers::Categories', 'HTTP::Headers::Categories is covered.');
