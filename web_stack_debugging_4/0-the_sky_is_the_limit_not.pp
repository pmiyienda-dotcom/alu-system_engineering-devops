# Optimizes Nginx file limits and max connections to handle extreme traffic load
exec { 'fix--for-nginx':
  command => '/bin/sed -i "s/^worker_connections.*/worker_connections 4096;/g" /etc/nginx/nginx.conf;
              /bin/sed -i "/worker_processes/a worker_rlimit_nofile 65536;" /etc/nginx/nginx.conf;
              /bin/echo "ULIMIT=\"-n 65536\"" >> /etc/default/nginx;
              /usr/sbin/service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}


