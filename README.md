#DNS-Frame
sudo docker build -t prueba-dns .
sudo docker run -p 5353:53 --dns 127.0.0.1  prueba-dns 
