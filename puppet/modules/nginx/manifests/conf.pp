class nginx::conf (
  $file_ensure    = $nginx::params::file_ensure,
  $package_name = $nginx::params::package_name,
  $service_name = $nginx::params::service_name,
  $conf_source    = $nginx::params::conf_source,
) inherits nginx::params {
  file { '/etc/nginx/nginx.conf':
    ensure   => $file_ensure,
    source   => $conf_source,
    notify   => Service[$service_name],
    require  => Package[$package_name],
  }
}
