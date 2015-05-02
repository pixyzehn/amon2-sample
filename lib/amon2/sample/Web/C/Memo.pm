package amon2::sample::Web::C::Memo;
use strict;
use warnings;
use utf8;

sub index {
  my ($class, $c) = @_;

  my $latest_text = $c->db->latest_text;
  my $list = $c->db->fetch_text_list;

  return $c->render( 'memo.tx', {
      latest_text => $latest_text,
      list => $list
  });
}

sub insert {
  my ($class, $c) = @_;
  my $text = $c->req->param('text');
  $c->db->insert_memo($text);
  return $c->redirect('/');
}

1;
