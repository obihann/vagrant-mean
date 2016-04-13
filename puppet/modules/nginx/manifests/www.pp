class nginx::www (
  $source       = '/vagrant/',
  $www          = $nginx::params::www,
  $file_ensure  = $nginx::params::file_ensure,
  $package_name = $nginx::params::package_name,
) inherits nginx {
  file { $www:
    ensure   => $symlink_ensure,
    target   => $source,
    force    => true,
    replace  => true,
    require  => Package[$package_name],
  }
}
