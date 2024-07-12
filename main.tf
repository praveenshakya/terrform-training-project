#=======================================================
resource "random_string" "datagen" {
  length = 24
  special = false
  upper = false
}


resource "random_password" "password" {
  length           = 16
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


# =========================================================

#output Demo

output "kayname" {
  value = random_string.datagen.id
}

output "getPassword" {
  value = nonsensitive(random_password.password.result)
  sensitive = false
}
