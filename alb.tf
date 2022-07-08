resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer12" {
    name = "alb-us-e2-dev-media-resources"
    internal = false
    load_balancer_type = "application"
    subnets = [
        aws_subnet.EC2Subnet1.id,
        aws_subnet.EC2Subnet2.id
    ]
    security_groups = [
        aws_security_group.lb.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        bucket = ""
        prefix = ""
    }
    idle_timeout = "60"
    enable_deletion_protection = "false"
    enable_http2 = "true"
}
