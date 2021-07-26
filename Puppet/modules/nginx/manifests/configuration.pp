class nginx::configuration {

  include nginx::game_installation

  file { '/etc/nginx/sites-available/default':
    owner       => 'root',
    group       => 'root',
    source      => 'puppet:///modules/nginx/default'
  }

  service { 'nginx':
    ensure      => running,
    require     => Package['nginx'],
    subscribe   => File['/etc/nginx/sites-available/default']
  }

}