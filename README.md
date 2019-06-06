#DNS-Frame

sudo docker build -t servidorDNS .
sudo docker run -p 5353:53 servidorDNS
