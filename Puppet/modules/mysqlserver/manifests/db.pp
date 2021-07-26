class mysqlserver::db {

  mysql::db { "$mysqlserver::db_name":
      user                => "$mysqlserver::db_user",
      password            => "$mysqlserver::db_password",
      host                => "$mysqlserver::db_client_ip",
      grant               => ['SELECT', 'UPDATE'],
      mysql_exec_path     => '/usr/bin'
  }

}