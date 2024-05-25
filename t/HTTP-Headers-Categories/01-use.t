use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('HTTP::Headers::Categories');
}

# Test.
require_ok('HTTP::Headers::Categories');
