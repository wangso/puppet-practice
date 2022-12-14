node default {
}

node 'puppetserver' {
  include role::master_server
}

node 'puppetclient1' {
  include role::app_server
}

node 'puppetclient2' {
  include role::db_server
}
