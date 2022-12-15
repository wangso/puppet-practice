class profile::ssh_server {
  package {'openssh-server':
    ensure => 'present', 
  }
  server {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@puppetserver':
    ensure => 'present',
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCoYQ/ROk0BaUE6COTJ2iYfoLXpiioQkDefefuIqnewqqhgS0iaVSm4D1r2/N88OFR/A1FIuR6aCv56YngmMmy0AEOjIoAgEkYorFOx2BASVM4pmJ8cplhxLKLF8B50KypU1TAAtl2XPkiKXE+EIwIa5hKR8vQ2Lq/Aad3LGSl4CYabTbebB+TYX5ABd7R7c8a2xD2vzV/9YY9NhIrmaN/XTAatAN/4qYsx+YrTx7ABVYr3zRXv0LNTRlLIwHxxHiSZ3azi3MaxON1U2Z9hxxywKrwkCPsoIBJS2NJZXXh6jyAqnHaT2FwN3+HjGgJ0B3N++fPw4l00D/LEOuhtfpBIzxoDhnPZEFtyu4xaim3Ew5WROra9/FV7VOZL82c3zGbDLcuTQAirnD7rJwy4NrGlI0vrEEmBM18miYLgKYfj/+pSDMrXvgqfa2me/cGzHPV6Fkh6jouuKQqmbIeCcksYWm5CRUtyAh23+p/J6RiGeTr86/tA7R1hMt7rHA4yIr8=',
}
