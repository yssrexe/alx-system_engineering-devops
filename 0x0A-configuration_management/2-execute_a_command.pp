# create a manifest that kills a process named killmenow
exec { 'killmenow':
  command     => '/usr/bin/pkill killmenow',
  path        => ['/bin', '/usr/bin'],
  refreshonly => true,
  subscribe   => File['killmenow_script'],
}

file { 'killmenow_script':
  path    => '/path/to/killmenow',
  ensure  => 'present',
  content => '#!/bin/bash\nwhile [[ true ]]; do\nsleep 2\ndone\n',
  mode    => '0755',
}
