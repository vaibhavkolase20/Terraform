# how to create docker container and inthis container install nginx emage
# 1) install docker and after follow step
# if you don't clone repogetory on git hub then you create one directory and create one file in this directory

terraform {
        required_providers {
        docker = {
        source = "kreuzwerker/docker"
        version = "~> 2.21.0"
}
}
}

provider "docker" {}

resource "docker_image" "nginx" {
 name         = "nginx:latest"
 keep_locally = false
}

resource "docker_container" "nginx" {
 image = docker_image.nginx.latest
 name = "nginx-tf"
 ports {
        internal = 80
        external = 80
}
}

# install docker after cloning this code  because docker need to this task otherwise it give you error

1) apt-get install docker.io == this is the command for install docker
