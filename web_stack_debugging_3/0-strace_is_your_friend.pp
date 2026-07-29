# Configures Nginx to handle high-concurrency traffic loads without dropping requests
exec { 'modify-nginx-limit':
  command => '/bin/sed -i "s/15/2000/g" /etc/default/nginx; /usr/sbin/service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

