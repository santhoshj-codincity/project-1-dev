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

resource "aws_api_gateway_rest_api" "ApiGatewayRestApi650" {
    name = "api-us-e2-dev-summarizer"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage650" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment650.id
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    cache_cluster_enabled = false
    cache_cluster_size = "0.5"
    variables = {
        nlbdns = "nlb-us-e2-dev-summarizer-98d17e48b8ffc12a.elb.us-east-2.amazonaws.com"
        vpclink = aws_api_gateway_vpc_link.ApiGatewayVpcLink650.id
    }
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment650" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment651" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment652" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment653" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment654" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment655" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment656" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment657" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment658" {
    rest_api_id =aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment659" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment660" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}
resource "aws_api_gateway_deployment" "ApiGatewayDeployment661" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment662" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment663" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment664" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment665" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource650" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource652.id#"ug0huf"
}

resource "aws_api_gateway_resource" "ApiGatewayResource651" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "transcription"
    parent_id = aws_api_gateway_resource.ApiGatewayResource650.id #"43l287"
}

resource "aws_api_gateway_resource" "ApiGatewayResource652" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.root_resource_id#"pyy7fu2kve"
}

resource "aws_api_gateway_resource" "ApiGatewayResource653" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "summarize"
    parent_id = aws_api_gateway_resource.ApiGatewayResource651.id#"mxlole"
}

resource "aws_api_gateway_resource" "ApiGatewayResource654" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "{response_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource653.id#"9mk88t"
}

resource "aws_api_gateway_resource" "ApiGatewayResource655" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "summarize"
    parent_id = aws_api_gateway_resource.ApiGatewayResource650.id#"43l287"
}

resource "aws_api_gateway_resource" "ApiGatewayResource656" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "tts"
    parent_id = aws_api_gateway_resource.ApiGatewayResource650.id#"43l287"
}

resource "aws_api_gateway_resource" "ApiGatewayResource657" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    path_part = "health"
    parent_id = aws_api_gateway_resource.ApiGatewayResource650.id#"43l287"
}

resource "aws_api_gateway_method" "ApiGatewayMethod650" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource656.id#"jzbqqp"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer650.id#"gex2q1"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod651" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource653.id#"p6iy3p"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer650.id#"gex2q1"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod652" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource653.id#"p6iy3p"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod653" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource654.id#"vp34gv"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer650.id#"gex2q1"
    api_key_required = false
    # request_parameters = {
    #     method.request.path.response_id = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod654" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource654.id#"vp34gv"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod655" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource655.id#"9mk88t"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer650.id#"gex2q1"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod656" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource655.id#"9mk88t"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod657" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource657.id#"epytyu"
    http_method = "GET"
    authorization = "NONE"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod658" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource656.id#"jzbqqp"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod659" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource657.id#"epytyu"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMappin650" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "summarizer"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer650" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    name = "authorizer-us-e2-dev-summarizer"
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

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping650" {
    base_path = "summarizer"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi650.id
    stage_name = "dev"
}
