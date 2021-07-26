class nginx::game_installation {

  file { '/var/www/game':
    ensure      => directory,
    mode        => '0766'
  }

  package { 'git':
    ensure      => installed
  }

  vcsrepo { '/var/www/game':
    provider    => git,
    source      => 'https://github.com/JonasRBNF/Game.git',
    user        => 'root'
  }

}