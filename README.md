# s3-website-terraform
This is a very simple s3 hosted website 


Note: terraform destroy will not work until you manually remove all files from the s3 bucket 

Bugs:
May need to run "terraform apply" twice as it trys to add assets into the s3 bucket before it has created the bucket. 

To Do 
------
set up route 53 to map to a domain 
