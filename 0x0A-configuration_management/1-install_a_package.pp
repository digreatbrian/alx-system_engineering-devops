# Using Puppet, install flask from pip3
class myapp {
  pip { 'flask':
    version => '==2.1.0',
    ensure => 'present',
  }

  # Optional: Constrain Werkzeug version
  pip { 'werkzeug':
    version => '~=2.1.1',
  }
}
