resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

<<<<<<< HEAD
 egress {
=======
  egress {
>>>>>>> 6b7107cf9a195fff9e9dfb060d665fbb238b4650
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-${var.sg_name}"
    }
<<<<<<< HEAD
  )
}
=======

  )
}
>>>>>>> 6b7107cf9a195fff9e9dfb060d665fbb238b4650
