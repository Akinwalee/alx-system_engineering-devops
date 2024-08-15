#Ensure the WordPress directory has the correct permissions
file { '/var/www/html/wordpress':
  ensure  => directory,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0755',
  recurse => true,
}

# Ensure Apache service is running
service { 'apache2':
  ensure => running,
  enable => true,
}
