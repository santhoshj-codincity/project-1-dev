
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi200" {
    name = "api-us-e2-dev-article-parser"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage200" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment201.id#"w7yoiq"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    cache_cluster_enabled = false
    cache_cluster_size = "0.5"
    variables {
        nlbdns = "nlb-us-e2-dev-article-parser-4a195bcf4138e628.elb.us-east-2.amazonaws.com"
        vpclink = aws_api_gateway_vpc_link.ApiGatewayVpcLink200.id #"xeoknq"
    }
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment201" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment202" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment203" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment204" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment205" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment206" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment207" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment208" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment209" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment210" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment211" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment212" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment213" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment214" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource200" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    path_part = "health"
    parent_id = aws_api_gateway_resource.ApiGatewayResource205.id#"8wdug7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource202" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    path_part = "readable"
    parent_id = aws_api_gateway_resource.ApiGatewayResource205.id#"8wdug7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource203" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    path_part = "msdoc"
    parent_id = aws_api_gateway_resource.ApiGatewayResource205.id#"8wdug7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource204" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.root_resource_id#"fq8y5om5nc"
}

resource "aws_api_gateway_resource" "ApiGatewayResource205" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource204.id#"3ywgx5"
}

resource "aws_api_gateway_method" "ApiGatewayMethod200" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource203.id#"8uw8z4"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod202" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource200.id#"9ndxzf"
    http_method = "GET"
    authorization = "NONE"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod203" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource202.id#"6tgatl"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer200.id #"0nektn"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod204" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource203.id#"8uw8z4"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer200.id #"0nektn"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod205" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource202.id#"6tgatl"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod206" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource200.id#"9ndxzf"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "error"
    }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping200" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "article-parser"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer200" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
    name = "authorizer-us-e2-article-parser"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    #AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_model" "ApiGatewayModel200" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
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

resource "aws_api_gateway_model" "ApiGatewayModel202" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi200.id
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

resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink200" {
    description = "Dev VPC link for article parser API"
    name = "vpclink-us-e2-dev-article-parser"
    target_arns = [
        "arn:aws:elasticloadbalancing:us-east-2:701488979254:loadbalancer/net/nlb-us-e2-dev-article-parser/4a195bcf4138e628"
    ]
}
