terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_api_gateway_rest_api" "ApiGatewayRestApi500" {
    name = "api-us-e2-dev-search-suggestions"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_resource" "ApiGatewayResource501" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id#aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource502.id#"icr5k6"
}

resource "aws_api_gateway_resource" "ApiGatewayResource502" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.root_resource_id#"r50bhyugej"
}

resource "aws_api_gateway_resource" "ApiGatewayResource503" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    path_part = "searchsuggestions"
    parent_id = aws_api_gateway_resource.ApiGatewayResource501.id#"ec0aw7"
}

resource "aws_api_gateway_method" "ApiGatewayMethod501" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource503.id#"cd5r1p"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer500.id#"tz8x3r"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod502" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource503.id#"cd5r1p"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping500" {
    base_path = "search-suggestions"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel501" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
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

resource "aws_api_gateway_model" "ApiGatewayModel502" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
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

resource "aws_api_gateway_stage" "ApiGatewayStage500" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment501.id#"5avhvd"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment501" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment502" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping500" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "search-suggestions"
}
resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer500" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi500.id
    name = "authorizer-us-e2-search-suggestions"
    type = "COGNITO_USER_POOLS"
    # provider_arns = [
    #     "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
    # ]
    provider_arns = [

        aws_cognito_user_pool.pool1.arn

    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}
