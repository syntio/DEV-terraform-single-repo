# Introduction

The code in this repository is structured as follows:

* The environments/ folder contains subfolders that represent environments, such as dev and prod, which provide logical separation between workloads at different stages of maturity, development and production, respectively. Although it's a good practice to have these environments as similar as possible, each subfolder has its own Terraform configuration to ensure they can have unique settings as necessary.

* The modules/ folder contains inline Terraform modules. These modules represent logical groupings of related resources and are used to share code across different environments.

* The cloudbuild.yaml file is a build configuration file that contains instructions for Cloud Build, such as how to perform tasks based on a set of steps. This file specifies a conditional execution depending on the branch Cloud

Build is fetching the code from, for example:

For dev and prod branches, the following steps are executed:

1. terraform init
2. terraform plan
3. terraform apply
For any other branch, the following steps are executed:

1. terraform init for all environments subfolders
2. terraform plan for all environments subfolders

The reason terraform init and terraform plan run for all environments subfolders is to make sure that the changes being proposed hold for every single environment. This way, before merging the pull request, you can review the plans to make sure access is not being granted to an unauthorized entity, for example.

# Configuring your **dev** environment

Just for demostration, this step will:
 1. Configure an apache2 http server on network '**dev**' and subnet '**dev**-subnet-01'
 2. Open port 80 on firewall for this http server 

```bash
cd ../environments/dev
terraform init
terraform plan
terraform apply
terraform destroy
```

# Promoting your environment to **production**

Once you have tested your app (in this example an apache2 http server), you can promote your configuration to prodution. This step will:
 1. Configure an apache2 http server on network '**prod**' and subnet '**prod**-subnet-01'
 2. Open port 80 on firewall for this http server 

```bash
cd ../prod
terraform init
terraform plan
terraform apply
terraform destroy
```
