package amon2::sample::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;
use amon2::sample::Web::C::Memo;

base 'amon2::sample::Web::C';

#Memo
any '/' => 'Memo#index';
post '/insert' => 'Memo#insert';


1;
