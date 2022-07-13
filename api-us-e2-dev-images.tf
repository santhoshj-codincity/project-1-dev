
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi250" {
    name = "api-us-e2-dev-images"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage250" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment250.id #"bbedab"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment250" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
}

resource "aws_api_gateway_resource" "ApiGatewayResource250" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "images"        
    parent_id = aws_api_gateway_resource.ApiGatewayResource254.id #"ohhyj2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource252" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "images"
    parent_id = aws_api_gateway_resource.ApiGatewayResource256.id #"stjqer"
}

resource "aws_api_gateway_resource" "ApiGatewayResource253" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource254.id #"ohhyj2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource254" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource255.id #"r0dhju"
}

resource "aws_api_gateway_resource" "ApiGatewayResource255" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.root_resource_id #"gooay3qa3b"
}

resource "aws_api_gateway_resource" "ApiGatewayResource256" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource253.id #"61rms8"
}

resource "aws_api_gateway_resource" "ApiGatewayResource257" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "object"
    parent_id = aws_api_gateway_resource.ApiGatewayResource252.id #"im5xl0"
}

resource "aws_api_gateway_resource" "ApiGatewayResource258" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id 
    path_part = "{id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource257.id #"zok3i0"
}

resource "aws_api_gateway_method" "ApiGatewayMethod250" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource250.id #"6kf2px"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer250.id #"3r680j"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod252" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource250.id #"6kf2px"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer250.id #"3r680j"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod253" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource258.id #"foiul8"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer250.id #"3r680j"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod254" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource252.id #"im5xl0"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer250.id #"3r680j"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod255" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource250.id #"6kf2px"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod256" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource258.id #"foiul8"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod257" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource252.id #"im5xl0"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod258" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    resource_id = aws_api_gateway_resource.ApiGatewayResource258.id #"foiul8"
    http_method = "DELETE"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer250.id #"3r680j"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping250" {
    api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "images"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer250" {
    rest_api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    name = "authorizer-us-e2-images"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    #AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping250" {
    base_path = "images"
    domain_name = "dev-api.pictory.ai"
    api_id = "aws_api_gateway_rest_api.apigatewayrestapi250.id"
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel250" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id #"o3jefs0gmi"
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

resource "aws_api_gateway_model" "ApiGatewayModel252" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi250.id #"o3jefs0gmi"
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
