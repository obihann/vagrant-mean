Class['apt::update'] -> Package <| provider == 'apt' |>

class base::params {
  $package_ensure = 'installed'
  $path           = '/usr/bin/'
}

class base (
  $package_ensure = $base::params::package_ensure,
) inherits base::params {
  package { 
    [
        'build-essential',
        'python-software-properties',
        'zip',
        'git',
    ]:
    ensure  => $package_ensure,
  }
}

include base
include nginx
include nodejs
