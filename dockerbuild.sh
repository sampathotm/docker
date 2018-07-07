cd /var/lib/jenkins/workspace/docker/

sudo docker rmi -f mycentos:httpdv1.0 .

sudo docker build -t mycentos:httpdv1.0 .

sudo mkdir /data

sudo docker stop web

sudo docker rm web

#########
sudo docker run -td -p 80:80 -v /data:/var/www/html --name=web mycentos:httpdv1.0
