module "cdn-us-east-1" {
  source        = "./cdn"
  region        = "us-east-1"
}

module "cdn-us-west-2" {
  source        = "./cdn"
  region        = "us-west-2"
}
