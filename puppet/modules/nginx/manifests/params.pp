class nginx::params {
  $package_ensure = 'present'
  $package_name   = 'nginx'
  $service_ensure = 'running'
  $service_name   = $package_name
  $symlink_ensure = 'link'
  $file_ensure    = 'present'
  $www            = '/usr/share/nginx/www'
  $conf_source    = 'puppet:///modules/nginx/nginx.conf'
}
