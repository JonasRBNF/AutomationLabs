class mysqlserver {

  $mysql_server_url = "https://dev.mysql.com/get/mysql-apt-config_0.8.18-1_all.deb"
  $mysql_workbench_url = "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.26-winx64.msi"
  $visualstudio_prerequisites_url = "https://aka.ms/vs/16/release/VC_redist.x64.exe"
  $db_name = "database1"
  $db_user = "admin"
  $db_client_ip = "192.168.20.6"
  $db_password = "password"

# Install MySQL server on node 1
  if $::hostname == 'puppetnode1' {

    include mysqlserver::installation
    include mysqlserver::configuration

  }

# Install MySQL Workbench on all Windows machines
  if $::osfamily == 'Windows' {

    include mysqlserver::workbench

  }

}