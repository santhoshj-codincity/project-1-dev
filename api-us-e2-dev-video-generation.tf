
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi300" {
    name = "api-us-e2-dev-video-generation"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage300" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment300.id #"ukmj88"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id 
    cache_cluster_enabled = false
    cache_cluster_size = "0.5"
    variables {
        nlbdns = "nlb-us-e2-dev-video-generation-54be0b31ae3b1fdf.elb.us-east-2.amazonaws.com"
        vpclink = aws_api_gateway_vpc_link.ApiGatewayVpcLink300.id #"o0gtnx"
    }
    xray_tracing_enabled = false
}

resource "aws_api_gateway_stage" "ApiGatewayStage302" {
    stage_name = "temp"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment300.id #"zk4sbk"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment300" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment302" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment303" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment304" {
    rest_api_id =aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment305" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment306" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment307" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment308" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment309" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment310" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment311" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment312" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment313" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment314" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment315" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment316" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment317" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment318" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment319" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment320" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment321" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment322" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment323" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment324" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment325" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment326" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment327" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment328" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment329" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment330" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment331" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment332" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment333" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment334" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment335" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment336" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment337" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment338" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment339" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment340" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource300" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "{id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource305.id #"v4tp1u"
}

resource "aws_api_gateway_resource" "ApiGatewayResource302" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "video"
    parent_id = aws_api_gateway_resource.ApiGatewayResource303.id #"a65u87"
}

resource "aws_api_gateway_resource" "ApiGatewayResource303" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource304.id #"xjosze"
}

resource "aws_api_gateway_resource" "ApiGatewayResource304" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.root_resource_id #"gkduwskpa1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource305" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "videoperscene"
    parent_id = aws_api_gateway_resource.ApiGatewayResource303.id #"a65u87"
}

resource "aws_api_gateway_resource" "ApiGatewayResource306" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "{id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource302.id #"ebk3mh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource307" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    path_part = "health"
    parent_id = aws_api_gateway_resource.ApiGatewayResource303.id #"a65u87"
}

resource "aws_api_gateway_method" "ApiGatewayMethod300" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource306.id #"0vrey3"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
     "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod302" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource306.id#"0vrey3"
    http_method = "GET"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod303" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource306.id #"0vrey3"
    http_method = "DELETE"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod304" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource302.id #"ebk3mh"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod305" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource302.id #"ebk3mh"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer300.id #"1l58z6"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod306" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource305.id #"v4tp1u"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer300.id #"1l58z6"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod307" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource306.id #"j32vrp"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod308" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource305.id #"v4tp1u"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod309" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource306.id #"j32vrp"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer300.id #"1l58z6"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod310" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource306.id #"j32vrp"
    http_method = "DELETE"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod311" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource307.id #"0v71tt"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod312" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource307.id #"0v71tt"
    http_method = "GET"
    authorization = "NONE"
    api_key_required = false
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping300" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "video-generation"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer300" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id
    name = "authorizer-us-e2-dev-video-generation"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    #AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping300" {
    base_path = "video-generation"
    domain_name = "dev-api.pictory.ai"
    api_id = "aws_api_gateway_rest_api.apigatewayrestapi300.id"
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel300" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id#"o3jefs0gmi"
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

resource "aws_api_gateway_model" "ApiGatewayModel302" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi300.id #"o3jefs0gmi"
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

resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink300" {
    name = "vpclink-us-e2-dev-video-generation"
    target_arns = [
        "arn:aws:elasticloadbalancing:us-east-2:701488979254:loadbalancer/net/nlb-us-e2-dev-video-generation/54be0b31ae3b1fdf"
    ]
}
