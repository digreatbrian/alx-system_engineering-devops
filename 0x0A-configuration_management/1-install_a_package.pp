# Using Puppet, install flask from pip3
exec { 'install python packages':
     command   => 'pip3 install flask==2.1.0;pip3 install Werkzeug==2.1.1',
     path => ['/usr/bin/'],
  }
