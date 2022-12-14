node default {
}

node 'puppetserver' {
  include role::master_server
  file {'/root/readme':
    ensure => file,
    content => " This is node ${fqdn}",
  }
}

node 'puppetclient1' {
  include role::app_server
  file {'/root/readme':
    ensure => file,
    content => " This is node ${fqdn}",
  }
}

node 'puppetclient2' {
  include role::db_server
  file {'/root/readme':
    ensure => file,
    content => " This is node ${fqdn}",
  }
}
