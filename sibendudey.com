server {
	listen 80;
	server_name sibendudey.com;


	location / {
        	root /var/www/sibendudey/public/;
        	index index.html;
        }

}

server	{
	listen 80;
	server_name www.sibendudey.com;

	location / {
	root /var/www/sibendudey/public/;
	index index.html;
	}

}




