module "docdb" {
  source                         = "./vendor/modules/docdb"
  ENV                            = var.ENV
}

module "redis" {
  source                         = "./vendor/modules/redis"
  ENV                            = var.ENV
  DOCDB_INSTANCE_TYPE            = var.DOCDB_INSTANCE_TYPE
  DOCDB_INSTANCE_COUNT           = var.DOCDB_INSTANCE_COUNT

}

module "mysql" {
  source                         = "./vendor/modules/mysql"
  ENV                            = var.ENV
  MYSQL_STORAGE                  = var.MYSQL_STORAGE
  MYSQL_ENGINE_VERSION           = var.MYSQL_ENGINE_VERSION
  INTANCE_CLASS                  = var.INSTANCE_CLASS
  

}