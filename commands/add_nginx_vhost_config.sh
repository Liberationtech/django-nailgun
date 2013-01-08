. setup.sh

echo "server {
    client_max_body_size 50M;
    listen $PUBLIC_IP:80;
    server_name $DOMAINNAME;


    # no security problem here, since / is alway passed to upstream
    root $WORKSPACE;

    # serve directly - analogous for static/staticfiles
    location /static/ {
        # if asset versioning is used
        # autoindex on;
        if (\$query_string) {
            expires max;
        }

    #XXX REPLACE WITH YOUR STATIC FILES FOLDER
    alias $PROJECTMODULE/static/;
    }



    location /static/admin/ {
        # autoindex on;
        alias $VIRTUALENV/lib/python2.7/site-packages/django/contrib/admin/static/admin/;
    }

    location / {
        proxy_pass_header Server;
        proxy_set_header Host \$http_host;
        proxy_redirect off;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Scheme \$scheme;
        proxy_connect_timeout 10;
        proxy_read_timeout 10;
        proxy_pass http://localhost:$GUNICORNPORT/;
    }

    #TODO
    # what to serve if upstream is not available or crashes
    error_page 500 502 503 504 /media/50x.html;
}" > $NGINX_CONFIG

#enable this in nginx
sudo ln -s  $NGINX_CONFIG /etc/nginx/sites-available/$PROJECTNAME
sudo ln -s   /etc/nginx/sites-available/$PROJECTNAME /etc/nginx/sites-enabled/$PROJECTNAME
