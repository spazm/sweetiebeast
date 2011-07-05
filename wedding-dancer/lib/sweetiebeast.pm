package sweetiebeast;
use Dancer ':syntax';
#use Dancer::Plugin::ProxyPath;

our $VERSION = '0.2';

set auto_page => 1;
get '/' => sub { template 'index'; };

before_template sub {
    my $tokens = shift;
    $tokens->{uri_base}           = request->base->path;
    $tokens->{uri_for_directions} = request->uri_for("/directions");
    $tokens->{uri_for_faq}        = request->uri_for("/faq");
    $tokens->{uri_for_index}      = request->uri_for("/");
    $tokens->{uri_for_location}   = request->uri_for("/location");
    $tokens->{uri_for_travel}     = request->uri_for("/travel");
};


true;
