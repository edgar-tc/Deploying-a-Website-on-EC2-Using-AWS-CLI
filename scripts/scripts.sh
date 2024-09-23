Configuring AWS CLI 
To configure the AWS CLI with your credentials and region:
aws configure

Launching an EC2 Instance
To launch a t2.micro EC2 instance using the AWS CLI:
aws ec2 run-instances --image-id ami-xxxxxx --count 1 --instance-type t2.micro --key-name demo.pem --security-group-ids sg-062d8ae210f3340a7 --subnet-id subnet-03909361afaf37447

Obtaining the Public IP Address
To retrieve the public IP address of the EC2 instance:
aws ec2 describe-instances --query "Reservations[*].Instances[*].PublicIpAddress" --output text.

Connecting to the EC2 Instance via SSH
To connect to the EC2 instance using SSH:
ssh -i "demo.pem" ec2-user@<Public-IP-Address>

User-Data Script for Apache Installation
To automate the installation of Apache and start the service, the user-data script includes the following commands:
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

Open a terminal on your Ubuntu server.

Navigate to the /var/www/ directory
cd /var/www/

Create the “mywebsite” directory:
sudo mkdir mywebsite

Navigate to the Directory: Open a terminal and change to the “mywebsite” directory:
cd /var/www/mywebsite

Create Your HTML File: Create an index.html file (or any other name you prefer) using a text editor. For example:
nano index.html

Edit Your HTML Content: Inside the index.html file, add your HTML content

Save and Exit: Save the changes (usually Ctrl+O) and exit the text editor (usually Ctrl+X).

Test Your Website: Open a web browser and enter your server’s IP address or domain name. You should see your sample webpage.



