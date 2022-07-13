
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi450" {
    name = "api-us-e2-dev-tasks"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage450" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment450.id#"hc99jj"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id#aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment450" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment452" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment453" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment454" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
}

#==============================================================================================
resource "aws_api_gateway_resource" "ApiGatewayResource450" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "tasks"
    parent_id = aws_api_gateway_resource.ApiGatewayResource453.id#"rf5fuf"
}

resource "aws_api_gateway_resource" "ApiGatewayResource452" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "{projectid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource456.id#"g12mam"
}

resource "aws_api_gateway_resource" "ApiGatewayResource453" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.root_resource_id#"cwnz4izjk9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource454" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "projects"
    parent_id = aws_api_gateway_resource.ApiGatewayResource453.id#"rf5fuf"
}

resource "aws_api_gateway_resource" "ApiGatewayResource455" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "tasks"
    parent_id = aws_api_gateway_resource.ApiGatewayResource452.id#"89g7pr"
}

resource "aws_api_gateway_resource" "ApiGatewayResource456" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource453.id#"9fksdf"
}

resource "aws_api_gateway_resource" "ApiGatewayResource457" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "inprogress"
    parent_id = aws_api_gateway_resource.ApiGatewayResource450.id#"23ns6w"
}

resource "aws_api_gateway_resource" "ApiGatewayResource458" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "complete"
    parent_id = aws_api_gateway_resource.ApiGatewayResource459.id#"rrcw74"
}

resource "aws_api_gateway_resource" "ApiGatewayResource459" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "{taskid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource452.id#"gwzaiv"
}

resource "aws_api_gateway_resource" "ApiGatewayResource460" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    path_part = "health"
    parent_id = aws_api_gateway_resource.ApiGatewayResource456.id#"rf5fuf"
}

#============================================================================================
resource "aws_api_gateway_method" "ApiGatewayMethod450" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource457.id#"tnfypd"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer450.id#"y2cu8q"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod452" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource460.id#"p66kly"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod453" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource457.id#"tnfypd"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod454" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource458.id#"jie2bm"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer450.id#"y2cu8q"
    api_key_required = false
    # request_parameters {
    #     method.request.path.projectid = true
    #     method.request.path.taskid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod455" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource458.id#"jie2bm"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod456" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource459.id#"rrcw74"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer450.id#"y2cu8q"
    api_key_required = false
    # request_parameters {
    #     method.request.path.projectid = true
    #     method.request.path.taskid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod457" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource459.id#"rrcw74"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod458" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource460.id#"p66kly"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer450.id#"y2cu8q"
    api_key_required = false
}

#=================================================================================================
resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping450" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "tasks"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer450" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    name = "authorizer-us-e2-tasks"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
         aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping450" {
    base_path = "tasks"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel450" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id#"0srqs7acbd"
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

resource "aws_api_gateway_model" "ApiGatewayModel452" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi450.id#"0srqs7acbd"
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
