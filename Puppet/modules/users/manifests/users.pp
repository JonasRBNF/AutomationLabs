class users {

  $group = "IT"
  $username = "jonathan"

  group { "$group":
    ensure      => present
  }

  case $::osfamily {

    'Debian': {
      $password = '$1$kHXPMBj0$JZ/nMG9RFVQVELPyYqYT61'

      user { "$username":
        ensure          => present,
        home            => '/home/jonathan',
        shell           => '/bin/bash',
        groups          => "$group",
        managehome      => true,
        password        => "$password"
      }

    }

    'Windows': {
      $password = "password"

      user { "$username":
        ensure          => present,
        managehome      => true,
        groups          => ["$group", 'Users'],
        password        => "$password"
      }

    }

  }

}