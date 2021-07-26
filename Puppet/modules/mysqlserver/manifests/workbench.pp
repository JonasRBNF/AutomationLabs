class mysqlserver::workbench {

  package { 'prerequisites':
    ensure              => installed,
    source              => "$mysqlserver::visualstudio_prerequisites_url",
    install_options     => ['/q']
  }

  package { 'mysql-workbench':
    source              => "$mysqlserver::mysql_workbench_url",
    install_options     => ['/q'],
    require             => Package['prerequisites']
  }

}
