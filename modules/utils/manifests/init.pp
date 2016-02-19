class utils {
  package { ['git', 'vim', 'language-pack-zh-hans']:
    ensure => installed,
  }

  file { '/etc/vim/vimrc.local':
      ensure  => 'present',
      replace => 'no',
      content => template('utils/vimrc.erb'),
    }
}
