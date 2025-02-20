resource "fortios_router_static" "router_static" {
    status = var.router_static_status
    gateway = var.router_static_gateway
    src = var.router_static_src
    dst = var.router_static_dst
    priority = var.router_static_priority
    distance = var.router_static_distance
    device = var.router_static_device
}