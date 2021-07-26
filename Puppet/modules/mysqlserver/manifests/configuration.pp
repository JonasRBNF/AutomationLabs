class mysqlserver::configuration {

  file { '/etc/mysql/my.cnf':
      owner       => 'root',
      group       => 'root',
      source      => 'puppet:///modules/mysqlserver/my.cnf'
  }

  include mysqlserver::db

}