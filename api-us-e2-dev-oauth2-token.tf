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

resource "aws_api_gateway_rest_api" "ApiGatewayRestApi800" {
    name = "api-us-e2-prod-oauth2-token"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}



resource "aws_api_gateway_method" "ApiGatewayMethod801" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id#"ya2ycogajf"
    resource_id = aws_api_gateway_resource.ApiGatewayResource807.id#"augnwv"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod802" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id#aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource806.id#"xghmtx"
    http_method = "POST"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod803" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id#"ya2ycogajf"
    resource_id = aws_api_gateway_resource.ApiGatewayResource807.id#"augnwv"
    http_method = "POST"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_stage" "ApiGatewayStage800" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment801.id#"g99c5i"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id#aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment801" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment802" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment803" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource801" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "appsumo"
    parent_id = aws_api_gateway_resource.ApiGatewayResource802.id#"44rpj8"
}

resource "aws_api_gateway_resource" "ApiGatewayResource802" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource805.id#"ozo3nj"
}

resource "aws_api_gateway_resource" "ApiGatewayResource803" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "oauth2"
    parent_id = aws_api_gateway_resource.ApiGatewayResource802.id#"44rpj8"
}

resource "aws_api_gateway_resource" "ApiGatewayResource804" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "oauth2"
    parent_id = aws_api_gateway_resource.ApiGatewayResource801.id#"0hj5tr"
}

resource "aws_api_gateway_resource" "ApiGatewayResource805" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.root_resource_id#"ljvin2eg9h"
}

resource "aws_api_gateway_resource" "ApiGatewayResource806" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "token"
    parent_id = aws_api_gateway_resource.ApiGatewayResource803.id#"56na47"
}

resource "aws_api_gateway_resource" "ApiGatewayResource807" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    path_part = "token"
    parent_id = aws_api_gateway_resource.ApiGatewayResource804.id#"b3i7ru"
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping800" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "auth"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping800" {
    base_path = "auth"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi800.id
    stage_name = "dev"
}