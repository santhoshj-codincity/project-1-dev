# terraform {
#     required_providers {
#         aws = {
#             source = "hashicorp/aws"
#             version = "~> 3.0"
#         }
#     }
# }

# provider "aws" {
#     region = "us-east-2"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping" {
#     api_id = "4a09cnxny8"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "video-posts"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping2" {
#     api_id = "zhcn1ycd4b"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "tasks"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping3" {
#     api_id = "ql0pnpw1e9"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "search-suggestions"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping4" {
#     api_id = "ne3n4nua1l"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "asset-search"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping5" {
#     api_id = "7uniuwedrb"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "template-styles"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping6" {
#     api_id = "27tdqjnm3c"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "summarizer"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping7" {
#     api_id = "einmnmmbs4"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "projects"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping8" {
#     api_id = "obv24ajvcc"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "brandsettings"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping9" {
#     api_id = "mxip4yrtf1"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "auth"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping10" {
#     api_id = "ytrj30ju7c"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "audio-favorites"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping11" {
#     api_id = "ytrj30ju7c"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "music"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping12" {
#     api_id = "ytxgzolmkk"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "uploader"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping13" {
#     api_id = "2b2jbby97i"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "video-downloader"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping14" {
#     api_id = "c7mu3wocl7"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "visuals-favorites"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping15" {
#     api_id = "teedu4ctw7"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "portal"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping16" {
#     api_id = "o3jefs0gmi"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "customer-management"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping17" {
#     api_id = "3ccuijlcej"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "article-parser"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping18" {
#     api_id = "msn0ql5nd3"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "audio"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping19" {
#     api_id = "embl768leg"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "images"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping20" {
#     api_id = "aaf3byz721"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "video-generation"
# }

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping21" {
#     api_id = "el5m20mh97"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "transcribe"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer" {
#     rest_api_id = "4a09cnxny8"
#     name = "authorizer-us-e2-video-posts"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer2" {
#     rest_api_id = "zhcn1ycd4b"
#     name = "authorizer-us-e2-tasks"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer3" {
#     rest_api_id = "ql0pnpw1e9"
#     name = "authorizer-us-e2-search-suggestions"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer4" {
#     rest_api_id = "ne3n4nua1l"
#     name = "authorizer-us-e2-dev-asset-search"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer5" {
#     rest_api_id = "7uniuwedrb"
#     name = "authorizer-us-e2-userpool-6625df75-pictorydev"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer6" {
#     rest_api_id = "27tdqjnm3c"
#     name = "authorizer-us-e2-dev-assets-rank"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer7" {
#     rest_api_id = "einmnmmbs4"
#     name = "authorizer-us-e2-projects"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer8" {
#     rest_api_id = "obv24ajvcc"
#     name = "authorizer-us-e2-brandsettings"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer9" {
#     rest_api_id = "ytrj30ju7c"
#     name = "authorizer-us-e2-audio-favorites"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer10" {
#     rest_api_id = "ytxgzolmkk"
#     name = "authorizer-us-e2-dev-uploader"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer11" {
#     rest_api_id = "2b2jbby97i"
#     name = "authorizer-us-e2-video-downloader"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer12" {
#     rest_api_id = "c7mu3wocl7"
#     name = "authorizer-us-e2-visuals-favorites"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer13" {
#     rest_api_id = "teedu4ctw7"
#     name = "authorizer-us-e2-userpool-6625df75-pictorydev"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer14" {
#     rest_api_id = "o3jefs0gmi"
#     name = "authorizer-us-e2-dev-customer-management"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer15" {
#     rest_api_id = "3ccuijlcej"
#     name = "authorizer-us-e2-article-parser"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer16" {
#     rest_api_id = "msn0ql5nd3"
#     name = "authorizer-us-e2-dev-audio"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer17" {
#     rest_api_id = "embl768leg"
#     name = "authorizer-us-e2-images"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer18" {
#     rest_api_id = "aaf3byz721"
#     name = "authorizer-us-e2-dev-video-generation"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }

# resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer19" {
#     rest_api_id = "el5m20mh97"
#     name = "authorizer-us-e2-dev-transcribe"
#     type = "COGNITO_USER_POOLS"
#     provider_arns = [
#         "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
#     ]
#     AuthType = "cognito_user_pools"
#     identity_source = "method.request.header.Authorization"
# }
