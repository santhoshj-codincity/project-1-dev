
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi1000" {
    name = "api-us-e2-dev-portal-service"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage1000" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment1000.id#"489byp"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1000" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1002" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
}

#==============================================================================

resource "aws_api_gateway_resource" "ApiGatewayResource1004" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.root_resource_id#"zrvabpdpij"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1002" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1004.id#"9zsmww"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1005" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1002.id#"78zq98"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1000" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "actions"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1005.id#"m00yf8"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1008" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "resetpassword"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1000.id#"0rt7yr"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1003" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1005.id#"m00yf8"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1006" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "projects"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1003.id#"8vqoi6"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1007" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    path_part = "{projectid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1006.id#"vzx43w"
}

#=========================METHOD==============================================================
#resetpassword
resource "aws_api_gateway_method" "ApiGatewayMethod1000" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1008.id#"9qtk7k"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1000.id#"o759vi"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1004" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1008.id#"9qtk7k"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

#{projectid}

resource "aws_api_gateway_method" "ApiGatewayMethod1002" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1007.id#"65iafp"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1003" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1007.id#"65iafp"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1000.id#"o759vi"
    api_key_required = false
    # request_parameters {
    #     method.request.path.projectid = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}


#=======================================================================================

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping1000" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "portal"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer1000" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    name = "authorizer-us-e2-userpool-6625df75-pictorydev"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping1000" {
    base_path = "portal"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel1000" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id#"0srqs7acbd"
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

resource "aws_api_gateway_model" "ApiGatewayModel1002" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1000.id#"0srqs7acbd"
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
