# Puppet manifest to fix a typo in the WordPress core configuration causing Apache 500 error

exec { 'fix-wordpress':
  command => '/bin/sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/bin/grep -q "class-wp-locale.phpp" /var/www/html/wp-settings.php',
}


