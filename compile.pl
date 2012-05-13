use strict;
use warnings;

use utf8;
use YAML::XS;
use HTML::Template;
use HTML::TreeBuilder;

binmode STDOUT, ":utf8";

my $template = HTML::Template->new(filename => 'default.tmpl', loop_context_vars => 1, utf8 => 1);
my $data = YAML::XS::LoadFile('index.yaml');
$template->param($data);
print $template->output();


