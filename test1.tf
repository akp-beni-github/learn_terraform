#create txt file in local machine using terraform

resource "null_resource" "file" { # null resource since it local machine not cloud
  provisioner "local-exec" {
    command = "echo 'Message: ${upper("hello world")}' > challenge1.txt "
  }
}