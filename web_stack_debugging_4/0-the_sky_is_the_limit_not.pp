#!/usr/bin/env bash
# Testing how well our web server setup featuring Nginx is doing under pressure
# fix stack so that it get to 0
exec { 'nginx server':
  command => "/bin/echo ulimit='-n 1000' | sudo tee /etc/default/nginx && sudo service nginx restart"
}
