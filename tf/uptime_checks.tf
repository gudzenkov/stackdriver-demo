# Auto-generated by uptime-generator.py
#
# Uptime checks and Alerting Policy for health-check endpoints
# Various Content Matchers supported
# Login Proxy auth can be passed for JWT token authorization

module "service1" {
  source     = "modules/stackdriver-uptime-check"
  name       = "${var.api_gateway}/service1"
  host       = "${var.api_gateway}"
  path       = "/service1/health"
  match      = "${var.uptime_check_match_ok}"
}

module "service2" {
  source     = "modules/stackdriver-uptime-check"
  name       = "${var.api_gateway}/service2"
  host       = "${var.uptime_check_proxy}"
  auth_token = "${var.uptime_check_proxy_token}"
  path       = "/service2/api/ping"
  match      = "Pong"
}

module "service3" {
  source     = "modules/stackdriver-uptime-check"
  name       = "${var.api_gateway}/service3"
  host       = "${var.api_gateway}"
  path       = "/service3/health_check"
  match      = "${var.uptime_check_match_app_health}"
}
