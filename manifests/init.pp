node default {
    exec { 'apt-update':
      command => '/usr/bin/apt-get update',
    }

    Exec["apt-update"] -> Package <| |>

    include stdlib
    include apt
    include users
    include utils
    include nginx
    include python
    include uwsgi

    class { '::mysql::server':
        root_password           => 'qwertyui',
        remove_default_accounts => true,
    }

    class { '::mysql::bindings':
        python_enable => true,
    }

    include '::mysql::server'
    include '::mysql::bindings'
    include '::mysql::client'
    include '::mongodb::server'
}
