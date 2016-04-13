class nginx::service (
  $package_name   = $nginx::params::package_name,
  $service_ensure = $nginx::params::service_ensure,
  $service_name   = $nginx::params::service_name,
) inherits nginx::params {
  service { $service_name:
    ensure   => $service_ensure,
    require  => Package[$package_name],
  }
}
