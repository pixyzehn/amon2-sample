package amon2::sample::DB::Schema;
use strict;
use warnings;
use utf8;

use Teng::Schema::Declare;

base_row_class 'amon2::sample::DB::Row';

table {
    name 'member';
    pk 'id';
    columns qw(id name);
};

1;
