class mysqlserver::installation {

  archive { '/root/mysql.deb':
    ensure      => present,
    source      => "$mysqlserver::mysql_server_url"
  }

  package { '/root/mysql.deb':
    provider    => dpkg,
    ensure      => present,
    source      => '/root/mysql.deb'
  }

  exec { 'apt-get update':
    path        => '/bin',
    command     => 'sudo apt-get update -y'
  }

  exec { 'apt-get upgrade':
      path      => '/bin',
      command   => 'sudo apt-get dist-upgrade -y'
  }

  package { 'mysql-server':
      ensure    => latest
  }

}