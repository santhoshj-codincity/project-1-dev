
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi400" {
    name = "api-us-e2-dev-video-posts"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage400" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment400.id
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id  #"4a09cnxny8"
    cache_cluster_enabled = false
    variables {
        nlbdns = "nlb-us-e2-dev-video-posts-7be1bd338897b050.elb.us-east-2.amazonaws.com"
    }
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment400" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment402" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment403" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment404" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment405" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment406" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment407" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment408" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment409" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment410" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment411" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
}

resource "aws_api_gateway_resource" "ApiGatewayResource400" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.root_resource_id #"fnfiesq9od"
}

resource "aws_api_gateway_resource" "ApiGatewayResource402" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource406.id #"rq9zdt"
}

resource "aws_api_gateway_resource" "ApiGatewayResource403" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "auth"
    parent_id = aws_api_gateway_resource.ApiGatewayResource406.id #"rq9zdt"
}

resource "aws_api_gateway_resource" "ApiGatewayResource404" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource403.id #"k2yowu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource405" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "{hootsuiteUserId}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource402.id #"jmsm74"
}

resource "aws_api_gateway_resource" "ApiGatewayResource406" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "v1"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"aoofba"
}

resource "aws_api_gateway_resource" "ApiGatewayResource407" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "socialprofiles"
    parent_id = aws_api_gateway_resource.ApiGatewayResource405.id #"og8t6y"
}

resource "aws_api_gateway_resource" "ApiGatewayResource408" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "{hootsuiteUserId}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource404.id #"kn1520"
}

resource "aws_api_gateway_resource" "ApiGatewayResource409" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "token"
    parent_id = aws_api_gateway_resource.ApiGatewayResource403.id #"k2yowu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource410" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    path_part = "schedulemessages"
    parent_id = aws_api_gateway_resource.ApiGatewayResource405.id #"og8t6y"
}

resource "aws_api_gateway_method" "ApiGatewayMethod400" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource408.id #"lwk31w"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod402" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource409.id #"dqv4e1"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod403" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource407.id #"33zgbm"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = "0cn7xt"
    api_key_required = false
   request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod404" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource407.id #"33zgbm"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod405" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource410.id #"o5vq7x"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod406" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource408.id #"lwk31w"
    http_method = "HEAD"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer400.id #"0cn7xt"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod407" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource409.id #"dqv4e1"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer400.id #"0cn7xt"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod408" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    resource_id = aws_api_gateway_resource.ApiGatewayResource410.id #"o5vq7x"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer400.id #"0cn7xt"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping400" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "video-posts"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer400" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    name = "authorizer-us-e2-video-posts"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    #AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping400" {
    base_path = "video-posts"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"4a09cnxny8"
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel400" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi400.id #"27tdqjnm3c"
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

resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink400" {
    name = "vpclink-us-e2-dev-video-posts"
    target_arns = [
        "arn:aws:elasticloadbalancing:us-east-2:701488979254:loadbalancer/net/nlb-us-e2-dev-video-posts/7be1bd338897b050"
    ]
}
