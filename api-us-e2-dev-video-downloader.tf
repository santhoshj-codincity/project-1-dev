
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi900" {
    name = "api-us-e2-dev-video-downloader"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage900" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment900.id#"fe8w1f"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id#aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment900" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment902" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment903" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource904" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.root_resource_id#"tvbu78fycl"
}

resource "aws_api_gateway_resource" "ApiGatewayResource903" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource904.id#"wv6zwe"
}

resource "aws_api_gateway_resource" "ApiGatewayResource905" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "googledrive"
    parent_id = aws_api_gateway_resource.ApiGatewayResource903.id#"u0pe1h"
}

resource "aws_api_gateway_resource" "ApiGatewayResource908" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "transcription"
    parent_id = aws_api_gateway_resource.ApiGatewayResource905.id#"y44hhf"
}

resource "aws_api_gateway_resource" "ApiGatewayResource902" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "remote"
    parent_id = aws_api_gateway_resource.ApiGatewayResource903.id#"u0pe1h"
}
resource "aws_api_gateway_resource" "ApiGatewayResource907" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "transcription"
    parent_id = aws_api_gateway_resource.ApiGatewayResource902.id#"ha1lhi"
}

resource "aws_api_gateway_resource" "ApiGatewayResource900" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "youtube"
    parent_id = aws_api_gateway_resource.ApiGatewayResource903.id#"u0pe1h"
}


resource "aws_api_gateway_resource" "ApiGatewayResource906" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    path_part = "transcription"
    parent_id = aws_api_gateway_resource.ApiGatewayResource900.id#"5ob6es"
}


#==============================================================================
resource "aws_api_gateway_method" "ApiGatewayMethod900" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource906.id#"614aoy"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {
    "application/json" = "Error"
  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod902" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource908.id#"ll5fg9"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer900.id#"phhok8"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod903" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource907.id#"invuot"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {
    "application/json" = "Error"
  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod904" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource906.id#"614aoy"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer900.id#"phhok8"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod905" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource907.id#"invuot"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer900.id#"phhok8"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod906" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource908.id#"ll5fg9"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping900" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "video-downloader"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer900" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    name = "authorizer-us-e2-video-downloader"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping900" {
    base_path = "video-downloader"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
    stage_name = "dev"
}

# resource "aws_api_gateway_domain_name" "ApiGatewayDomainName900" {
#     domain_name = "dev-api.pictory.ai"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
#     regional_certificate_arn = "arn:aws:acm:us-east-2:701488979254:certificate/dcf46514-7f2b-4f06-969a-2cccbd985d2c"
# }

resource "aws_api_gateway_model" "ApiGatewayModel900" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
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

resource "aws_api_gateway_model" "ApiGatewayModel902" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi900.id
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

#===================================================