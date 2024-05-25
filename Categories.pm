package HTTP::Headers::Categories;

use parent qw(Exporter);
use strict;
use warnings;

use Error::Pure qw(err);
use Readonly;

Readonly::Hash our %CATEGORIES => (
	'cache' => [
		'Cache-Control',
		'ETag',
		'Expires',
		'If-Match',
		'If-Modified-Since',
		'If-None-Match',
		'If-Unmodified-Since',
		'Last-Modified',
		'Pragma',
		'Vary',
	],
	'client_info' => [
		'DNT',
		'From',
		'Referer',
		'User-Agent',
		'X-Requested-With',
	],
	'connection' => [
		'Connection',
		'Host',
		'Keep-Alive',
		'TE',
		'Transfer-Encoding',
		'Upgrade',
	],
	'control' => [
		'Content-Encoding',
		'Content-Language',
		'Content-Length',
		'Content-Location',
		'Content-MD5',
		'Content-Range',
		'Content-Type',
	],
	'login' => [
		'Authorization',
		'Cookie',
		'Proxy-Authorization',
		'Proxy-Authenticate',
		'Set-Cookie',
		'WWW-Authenticate',
	],
	'negotiation' => [
		'Accept',
		'Accept-Language',
		'Accept-Encoding',
		'Purpose',
	],
	'proxy' => [
		'X-Forwarded-For',
		'X-Forwarded-Host',
		'X-Forwarded-Port',
		'X-Forwarded-Proto',
		'X-Forwarded-Ssl',
		'X-Original-Uri',
		'X-Real-Ip',
	],
	'security' => [
		'Content-Security-Policy',
		'Cross-Origin-Embedder-Policy',
		'Cross-Origin-Opener-Policy',
		'Cross-Origin-Resource-Policy',
		'Feature-Policy',
		'Permissions-Policy',
		'Referrer-Policy',
		'Sec-Ch-Ua',
		'Sec-Ch-Ua-Platform',
		'Sec-Ch-Ua-Mobile',
		'Sec-Fetch-Dest',
		'Sec-Fetch-Mode',
		'Sec-Fetch-Site',
		'Sec-Fetch-User',
		'Sec-Purpose',
		'Sec-WebSocket-Key',
		'Strict-Transport-Security',
		'Upgrade-Insecure-Requests',
		'X-Content-Type-Options',
		'X-Frame-Options',
		'X-XSS-Protection',
	],
);

our $VERSION = 0.01;

sub categories {
	return sort keys %CATEGORIES;
}

sub category_items {
	my $category = shift;

	if (! exists $CATEGORIES{$category}) {
		err "Category '$category' doesn't exist.";
	}

	return @{$CATEGORIES{$category}};
}

1;
