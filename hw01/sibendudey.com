server {
	listen 80;
	listen [::]:80;
	server_name sibendudey.com;


	location / {
        	root /var/www/sibendudey/public/;
        	index index.html;
		try_files $uri $uri/ =404;
        }

}

server	{
	listen 80;
	listen [::]:80;
	server_name www.sibendudey.com;

	location / {
	root /var/www/sibendudey/public/;
	index index.html;
	try_files $uri $uri/ =404;
	}

}




