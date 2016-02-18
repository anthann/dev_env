class utils {
  package { ['git', 'vim', 'language-pack-zh-hans']:
    ensure => installed,
  }

  file { '~/.vimrc':
      ensure  => 'present',
      replace => 'no',
      content => template('utils/vimrc.erb'),
    }
}
