
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi" {
    name = "api-us-e2-dev-audio"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment.id#"g4yzra"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment2" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment3" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment4" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment5" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment6" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment7" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment8" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource4" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi.root_resource_id#"qp7uhn9eo0"
}

resource "aws_api_gateway_resource" "ApiGatewayResource3" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource4.id#"bwinh4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource10" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "voice-over"
    parent_id = aws_api_gateway_resource.ApiGatewayResource3.id#"ajo34l"
}

resource "aws_api_gateway_resource" "ApiGatewayResource7" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "result"
    parent_id = aws_api_gateway_resource.ApiGatewayResource10.id#"8sufyf"
}
resource "aws_api_gateway_resource" "ApiGatewayResource12" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "{response_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource7.id#"zkocs9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource6" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "v2"
    parent_id = aws_api_gateway_resource.ApiGatewayResource4.id#"bwinh4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource8" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "voice-over"
    parent_id = aws_api_gateway_resource.ApiGatewayResource6.id#"pcg1s3"
}

resource "aws_api_gateway_resource" "ApiGatewayResource5" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "result"
    parent_id = aws_api_gateway_resource.ApiGatewayResource8.id#"be0s5l"
}

resource "aws_api_gateway_resource" "ApiGatewayResource11" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "{response_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource5.id#"dm80kg"
}

resource "aws_api_gateway_resource" "ApiGatewayResource" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "v3"
    parent_id = aws_api_gateway_resource.ApiGatewayResource4.id#'bwinh4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource9" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "voice-over"
    parent_id = aws_api_gateway_resource.ApiGatewayResource.id#"3ox0u1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource2" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "result"
    parent_id = aws_api_gateway_resource.ApiGatewayResource9.id#"ulf2xp"
}

resource "aws_api_gateway_resource" "ApiGatewayResource13" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    path_part = "{response_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource2.id#"6fzffu"
}

#--------------------------------------------------------------------------------

#v1
resource "aws_api_gateway_method" "ApiGatewayMethod6" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource10.id#"8sufyf"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer.id#"0vpk7m"
    api_key_required = false
}
resource "aws_api_gateway_method" "ApiGatewayMethod8" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource10.id#"8sufyf"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {}
}
resource "aws_api_gateway_method" "ApiGatewayMethod9" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource12.id#"f9h1ak"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer.id#"0vpk7m"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {
    #     method.request.path.response_id = true
    # }
}

resource "aws_api_gateway_method" "ApiGatewayMethod11" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource12.id#"f9h1ak"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {}
}

#v2
resource "aws_api_gateway_method" "ApiGatewayMethod" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource8.id#"be0s5l"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {}
}
resource "aws_api_gateway_method" "ApiGatewayMethod3" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource11.id#"0l9ilj"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer.id#"0vpk7m"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {
    #     method.request.path.response_id = true
    # }
}
resource "aws_api_gateway_method" "ApiGatewayMethod4" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource8.id#"be0s5l"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer.id#"0vpk7m"
    api_key_required = false
}
resource "aws_api_gateway_method" "ApiGatewayMethod10" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource11.id#"0l9ilj"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {}
}

#v3
resource "aws_api_gateway_method" "ApiGatewayMethod2" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource9.id#"ulf2xp"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {}
}


resource "aws_api_gateway_method" "ApiGatewayMethod5" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource13.id#"0kowbm"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer.id#"0vpk7m"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
  }
    # request_parameters {
    #     method.request.path.response_id = true
    # }
}

resource "aws_api_gateway_method" "ApiGatewayMethod7" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource9.id#"ulf2xp"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer.id#"0vpk7m"
    api_key_required = false
}
resource "aws_api_gateway_method" "ApiGatewayMethod12" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource13.id#"0kowbm"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {
    "application/json" = "Error"
  }
}

#-----------------------------------------------------------------------

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "audio"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    name = "authorizer-us-e2-dev-audio"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping" {
    base_path = "audio"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
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

resource "aws_api_gateway_model" "ApiGatewayModel2" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi.id
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
#=======================================================================


resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink" {
    name = "vpclink-us-e2-dev-audio"
    target_arns = [
        aws_lb.ElasticLoadBalancingV2LoadBalancer10.arn
    ]
}
