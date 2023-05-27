module "tierapp_module"{
   source="github.com/moninca1234/module_2tier_app.git"
   vpc_id= var.vpc_id
   public_subnets_list=var.public_subnets_list
   private_subnets_list=var.private_subnets_list
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name 
  engine               = var.engine
  engine_version       = var.engine_version 
  instance_class       = var.instance_class  
  username             = var.username
  password             = var.passwordd
}