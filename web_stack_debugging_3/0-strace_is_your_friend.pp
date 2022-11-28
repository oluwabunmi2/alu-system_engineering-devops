# Apache returns 500; fix the error and automate it using puppet code

exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => shell,
}
