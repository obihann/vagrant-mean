Class['apt::update'] -> Package <| provider == 'apt' |>

package { [
  'mongodb',
  'mongodb-server',
]:
  ensure  => 'installed',
}

class { 'nodejs::modules':
  node_modules => [
    'express',
    'gulp-cli',
  ]
}
