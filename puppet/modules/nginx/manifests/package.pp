class nginx::package (
  $package_ensure = $nginx::params::package_ensure,
  $package_name   = $nginx::params::package_name,
) inherits nginx::params {
  package { $package_name:
    ensure  => $package_ensure,
  }
}
