node 'default' {

  include users
  include mysqlserver

}

node 'puppetnode1.puppet.com' {

  include users
  include nginx
  include mysqlserver

}