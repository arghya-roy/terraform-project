

resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name      = "new2"      #create a new key pair new2.pem in console

  provisioner "file" {             # it will copy script.sh from local machine to remote machine
    source      = "script.sh"      # sourse path
    destination = "/tmp/script.sh"  
  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/script.sh",
      # "sudo sed -i -e 's/\r$//' /tmp/script.sh",  # Remove the spurious CR characters.
      "sudo /tmp/script.sh",
    ]
  }
  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
    private_key = file("new2.pem")     # download that key pair and paste it here
  }
}

output "pub_ip" {
  value = aws_instance.example.public_ip
}

