# Azure Infrastructure Provisioning with Terraform

This repository provides you with the infrastructure-as-code (IaC) setup for provisioning an Azure environment using Terraform.

## Repository Contents

This repository consists of several important files:

- **main.tf**: This is the primary configuration file where all Azure resources are defined.
- **variables.tf**: This file holds the variable inputs for various resource configurations.
- **outputs.tf**: This file outputs information about the resources we've created.

Let's move ahead to understand how we can utilize these files and setup our Azure infrastructure.

## Step-by-Step Instructions

### Step 1: Prerequisites

Make sure you have Terraform and Azure CLI installed on your system. If not, you can install Terraform from [here](https://www.terraform.io/downloads.html) and Azure CLI from [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).

### Step 2: Authentication

Authenticate with your Azure account by using the `az login` command and following the subsequent instructions.

### Step 3: Initialize Terraform

Run the command `terraform init` within the directory holding the Terraform files to initialize your Terraform configuration. This command downloads the Azure provider for Terraform.

### Step 4: Plan the Deployment

Use the `terraform plan` command to preview the actions to be performed by the Terraform configuration files.

### Step 5: Apply the Configuration

If the plan aligns with your expectations, use the `terraform apply` command to create the resources. Terraform will ask for your confirmation before proceeding with the changes.

That's it! With these steps, you are now capable of provisioning a basic Azure infrastructure using Terraform. Do note, however, that the present setup is fundamental and can be expanded upon based on specific project requirements.
