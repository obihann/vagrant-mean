class nginx (
  $package_ensure = $nginx::params::package_ensure,
  $package_name   = $nginx::params::package_name,
  $service_ensure = $nginx::params::service_ensure,
  $service_name   = $nginx::params::service_name,
  $web_source     = $nginx::params::web_source,
  $file_ensure    = $nginx::params::file_ensure,
  $symlink_ensure = $nginx::params::symlink_ensure,
  $conf_source    = $nginx::params::conf_source,
) inherits nginx::params {
  class {'::nginx::package':
    package_ensure => $package_ensure,
    package_name   => $package_name,
  }

  class {'::nginx::service':
    package_name   => $package_name,
    service_ensure => $service_ensure,
    service_name   => $service_name,
  }

  class {'::nginx::conf':
    file_ensure    => $file_ensure,
    package_name   => $package_name,
    service_name   => $service_name,
    conf_source    => $conf_source,
  }
}

