# Using Puppet, install flask from pip3
class myapp {
  include python
  include python::pip

  pip { 'flask':
    ensure => 'present',
  }
}
