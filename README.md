
# Create a 2-Tier Application Using Terraform


## Description

-  This project aims to create an ec2 instance in a public subnet and an rds instance in a private subnet in the same vpc and attach a security group to each instance.

    The project divide to tow parts :

- Project folder which includes:
   - main.tf
   - provider.tf
   - terraform.tfvars
   - varaible.tf
- Module folder which includes:
   - rds_instance.tf
   - subnets.tf
   - var.tf
   - web_instance.tf


## Network steps

- Create a vpc and internet gatewa using GUI
- Using data source to fetch vpc id
- Create a public subnet for the ec2 instance
- Creating a routing table for the public subnet
- Attaching routing table to the public subnet created in order to provide access to the internet.
- Create two private subnets using for each for the rds instance

## RDS steps
- Create a Security Group for the rds instance that allows in the ingress traffic port 3306
- Create an Aws DB subnet group that depends on two private subnets and attach them to it
- Creating RDS instance using db.t3.micro instance class and mysql engine
## EC2 Instance Steps
- Creating EC2 instance using t2.micro instance type with Amazon Linux image
- Create a security group that allows HTTP, HTTPS.
- Attaching security group that allows HTTP and HTTPS traffic to EC2

## Terraform Module Source
https://github.com/moninca1234/module_2tier_app/blob/master/web_instance.tf

## deployment

##### To download aws provider 


```http
  terraform init

```
##### to check and test project before apply

```http
  terraform plan

```
##### to apply project

```http
  terraform apply

