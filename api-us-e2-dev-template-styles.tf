resource "aws_api_gateway_rest_api" "ApiGatewayRestApi600" {
    name = "api-us-e2-dev-template-styles"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment601.id#"avm1mm"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    cache_cluster_enabled = false
    cache_cluster_size = "0.5"
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment601" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment602" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment603" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment604" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment605" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    description = "update"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment606" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment607" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment608" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment609" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment610" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment611" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment612" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
}

resource "aws_api_gateway_resource" "ApiGatewayResource601" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "scope"
    parent_id = aws_api_gateway_resource.ApiGatewayResource610.id#"g0hhp4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource602" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.root_resource_id#"qp4o7g0w1j"
}

resource "aws_api_gateway_resource" "ApiGatewayResource603" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource602.id#"2wuezu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource604" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "recent"
    parent_id = aws_api_gateway_resource.ApiGatewayResource610.id#"g0hhp4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource605" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "recent"
    parent_id = aws_api_gateway_resource.ApiGatewayResource611.id#"ftnb5i"
}

resource "aws_api_gateway_resource" "ApiGatewayResource606" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "scope"
    parent_id = aws_api_gateway_resource.ApiGatewayResource604.id#"9tnhbu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource607" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "scope"
    parent_id = aws_api_gateway_resource.ApiGatewayResource605.id#"bgwrts"
}

resource "aws_api_gateway_resource" "ApiGatewayResource608" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "scope"
    parent_id = aws_api_gateway_resource.ApiGatewayResource611.id#"ftnb5i"
}

resource "aws_api_gateway_resource" "ApiGatewayResource609" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "templateId"
    parent_id = aws_api_gateway_resource.ApiGatewayResource613.id#"fkcmw3"
}

resource "aws_api_gateway_resource" "ApiGatewayResource610" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "templates"
    parent_id = aws_api_gateway_resource.ApiGatewayResource603.id#"46418c"
}

resource "aws_api_gateway_resource" "ApiGatewayResource611" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "styles"
    parent_id = aws_api_gateway_resource.ApiGatewayResource603.id#"46418c"
}

resource "aws_api_gateway_resource" "ApiGatewayResource612" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "{scope}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource608.id#"t8lvh3"
}

resource "aws_api_gateway_resource" "ApiGatewayResource613" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "{scope}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource601.id#"23qq9i"
}

resource "aws_api_gateway_resource" "ApiGatewayResource614" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "{scope}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource606.id#"c38hxj"
}

resource "aws_api_gateway_resource" "ApiGatewayResource615" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "{templateId}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource609.id#"zs74gj"
}

resource "aws_api_gateway_resource" "ApiGatewayResource616" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    path_part = "{scope}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource607.id#"mk9ted"
}

resource "aws_api_gateway_method" "ApiGatewayMethod600" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource610.id#"g0hhp4"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod602" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource610.id#"g0hhp4"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod603" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource614.id#"qbtjzy"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod604" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource615.id#"2w8tq0"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod605" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource611.id#"ftnb5i"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod606" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource611.id#"ftnb5i"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod607" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource612.id#"wtmfu9"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod608" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource613.id#"fkcmw3"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod609" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource612.id#"wtmfu9"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod610" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource613.id#"fkcmw3"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod611" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource616.id#"8rrn70"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod612" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource614.id#"qbtjzy"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod613" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource615.id#"2w8tq0"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer600.id#"emrc7l""
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod614" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    resource_id = aws_api_gateway_resource.ApiGatewayResource616.id#"8rrn70"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping600" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "template-styles"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer600" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    name = "authorizer-us-e2-userpool-6625df75-pictorydev"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
    ]
    AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping" {
    base_path = "template-styles"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel601" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
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

resource "aws_api_gateway_model" "ApiGatewayModel602" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi600.id#"7uniuwedrb"
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
