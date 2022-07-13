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

resource "aws_api_gateway_rest_api" "ApiGatewayRestApi850" {
    name = "api-us-e2-dev-music"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage850" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment851.id#"dzonuh"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id#ytrj30ju7c
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment851" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment852" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment853" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment854" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment855" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment856" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment857" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment858" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource851" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "music"
    parent_id = aws_api_gateway_resource.ApiGatewayResource852.id#"8jn36g"
}

resource "aws_api_gateway_resource" "ApiGatewayResource852" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource854.id#"gpxf4j"
}

resource "aws_api_gateway_resource" "ApiGatewayResource853" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "{projectid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource858.id#"n1rpkb"
}

resource "aws_api_gateway_resource" "ApiGatewayResource854" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.root_resource_id#"vkhcdgu7yk"
}

resource "aws_api_gateway_resource" "ApiGatewayResource855" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "tracks"
    parent_id = aws_api_gateway_resource.ApiGatewayResource851.id#"1mgdhj"
}

resource "aws_api_gateway_resource" "ApiGatewayResource856" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource852.id#"8jn36g"
}

resource "aws_api_gateway_resource" "ApiGatewayResource857" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource856.id#"kf1nah"
}

resource "aws_api_gateway_resource" "ApiGatewayResource858" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "projects"
    parent_id = aws_api_gateway_resource.ApiGatewayResource852.id#"8jn36g"
}

resource "aws_api_gateway_resource" "ApiGatewayResource859" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "object"
    parent_id = aws_api_gateway_resource.ApiGatewayResource860.id#"j6e46j"
}

resource "aws_api_gateway_resource" "ApiGatewayResource860" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "audio"
    parent_id = aws_api_gateway_resource.ApiGatewayResource857.id#"kvgu75"
}

resource "aws_api_gateway_resource" "ApiGatewayResource861" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "genres"
    parent_id = aws_api_gateway_resource.ApiGatewayResource855.id#"jdoldi"
}

resource "aws_api_gateway_resource" "ApiGatewayResource862" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource852.id#"8jn36g"
}

resource "aws_api_gateway_resource" "ApiGatewayResource863" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "{musicid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource851.id#"1mgdhj"
}

resource "aws_api_gateway_resource" "ApiGatewayResource864" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "purposes"
    parent_id = aws_api_gateway_resource.ApiGatewayResource855.id#"jdoldi"
}

resource "aws_api_gateway_resource" "ApiGatewayResource865" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "music"
    parent_id = aws_api_gateway_resource.ApiGatewayResource853.id#"8uktko"
}

resource "aws_api_gateway_resource" "ApiGatewayResource866" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "audio"
    parent_id = aws_api_gateway_resource.ApiGatewayResource852.id#"8jn36g"
}

resource "aws_api_gateway_resource" "ApiGatewayResource867" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "moods"
    parent_id = aws_api_gateway_resource.ApiGatewayResource855.id#"jdoldi"
}

resource "aws_api_gateway_resource" "ApiGatewayResource868" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    path_part = "{id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource859.id#"wd6u1j"
}

resource "aws_api_gateway_method" "ApiGatewayMethod851" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource867.id#"ybt40h"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id#aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod852" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource868.id#"hf4gqo"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod853" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource865.id#"dguj1k"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod854" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource865.id#"dguj1k"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod855" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource862.id#"52etzh"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod856" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource860.id#"j6e46j"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod857" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource860.id#"j6e46j"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod858" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource861.id#"6frml8"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod859" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource866.id#"3rucnk"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod860" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource861.id#"6frml8"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod861" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource862.id#"52etzh"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod862" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource863.id#"g5e8f3"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod863" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource864.id#"1lfzon"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod864" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource866.id#"3rucnk"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod865" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource863.id#"g5e8f3"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.musicid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod866" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource868.id#"hf4gqo"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod867" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource864.id#"1lfzon"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod868" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource865.id#"dguj1k"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod869" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource866.id#"3rucnk"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod870" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource867.id#"ybt40h"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod871" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource868.id#"hf4gqo"
    http_method = "DELETE"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer850.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping851" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "audio-favorites"
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping852" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "music"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer850" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    name = "authorizer-us-e2-audio-favorites"
    type = "COGNITO_USER_POOLS"
    provider_arns = [

        aws_cognito_user_pool.pool1.arn

    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping851" {
    base_path = "music"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    stage_name = "dev"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping852" {
    base_path = "audio-favorites"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel851" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
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

resource "aws_api_gateway_model" "ApiGatewayModel852" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi850.id
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
