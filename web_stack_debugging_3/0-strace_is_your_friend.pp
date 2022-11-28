# Apache returns 500; fix the error and automate it using puppet code

exec { 'change':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  provider => shell,
}
