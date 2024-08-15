# Ensure that the WordPress directory has correct permissions
file { '/var/www/html/wordpress':
  ensure  => directory,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0755',
  recurse => true,
}

# Ensure the Apache configuration is correct (for example, setting correct ownership)
file { '/etc/apache2/apache2.conf':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

# Restart Apache to apply any changes
service { 'apache2':
  ensure  => running,
  enable  => true,
  require => File['/var/www/html/wordpress'],
}
