class users {
    group { 'www-flask':
        ensure => present,
    }

    user { 'www-flask':
        ensure => present,
        groups => ['www-flask'],
        membership => minimum,
        shell => "/bin/bash",
        require => Group['www-flask']
    }
}
