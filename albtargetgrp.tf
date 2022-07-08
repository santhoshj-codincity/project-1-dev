resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup6" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 5
        unhealthy_threshold = 2
        healthy_threshold = 5
        matcher = "200"
    }
    port = 80
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-media-resources"
}


