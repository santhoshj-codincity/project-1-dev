resource "aws_api_gateway_model" "ApiGatewayModel650" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    name = "Error"
    description = "This is a default error schema model"
    schema = <<EOF
{
  "$schema" : "http://json-schema.org/draft-04/schema#",
  "title" : "Error Schema",
  "type" : "object",
  "properties" : {
    "message" : { "type" : "string" }
  }
}
EOF
    content_type = "application/json"
}

resource "aws_api_gateway_model" "ApiGatewayModel651" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    name = "Empty"
    description = "This is a default empty schema model"
    schema = <<EOF
{
  "$schema": "http://json-schema.org/draft-04/schema#",
  "title" : "Empty Schema",
  "type" : "object"
}
EOF
    content_type = "application/json"
}

resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink650" {
    description = "VPC link for summarizer API"
    name = "vpclink-us-e2-dev-summarizer"
    # target_arns = [
    #     "arn:aws:elasticloadbalancing:us-east-2:701488979254:loadbalancer/net/nlb-us-e2-dev-summarizer/98d17e48b8ffc12a"
    # ]
}