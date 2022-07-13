
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi950" {
    name = "api-us-e2-dev-visuals-favorites"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage950" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment950.id#"1u5ebc"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment950" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment952" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment953" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource959" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.root_resource_id#"ryqg5l6jj5"
}

resource "aws_api_gateway_resource" "ApiGatewayResource956" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource959.id#"yu9jo8"
}
resource "aws_api_gateway_resource" "ApiGatewayResource955" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource956.id#"x2n0g1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource958" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource955.id#"t1w9cy"
}
resource "aws_api_gateway_resource" "ApiGatewayResource961" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "visuals"
    parent_id = aws_api_gateway_resource.ApiGatewayResource958.id#"yol9gl"
}

resource "aws_api_gateway_resource" "ApiGatewayResource952" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "object"
    parent_id = aws_api_gateway_resource.ApiGatewayResource961.id#"m3w77z"
}
resource "aws_api_gateway_resource" "ApiGatewayResource962" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "{id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource952.id#"avjv54"
}

resource "aws_api_gateway_resource" "ApiGatewayResource967" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "recent"
    parent_id = aws_api_gateway_resource.ApiGatewayResource962.id#"zuclh8"
}
resource "aws_api_gateway_resource" "ApiGatewayResource965" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "visuals"
    parent_id = aws_api_gateway_resource.ApiGatewayResource956.id#"x2n0g1"
}

#============================================================================================
resource "aws_api_gateway_resource" "ApiGatewayResource954" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "v2"
    parent_id = aws_api_gateway_resource.ApiGatewayResource959.id#"yu9jo8"
}
resource "aws_api_gateway_resource" "ApiGatewayResource950" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource954.id#"m1d0yl"
}

resource "aws_api_gateway_resource" "ApiGatewayResource953" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "{userid}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource950.id#"04w7e2"
}

resource "aws_api_gateway_resource" "ApiGatewayResource964" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "visuals"
    parent_id = aws_api_gateway_resource.ApiGatewayResource953.id#"kwn0by"
}


resource "aws_api_gateway_resource" "ApiGatewayResource957" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "object"
    parent_id = aws_api_gateway_resource.ApiGatewayResource964.id#"b9r4ne"
}

resource "aws_api_gateway_resource" "ApiGatewayResource960" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "{id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource957.id#"y024vo"
}


resource "aws_api_gateway_resource" "ApiGatewayResource963" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "recent"
    parent_id = aws_api_gateway_resource.ApiGatewayResource960.id#"1sgsgu"
}


resource "aws_api_gateway_resource" "ApiGatewayResource966" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    path_part = "visuals"
    parent_id = aws_api_gateway_resource.ApiGatewayResource954.id#"m1d0yl"
}

#=============================METHODS====================================================================

#V1
#visuals
resource "aws_api_gateway_method" "ApiGatewayMethod950" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource961.id#"m3w77z"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod964" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource961.id#"m3w77z"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

#{id}

resource "aws_api_gateway_method" "ApiGatewayMethod954" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource962.id#"zuclh8"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod960" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource962.id#"zuclh8"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod965" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource962.id#"zuclh8"
    http_method = "DELETE"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}
#recent
resource "aws_api_gateway_method" "ApiGatewayMethod957" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource967.id#"jax5az"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}
resource "aws_api_gateway_method" "ApiGatewayMethod970" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource967.id#"jax5az"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

#visual
resource "aws_api_gateway_method" "ApiGatewayMethod952" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource965.id#"6dfg2s"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod963" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource965.id#"6dfg2s"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
}
resource "aws_api_gateway_method" "ApiGatewayMethod968" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource965.id#"6dfg2s"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
}

#=========================================================================================
#v2
#visuals
resource "aws_api_gateway_method" "ApiGatewayMethod956" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource964.id#"b9r4ne"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod967" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource964.id#"b9r4ne"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

#{id}

resource "aws_api_gateway_method" "ApiGatewayMethod953" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource960.id#"1sgsgu"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}


resource "aws_api_gateway_method" "ApiGatewayMethod955" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource960.id#"1sgsgu"
    http_method = "DELETE"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}



resource "aws_api_gateway_method" "ApiGatewayMethod958" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource960.id#"1sgsgu"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

#recent
resource "aws_api_gateway_method" "ApiGatewayMethod961" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource963.id#"htq3t6"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
    # request_parameters {
    #     method.request.path.id = true
    #     method.request.path.userid = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}
resource "aws_api_gateway_method" "ApiGatewayMethod966" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource963.id#"htq3t6"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

#visuals
resource "aws_api_gateway_method" "ApiGatewayMethod959" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource966.id#"dpdm05"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
}


resource "aws_api_gateway_method" "ApiGatewayMethod962" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource966.id#"dpdm05"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer950.id#"kr6odh"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod969" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource966.id#"dpdm05"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}


#=======================================================================================================
resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer950" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    name = "authorizer-us-e2-visuals-favorites"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping950" {
    base_path = "visuals-favorites"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel950" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id#"0srqs7acbd"
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

resource "aws_api_gateway_model" "ApiGatewayModel952" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi950.id#"0srqs7acbd"
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
