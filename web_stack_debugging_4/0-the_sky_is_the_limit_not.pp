# Testing how well our web server setup featuring Nginx is doing under pressure
# fix stack so that it get to 0
exec {'modify max open files limit setting':
  command => 'sed -i "s/15/10000/" /etc/default/nginx && sudo service nginx restart',
   path => shell,
}
