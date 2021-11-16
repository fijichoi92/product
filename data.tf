module "test" {
  source = "../01_test"

  name             = "khchoi"
  region           = "ap-northeast-3"
  ava              = ["a", "c"]
  key              = "khchoi2-key"
  cidr_main        = "192.168.0.0/16"
  cidr_public      = ["192.168.0.0/24", "192.168.2.0/24"]
  cidr_private     = ["192.168.1.0/24", "192.168.3.0/24"]
  cidr_privatedb   = ["192.168.4.0/24", "192.168.5.0/24"]
  cidr_route       = "0.0.0.0/0"
  cidr_ipv6        = "::/0"
  protocol_main    = "tcp"
  protocol_http    = "http"
  protocol_http1   = "HTTP"
  protocol_ssh     = "ssh"
  protocol_sql     = "sql"
  protocol_icmp    = "icmp"
  port_http        = 80
  port_ssh         = 22
  port_sql         = 3306
  port_zero        = 0
  ami_amazon_linux = "ami-0d9649ef6deb663a7"
  default_instance = "t3.small"
  private_ip       = "192.168.0.11"
  lb_type          = "application"
  hc_matcher       = "200"
  hc_path          = "/health.html"
  hc_port          = "traffic-port"
  admin_role       = "admin_role"
  place_str        = "cluster"
  asg_min          = 2
  asg_max          = 10
  asg_cap          = 2
  rds_stor         = 20
  rds_type         = "gp2"
  rds_engine       = "mysql"
  rds_engine_ver   = "8.0"
  rds_class        = "db.t3.micro"
  rds_name         = "test"
  rds_user         = "admin"
  rds_pass         = "dinho2005!"

}