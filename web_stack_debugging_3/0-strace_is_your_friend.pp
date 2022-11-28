# Apache returns 500; use the script to fix typo in config
exec { 'change':
    command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
    provider => shell,
}
