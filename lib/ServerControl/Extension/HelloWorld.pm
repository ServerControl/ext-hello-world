package ServerControl::Extension::HelloWorld;

use strict;
use warnings;

our $VERSION = '0.1.0';

use ServerControl::Extension;
use base qw(ServerControl::Extension);

__PACKAGE__->register('before_start', sub { shift->before_start(@_); });
__PACKAGE__->register('after_stop',   sub { shift->after_stop(@_); });


sub before_start {
   my ($class, $sc) = @_;

   print "Hello World. Starting now your Service...\n";
   print "\t-> " . ServerControl::Args->get->{'name'} . "\n";
}

sub after_stop {
   my ($class, $sc) = @_;

   print "Hello World. Stopping now your Service...\n";
   print "\t-> " . ServerControl::Args->get->{'name'} . "\n";
}

1;
