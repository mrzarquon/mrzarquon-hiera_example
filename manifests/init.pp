class hiera_example (
  $secret_password = "something-secret",
  $custom_environment = "this should be set based on OS type",
) {
  file { '/example.txt':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => 0644,
    content => template('hiera_example/example.erb'),
  }
}
