class myfacts {
  file { '/etc/facter/facts.d/purpose.rb':
    ensure   => 'file',
    group    => 0,
    mode     => 'ug=rwx',
    owner    => 0,
    source => "puppet:///modules/myfacts/purpose.rb"
}
}
node default {
  include myfacts
}
