# Increase worker_rlimit_nofile and worker_connections limit for Nginx
exec { 'fix--for-nginx':
  command => '/bin/sed -i "s/worker_processes 4;/worker_processes 4;\nworker_rlimit_nofile 65536;/g" /etc/nginx/nginx.conf;
              /bin/sed -i "s/worker_connections 768;/worker_connections 4096;/g" /etc/nginx/nginx.conf;
              /usr/sbin/service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

