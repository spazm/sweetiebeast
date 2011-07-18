package sweetiebeast;
use Dancer ':syntax';
use Dancer::Plugin::ProxyPath;

our $VERSION = '0.2';

set auto_page => 1;
get '/' => sub { template 'index'; };

before_template sub {
    my $tokens = shift;
    $tokens->{uri_base}           = proxy->uri_for("/");
    $tokens->{uri_for_index}      = proxy->uri_for("/");
    $tokens->{uri_for_faq}        = proxy->uri_for("/faq");
    $tokens->{uri_for_location}   = proxy->uri_for("/location");
    $tokens->{uri_for_travel}     = proxy->uri_for("/travel");
    $tokens->{uri_for_guests}     = proxy->uri_for("/guests");
    $tokens->{uri_for_images}     = proxy->uri_for("/images");
};


true;
