server {
	listen 80;
	listen [::]:80;
	server_name hw01.sibendudey.com;

	root /var/hw01/sibendudey/public;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}

	location /images/ {
        	try_files $uri /images/default.gif;
    	}
}
