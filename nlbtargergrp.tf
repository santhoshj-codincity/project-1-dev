resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-asset-search"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup3" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-assets-rank"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup4" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-customer-management"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup5" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-audio"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup7" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-push-notification"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup8" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-article-parser"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup9" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-summarizer"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup10" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-transcribe"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup11" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-uploader"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup12" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-video-posts"
}

resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup15" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 80
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-video-generation"
}