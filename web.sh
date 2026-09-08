#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2

sudo systemctl enable apache2
sudo systemctl start apache2

sudo rm -f /var/www/html/index.html

sudo tee /var/www/html/index.html > /dev/null <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Project 3</title>
</head>
<body>
    <h1>Terraform Provisioners Demo</h1>
    <p>Apache was provisioned using Terraform file and remote-exec provisioners.</p>
    <p>Project: Terraform Parameterized AWS Infrastructure</p>
</body>
</html>
EOF