
resource "aws_api_gateway_rest_api" "ApiGatewayRestApi1050" {
    name = "api-us-e2-dev-cust-management"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

#==============================================================================

resource "aws_api_gateway_stage" "ApiGatewayStage1050" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment1050.id#"gf36ee"
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id#aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    cache_cluster_enabled = false
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1050" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1052" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1053" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1054" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1055" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1056" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1057" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1058" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1059" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1060" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1061" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1062" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1063" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1064" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1065" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1066" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1067" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1068" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1069" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1070" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1071" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1072" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1073" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1074" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1075" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1076" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1077" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1078" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1079" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1080" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1081" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment1082" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
}

#=======================================================================================

resource "aws_api_gateway_resource" "ApiGatewayResource1050" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "appsumo"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1052.id#"95gzgt"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1052" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1057.id#"ur67gg"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1053" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "users"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1052.id#"95gzgt"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1054" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "quota"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1066.id#"xqvt7z"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1055" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "invoices"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1059.id#"zyt888"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1056" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "coupons"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1057" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.root_resource_id#"e334k42ke7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1058" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "utilization"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1054.id#"h28v1p"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1059" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "subscriptions"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1052.id#"95gzgt"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1060" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "{subscription_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1065.id#"tgnnyu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1061" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "scheduledchanges"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1062" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "upgrade"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1063" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "help"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1064" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "notifications"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1050.id#"1uao2h"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1065" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "subscriptions"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1066.id#"xqvt7z"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1066" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "customers"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1052.id#"95gzgt"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1067" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "{hostedpage_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1055.id#"hwg3dn"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1068" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "renew"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1069" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "plans"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1059.id#"zyt888"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1070" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "affiliate"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1066.id#"xqvt7z"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1071" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "cancellation"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1056.id#"l2vomf"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1072" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1053.id#"es4cio"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1073" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "hibernate"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

resource "aws_api_gateway_resource" "ApiGatewayResource1074" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    path_part = "updatecard"
    parent_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
}

#====================================================================================================
resource "aws_api_gateway_method" "ApiGatewayMethod1050" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1058.id#"zsvik5"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1052" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1067.id#"69x9yj"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1053" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1058.id#"zsvik5"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1054" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1065.id#"tgnnyu"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1055" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1064.id#"knp93f"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1056" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1057" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1068.id#"t6eiuo"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1058" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1070.id#"ozexcl"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1059" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1069.id#"v32j2j"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1060" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1061.id#"eicam5"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1061" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
    http_method = "DELETE"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1062" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1062.id#"x83kdi"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1063" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1063.id#"mywswa"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1064" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1059.id#"zyt888"
    http_method = "POST"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1065" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1060.id#"9vcxo9"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1066" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1061.id#"eicam5"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1067" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1066.id#"xqvt7z"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1068" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1062.id#"x83kdi"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1069" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1065.id#"tgnnyu"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1070" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1063.id#"mywswa"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1071" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1064.id#"knp93f"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    authorization_scopes = [
        "o3jefs0gmi.execute-api.us-east-2.amazonaws.com/appsumo.notify"
    ]
}

resource "aws_api_gateway_method" "ApiGatewayMethod1072" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1065.id#"tgnnyu"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1073" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1072.id#"j6v4es"
    http_method = "POST"
    authorization = "NONE"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1074" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1066.id#"xqvt7z"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1075" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1073.id#"mtvqgj"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1076" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1067.id#"69x9yj"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.hostedpage_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1077" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1068.id#"t6eiuo"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1078" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1071.id#"s1wirh"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1079" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1069.id#"v32j2j"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1080" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1070.id#"ozexcl"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod1081" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1074.id#"laybh3"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1082" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1071.id#"s1wirh"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1083" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1072.id#"j6v4es"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1084" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1073.id#"mtvqgj"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    # request_parameters {}
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod1085" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    resource_id = aws_api_gateway_resource.ApiGatewayResource1074.id#"laybh3"
    http_method = "PUT"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer1050.id#"w680lu"
    api_key_required = false
    # request_parameters {
    #     method.request.path.subscription_id = true
    # }
    request_models = {

    "application/json" = "Error"

  }
}

#=======================================================================================
resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping1050" {
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    domain_name = "dev-api.pictory.ai"
    stage = "dev"
    api_mapping_key = "customer-management"
}

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer1050" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    name = "authorizer-us-e2-dev-customer-management"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping1050" {
    base_path = "customer-management"
    domain_name = "dev-api.pictory.ai"
    api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id
    stage_name = "dev"
}

resource "aws_api_gateway_model" "ApiGatewayModel1050" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id#"0srqs7acbd"
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

resource "aws_api_gateway_model" "ApiGatewayModel1052" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi1050.id#"0srqs7acbd"
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
