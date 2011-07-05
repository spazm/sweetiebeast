package sweetiebeast;
use Dancer ':syntax';

our $VERSION = '0.1';

set auto_page => 1;

get '/' => sub {
    template 'index';
};

true;
