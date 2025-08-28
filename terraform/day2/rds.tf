resource "aws_db_instance" "db" {
  identifier             = "${var.project}-db"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  db_name                = "appdb"
  username               = "admin"
  password               = var.db_password
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnets.name

  tags = {
    Name = "${var.project}-rds"
  }
}

resource "aws_db_subnet_group" "db_subnets" {
  name = "${var.project}-db-subnets"
  subnet_ids = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]

  tags = {
    Name = "${var.project}-db-subnets"
  }
}
