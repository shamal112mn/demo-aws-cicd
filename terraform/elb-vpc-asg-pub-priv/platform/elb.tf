resource "aws_elb" "webapp-load-balancer" {
  name            = "${var.env}-WebApp-LoadBalancer"
  internal        = false
  security_groups = [aws_security_group.ec2_public_security_group.id]
  subnets         = [
    data.terraform_remote_state.network_configuration.outputs.public-subnet-1_id,
    data.terraform_remote_state.network_configuration.outputs.public-subnet-2_id,
    data.terraform_remote_state.network_configuration.outputs.public-subnet-3_id
  ]

  listener {
    instance_port     = 8080
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    healthy_threshold = 5
    interval = 30
    target = "HTTP:80/index.html"
    timeout = 10
    unhealthy_threshold = 5
  }

  tags = {
    Name = var.env
  }
}
