resource "local_file" "devops" {
        filename = "/root/demo/terraform.tf"
        content = " this is my first file in terraform"
}
=========================================================
# over file create first after create this file

resource "random_string" "rand-str" {
length = 16
special = true
override_special = "!#$&*()-_=+[]<>:?"
}

output "rand-str" {
value = random_string.rand-str[*].result
}
