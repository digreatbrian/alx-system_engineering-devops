file { '/etc/nginx/nginx.conf':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => template('nginx-replace/nginx.conf.erb'),
  notify  => Service['nginx'],
}

