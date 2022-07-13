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

resource "aws_api_gateway_rest_api" "ApiGatewayRestApi750" {
    name = "api-us-e2-dev-brandsettings"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage750" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment750.id#"b7fr4f"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment750" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id#aws_api_gateway_rest_api.ApiGatewayRestApi750.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource751" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    path_part = "object"
    parent_id = aws_api_gateway_resource.ApiGatewayResource756.id#"lgq4rh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource752" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource754.id#"md0ce2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource753" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource751.id#"2yvoho"
}

resource "aws_api_gateway_resource" "ApiGatewayResource754" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.root_resource_id#"ujp4tcgx83"
}

resource "aws_api_gateway_resource" "ApiGatewayResource755" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource753.id#"l0c0vm"
}

resource "aws_api_gateway_resource" "ApiGatewayResource756" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    path_part = "brandsettings"
    parent_id = aws_api_gateway_resource.ApiGatewayResource752.id#"eifdvr"
}

resource "aws_api_gateway_method" "ApiGatewayMethod751" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource756.id#"lgq4rh"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod752" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource755.id#"uryhf1"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer750.id#"dftysl"
    api_key_required = false
    # request_parameters = {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod753" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource755.id#"uryhf1"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod754" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource756.id#"lgq4rh"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer750.id#"dftysl"
    api_key_required = false
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping750" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "brandsettings"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer750" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    name = "authorizer-us-e2-brandsettings"
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

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping750" {
    base_path = "brandsettings"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel751" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
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

resource "aws_api_gateway_model" "ApiGatewayModel752" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi750.id
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
