# Optimizes Nginx file descriptors and worker settings to handle high concurrency
exec { 'fix--for-nginx':
  command => '/bin/sed -i "s/worker_connections.*/worker_connections 4096;/g" /etc/nginx/nginx.conf;
              /bin/sed -i "s/worker_processes.*/worker_processes 4;/g" /etc/nginx/nginx.conf;
              /bin/echo "worker_rlimit_nofile 65536;" >> /etc/nginx/nginx.conf;
              /bin/echo "ULIMIT=\"-n 65536\"" > /etc/default/nginx;
              /usr/sbin/service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}


