use strict;
use warnings;
use Test::More;


use amon2::sample;
use amon2::sample::Web;
use amon2::sample::Web::View;
use amon2::sample::Web::ViewFunctions;

use amon2::sample::DB::Schema;
use amon2::sample::Web::Dispatcher;


pass "All modules can load.";

done_testing;
