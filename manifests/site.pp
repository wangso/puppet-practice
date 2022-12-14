node default {
  file { '/root/README':
    ensure => file,
    content => 'puppetserver readme',
  }
}

node puppetclient1 {
  file {'/root/puppetclient':  
    ensure  => file,
    content => 'puppetclient 1 readme',
  }
}

node puppetclient2 {
  file {'/root/puppetclient2':
    ensure  => file,
    content => 'puppetclient 2 readme',
  }
}
