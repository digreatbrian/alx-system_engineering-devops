# replacing /etc/nginx/nginx.conf with the updated config

file { '/etc/nginx/nginx.conf':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => file('/home/ubuntu/alx-system_engineering-devops/0x1A-application_server/2-app_server-nginx_config'),
  notify  => Service['nginx'],
}
