# fix nginx to accept and serve more requests

exec { 'nginx requests limit':
  command => 'sed -i "s/15/1000/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

#Restart NginX
exec { 'restart nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
