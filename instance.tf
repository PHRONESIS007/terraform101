module "spin_up_machine" {
    source = "./mymodules"
    instance_count = 2
    availability_zone = var.availability_zone
    modulescripts = var.scripts
    node_name = var.node_name
    environment = "dev"
}