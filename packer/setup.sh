#/bin/sh

sudo yum update -y
sudo yum install wget git epel-release -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install httpd -y 
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1> Hello World v0.04 \n demo-0.0.1-SNAPSHOT.jar </h1>" > index.html
sudo cp index.html /var/www/html
sudo cp /tmp/demo-0.0.1-SNAPSHOT.jar  /home/ec2-user/
java -jar demo-app-v1.jar
 