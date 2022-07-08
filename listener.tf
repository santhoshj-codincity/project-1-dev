resource "aws_lb_listener" "ElasticLoadBalancingV2Listener" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener2" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer2.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup10.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener3" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer3.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup4.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener4" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer4.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup8.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener5" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer5.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup15.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener6" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer6.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup3.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener7" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer7.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup12.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener8" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer8.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup9.arn
        type = "forward"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener9" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer9.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup7.arn
        type = "forward"
    }
}


resource "aws_lb_listener" "ElasticLoadBalancingV2Listener15" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer12.arn
    port = 443
    protocol = "HTTPS"
    ssl_policy = "ELBSecurityPolicy-2016-08"
    certificate_arn = "${aws_acm_certificate.default.arn}"
    default_action {
        fixed_response {
            content_type = "text/plain"
            status_code = "503"
        }
        type = "fixed-response"
    }
}

resource "aws_lb_listener" "ElasticLoadBalancingV2Listener16" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer10.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup5.arn
        type = "forward"
    }
}




resource "aws_lb_listener_rule" "ElasticLoadBalancingV2ListenerRule4" {
    priority = "1"
    listener_arn = aws_lb_listener.ElasticLoadBalancingV2Listener15.arn
    condition {
    path_pattern {
      values = ["/api*"]
    }
  }
  action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup6.arn
        type = "forward"
    }
}

