#!/bin/bash
 
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
export INSTANCE_ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
echo "<html><body><h1>Hello from  Web App at instance <b>"$INSTANCE_ID"</b></h1></body></html>" >> /var/www/html/index.html