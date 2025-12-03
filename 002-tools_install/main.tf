module "tools" {
  for_each      =  var.tools
  source        = "git::https://github.com/iam-nareshkumars/tools_setup.git"
  ami           = data.aws_ami.main.image_id
  instance_type = each.value["instance_type"]
  Name          = each.value["Name"]
  zone_id       = data.aws_route53_zone.main.zone_id
  domain        = var.domain
  port_no       = each.value["port_no"]


}


