package amon2::sample::DB::Schema;
use strict;
use warnings;
use utf8;

use Teng::Schema::Declare;

base_row_class 'amon2::sample::DB::Row';

table {
    name 'memos';
    pk 'id';
    columns qw(id text created_at updated_at);
};

1;
