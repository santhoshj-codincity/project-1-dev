resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer" {
    name = "nlb-us-e2-dev-asset-search"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer2" {
    name = "nlb-us-e2-dev-transcribe"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer3" {
    name = "nlb-us-e2-dev-cust-management"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer4" {
    name = "nlb-us-e2-dev-article-parser"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer5" {
    name = "nlb-us-e2-dev-video-generation"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer6" {
    name = "nlb-us-e2-dev-assets-rank"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer7" {
    name = "nlb-us-e2-dev-video-posts"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer8" {
    name = "nlb-us-e2-dev-summarizer"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer9" {
    name = "nlb-us-e2-dev-push-notification"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer10" {
    name = "nlb-us-e2-dev-audio"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}