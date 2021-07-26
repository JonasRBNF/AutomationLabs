class nginx::installation {

  package { 'nginx':
    ensure      => installed
  }

}