# EchoBrief Backend Deployment

This repository contains the infrastructure as code (IaC) and deployment configuration for the EchoBrief Backend application on DigitalOcean.

## Prerequisites

- Terraform
- Ansible
- DigitalOcean account and API token

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/nilukush/echobrief_backend_deployment.git
   cd echobrief_backend_deployment
   ```

2. Set up Terraform:
* Create a terraform.tfvars file in the terraform directory with the following content:

    ```
    do_token      = "your_digitalocean_api_token"
    ssh_key_name  = "your_ssh_key_name"
    ssh_key_path  = "path/to/your/ssh/private/key"
    ```

* Initialize Terraform:
    ```bash
    cd terraform
    terraform init
    ```

3. Set up Ansible:
* Update the `inventory/production` file with the appropriate IP addresses for the app and database servers.
* Update the `ansible.cfg` file with the path to your SSH private key.

## Deployment
1. Provision the infrastructure:
    ```bash
    cd terraform
    terraform apply
    ```

2. Deploy the application:
    ```bash
    cd ../ansible
    ansible-playbook playbooks/deploy.yml
    ```

3. Configure the application:
    ```bash
    ansible-playbook playbooks/configure.yml
    ```

## Cleanup
To destroy the infrastructure and clean up resources:
```bash
cd terraform
terraform destroy
```

Note: This will permanently delete all resources created by Terraform.