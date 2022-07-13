
# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink" {
#     name = "vpclink-us-e2-dev-audio"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer10.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink2" {
#     description = "VPC link for summarizer API"
#     name = "vpclink-us-e2-dev-summarizer"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer8.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink3" {
#     name = "vpclink-us-e2-dev-transcribe"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer2.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink4" {
#     name = "vpclink-us-e2-dev-video-posts"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer7.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink5" {
#     name = "vpclink-us-e2-dev-customer-management"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer3.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink6" {
#     name = "vpclink-us-e2-dev-asset-search"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink7" {
#     name = "vpclink-us-e2-dev-video-generation"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer5.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink8" {
#     name = "vpclink-us-e2-dev-push-notification"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer9.arn
#     ]
# }

# resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink9" {
#     description = "Dev VPC link for article parser API"
#     name = "vpclink-us-e2-dev-article-parser"
#     target_arns = [
#         aws_lb.ElasticLoadBalancingV2LoadBalancer4.arn
#     ]
# }
