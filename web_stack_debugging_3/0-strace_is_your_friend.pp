# Apache returns 500; fix the error and automate it

exec { 'fix-wordpress':
  command => "sed -i 's/.phpp/.php/' /var/www/html/wp-settings.php",
  path    => '/usr/local/bin/:/bin/'
