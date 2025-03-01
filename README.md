# GO to install terraform
# Terraform Installation and Commands

Terraform is an open-source software tool that helps users configure and manage infrastructure as code (IaC)

# *** Install Terraform on Linux/ubuntu Using Package Repository ***

      wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

# this isrepogetory
      echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" |         sudo tee /etc/apt/sources.list.d/hashicorp.list

# update your machine
      sudo apt update

# install terraform using below command
      sudo apt install terraform

# check terraform version
      terraform --version

