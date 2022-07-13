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

resource "aws_api_gateway_rest_api" "ApiGatewayRestApi700" {
    name = "api-us-e2-dev-projects"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage700" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment701.id#"2idl1m"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id#aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment701" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment702" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource701" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource706.id#"rb3dov"
}

resource "aws_api_gateway_resource" "ApiGatewayResource702" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "object"
    parent_id = aws_api_gateway_resource.ApiGatewayResource719.id#"qsncz1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource703" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource709.id#"zmvu8g"
}

resource "aws_api_gateway_resource" "ApiGatewayResource704" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "video"
    parent_id = aws_api_gateway_resource.ApiGatewayResource720.id#"dgbwy2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource705" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource707.id#"x3q1xr"
}

resource "aws_api_gateway_resource" "ApiGatewayResource706" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.root_resource_id#"wgenwdrxbj"
}

resource "aws_api_gateway_resource" "ApiGatewayResource707" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "identifier"
    parent_id = aws_api_gateway_resource.ApiGatewayResource702.id#"cmj94t"
}

resource "aws_api_gateway_resource" "ApiGatewayResource708" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "currentstate"
    parent_id = aws_api_gateway_resource.ApiGatewayResource720.id#"dgbwy2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource709" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "name"
    parent_id = aws_api_gateway_resource.ApiGatewayResource702.id#"cmj94t"
}

resource "aws_api_gateway_resource" "ApiGatewayResource710" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource717.id#"i4cw7p"
}

resource "aws_api_gateway_resource" "ApiGatewayResource711" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "move"
    parent_id = aws_api_gateway_resource.ApiGatewayResource717.id#"i4cw7p"
}

resource "aws_api_gateway_resource" "ApiGatewayResource712" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "progress"
    parent_id = aws_api_gateway_resource.ApiGatewayResource720.id#"dgbwy2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource713" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{projectname}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource703.id#"k4vte6"
}

resource "aws_api_gateway_resource" "ApiGatewayResource714" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "output"
    parent_id = aws_api_gateway_resource.ApiGatewayResource704.id#"pnk0ra"
}

resource "aws_api_gateway_resource" "ApiGatewayResource715" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "bulkdelete"
    parent_id = aws_api_gateway_resource.ApiGatewayResource717.id#"i4cw7p"
}

resource "aws_api_gateway_resource" "ApiGatewayResource716" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{currentstate}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource708.id#"z8ak7f"
}

resource "aws_api_gateway_resource" "ApiGatewayResource717" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource719.id#"qsncz1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource718" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{projectname}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource705.id#"qpgjy4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource719" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "projects"
    parent_id = aws_api_gateway_resource.ApiGatewayResource701.id#"3pcw0v"
}

resource "aws_api_gateway_resource" "ApiGatewayResource720" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    path_part = "{projectid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource702.id#"cmj94t"
}

resource "aws_api_gateway_method" "ApiGatewayMethod701" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource713.id#"hn76ks"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod702" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource714.id#"r86z5k"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod703" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource710.id#"fnppcp"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod704" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource720.id#"dgbwy2"
    http_method = "DELETE"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod705" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource712.id#"lafl9w"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters = {
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod706" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource710.id#"fnppcp"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters ={
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod707" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource711.id#"m7b4ni"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters ={
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod708" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource718.id#"isd1ue"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod709" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource717.id#"i4cw7p"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod710" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource716.id#"xnuqjy"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters= {
    #     method.request.path.currentstate = true
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod711" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource720.id#"dgbwy2"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod712" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource711.id#"m7b4ni"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters ={
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod713" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource712.id#"lafl9w"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod714" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource719.id#"qsncz1"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod715" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource715.id#"1wemls"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters ={
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod716" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource719.id#"qsncz1"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod717" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource713.id#"hn76ks"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters ={
    #     method.request.path.projectname = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod718" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource714.id#"r86z5k"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters= {
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod719" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource715.id#"1wemls"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters= {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod720" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource716.id#"xnuqjy"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod721" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource717.id#"i4cw7p"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters= {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod722" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource718.id#"isd1ue"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
    # request_parameters= {
    #     method.request.path.projectname = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod723" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource719.id#"qsncz1"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod724" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource720.id#"dgbwy2"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer700.id#aws_api_gateway_authorizer.apigatewayauthorizer700.id
    api_key_required = false
    # request_parameters ={
    #     method.request.path.projectid = true
    # }
    request_models = {

    "application/json" = "error"

  }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping700" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "projects"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer700" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    name = "authorizer-us-e2-projects"
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

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping700" {
    base_path = "projects"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel701" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
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

resource "aws_api_gateway_model" "ApiGatewayModel702" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi700.id
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
