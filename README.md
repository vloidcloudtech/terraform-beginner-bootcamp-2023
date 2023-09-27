# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage: 

This proiject is going to utilize semantic versioning for its tagging
[semver.org] (https://semver.org/) 

The general format:

 **MAJOR.MINOR.PATCH**,eg. `1.01` 

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

## Install the terraform CLI
The Terrafrom CLi installation instructions have changed due to gpg 
keyring changes. SO we needed to refer to the latest install CLI instructions via Terraform Documentation and change the scripting for install
[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)


### AWS CLI INSTALLATION
aws cli is installed for this project via the bash script ['./bin/install_aws_cli'](./bin/install_aws_cli)

We can check if the aws credentials are configured correctly by ruinning this command
'aws sts get-caller-indentity'

if it is succesfull you should see a json payload

''json

{
    "UserId": "AIDA5684dfke6FW6J4F4YJ",
    "Account": "454851640124",
    "Arn": "arn:aws:iam::1236549875:user/terraform-beginner-bootcamp"
}