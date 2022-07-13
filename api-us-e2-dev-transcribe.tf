
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi350" {
    name = "api-us-e2-dev-transcribe"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage350" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment350.id #"1yvzzb"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    cache_cluster_enabled = false
    cache_cluster_size = "0.5"
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment350" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment352" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment353" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment354" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment355" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment356" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment357" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment358" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment359" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment360" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment361" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment362" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment363" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment364" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment365" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment366" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment367" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment368" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment369" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment370" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment371" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment372" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment373" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment374" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment375" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment376" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment377" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment378" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment379" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment380" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
}

resource "aws_api_gateway_resource" "ApiGatewayResource350" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "v1"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id #"iuq74v"
}

resource "aws_api_gateway_resource" "ApiGatewayResource352" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "v2"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id #"iuq74v"
}

resource "aws_api_gateway_resource" "ApiGatewayResource353" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "projects"
    parent_id = aws_api_gateway_resource.ApiGatewayResource350.id #"0na7kh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource354" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "result"
    parent_id = aws_api_gateway_resource.ApiGatewayResource366.id #"064f4o"
}

resource "aws_api_gateway_resource" "ApiGatewayResource355" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "{project_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource353.id #"30aads"
}

resource "aws_api_gateway_resource" "ApiGatewayResource356" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "projects"
    parent_id = aws_api_gateway_resource.ApiGatewayResource352.id #"25evd6"
}

resource "aws_api_gateway_resource" "ApiGatewayResource357" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.root_resource_id#"aqqqw8nx2e"
}

resource "aws_api_gateway_resource" "ApiGatewayResource358" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "{project_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource356.id #"eoq3n4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource359" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "transcription"
    parent_id = aws_api_gateway_resource.ApiGatewayResource350.id #"0na7kh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource360" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "result"
    parent_id = aws_api_gateway_resource.ApiGatewayResource359.id #"szepc1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource361" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "voiceover"
    parent_id = aws_api_gateway_resource.ApiGatewayResource350.id #"0na7kh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource362" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "{transcription_job_name}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource360.id #"tg0ft5"
}

resource "aws_api_gateway_resource" "ApiGatewayResource363" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "media"
    parent_id = aws_api_gateway_resource.ApiGatewayResource355.id #"8am3x4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource364" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "transcribe"
    parent_id = aws_api_gateway_resource.ApiGatewayResource358.id #"qrsnt1"
}

resource "aws_api_gateway_resource" "ApiGatewayResource365" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "autosync"
    parent_id = aws_api_gateway_resource.ApiGatewayResource361.id #"vnkhr9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource366" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "scenes"
    parent_id = aws_api_gateway_resource.ApiGatewayResource350.id #"0na7kh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource367" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "{response_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource354.id #"4du58q"
}

resource "aws_api_gateway_resource" "ApiGatewayResource368" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "summary"
    parent_id = aws_api_gateway_resource.ApiGatewayResource355.id #"8am3x4"
}

resource "aws_api_gateway_resource" "ApiGatewayResource369" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "{transcription_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource368.id #"qg7v9w"
}

resource "aws_api_gateway_resource" "ApiGatewayResource370" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    path_part = "transcribe"
    parent_id = aws_api_gateway_resource.ApiGatewayResource355.id #"8am3x4"
}

resource "aws_api_gateway_method" "ApiGatewayMethod371" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource363.id #"8zjy6r"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod372" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource367.id #"x458x8"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod373" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource370.id #"9ojv4d"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod374" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource368.id #"qg7v9w"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod375" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource362.id #"xt6d0k"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod376" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource368.id #"qg7v9w"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod377" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource362.id #"xt6d0k"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod378" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource364.id #"fiik0q"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod379" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource369.id #"4hcvxn"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod380" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource366.id #"064f4o"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod381" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource365.id #"krnfef"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod382" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource363.id #"8zjy6r"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod383" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource364.id #"fiik0q"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod384" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource365.id#"krnfef"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod385" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource366.id #"064f4o"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod386" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource367.id #"x458x8"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod387" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource368.id #"qg7v9w"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod388" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource369.id #"4hcvxn"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_api_gateway_method" "ApiGatewayMethod389" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource370.id #"9ojv4d" 
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer350.id #"imnclg"
    api_key_required = false
    request_models = {
    "application/json" = "Error"
    }
}

resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping390" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "transcribe"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer350" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    name = "authorizer-us-e2-dev-transcribe"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    #AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping350" {
    base_path = "transcribe"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel350" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id #"3zbzg12sxk"
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

resource "aws_api_gateway_model" "ApiGatewayModel352" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi350.id #"3zbzg12sxk"
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

resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink350" {
    name = "vpclink-us-e2-dev-transcribe"
    target_arns = [
        "arn:aws:elasticloadbalancing:us-east-2:701488979254:loadbalancer/net/nlb-us-e2-dev-transcribe/29f0bccdbd2ee3ae"
    ]
}
