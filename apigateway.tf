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

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi" {
#     name = "api-us-e2-dev-tasks"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi2" {
#     name = "api-us-e2-dev-template-styles"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi3" {
#     name = "api-us-e2-dev-images"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi4" {
#     name = "api-us-e2-dev-article-parser"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi5" {
#     name = "api-us-e2-dev-cust-management"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi6" {
#     name = "api-us-e2-dev-uploader"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "EDGE"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi7" {
#     name = "api-us-e2-dev-visuals-favorites"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi8" {
#     name = "api-us-e2-dev-music"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi9" {
#     name = "api-us-e2-dev-audio"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi10" {
#     name = "api-us-e2-dev-projects"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi11" {
#     name = "api-us-e2-dev-video-posts"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi12" {
#     name = "api-us-e2-dev-oauth2-token"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi13" {
#     name = "api-us-e2-dev-video-generation"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi14" {
#     name = "api-us-e2-dev-asset-search"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi15" {
#     name = "api-us-e2-dev-search-suggestions"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi16" {
#     name = "api-us-e2-dev-transcribe"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi17" {
#     name = "api-us-e2-dev-summarizer"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi18" {
#     name = "api-us-e2-dev-portal-service"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi19" {
#     name = "api-us-e2-dev-video-downloader"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_api_gateway_rest_api" "ApiGatewayRestApi20" {
#     name = "api-us-e2-dev-brandsettings"
#     api_key_source = "HEADER"
#     endpoint_configuration {
#         types = [
#             "REGIONAL"
#         ]
#     }
# }

# resource "aws_apigatewayv2_api" "ApiGatewayV2Api" {
#     api_key_selection_expression = "$request.header.x-api-key"
#     protocol_type = "WEBSOCKET"
#     route_selection_expression = "$request.body.action"
#     tags = 
# }

# resource "aws_apigatewayv2_api" "ApiGatewayV2Api2" {
#     api_key_selection_expression = "$request.header.x-api-key"
#     protocol_type = "WEBSOCKET"
#     route_selection_expression = "$request.body.action"
#     tags = 
# }

# resource "aws_api_gateway_stage" "ApiGatewayStage" {
#     stage_name = "dev"
#     deployment_id = "i24zez"
#     rest_api_id = "27tdqjnm3c"
#     cache_cluster_enabled = false
#     cache_cluster_size = "0.5"
#     variables {
#         nlbdns = "nlb-us-e2-dev-summarizer-98d17e48b8ffc12a.elb.us-east-2.amazonaws.com"
#         vpclink = "fy6ek7"
#     }
#     xray_tracing_enabled = false
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment2" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment3" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment4" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment5" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment6" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment7" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment8" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment9" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment10" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment11" {
#     rest_api_id = "4a09cnxny8"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment12" {
#     rest_api_id = "zhcn1ycd4b"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment13" {
#     rest_api_id = "zhcn1ycd4b"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment14" {
#     rest_api_id = "zhcn1ycd4b"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment15" {
#     rest_api_id = "zhcn1ycd4b"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment16" {
#     rest_api_id = "ql0pnpw1e9"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment17" {
#     rest_api_id = "ql0pnpw1e9"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment18" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment19" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment20" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment21" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment22" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment23" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment24" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment25" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment26" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment27" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment28" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment29" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment30" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment31" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment32" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment33" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment34" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment35" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment36" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment37" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment38" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment39" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment40" {
#     rest_api_id = "ne3n4nua1l"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment41" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment42" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment43" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment44" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment45" {
#     rest_api_id = "7uniuwedrb"
#     description = "update"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment46" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment47" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment48" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment49" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment50" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment51" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment52" {
#     rest_api_id = "7uniuwedrb"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment53" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment54" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment55" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment56" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment57" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment58" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment59" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment60" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment61" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment62" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment63" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment64" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment65" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment66" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment67" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment68" {
#     rest_api_id = "27tdqjnm3c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment69" {
#     rest_api_id = "einmnmmbs4"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment70" {
#     rest_api_id = "einmnmmbs4"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment71" {
#     rest_api_id = "obv24ajvcc"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment72" {
#     rest_api_id = "mxip4yrtf1"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment73" {
#     rest_api_id = "mxip4yrtf1"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment74" {
#     rest_api_id = "mxip4yrtf1"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment75" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment76" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment77" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment78" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment79" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment80" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment81" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment82" {
#     rest_api_id = "ytrj30ju7c"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment83" {
#     rest_api_id = "ytxgzolmkk"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment84" {
#     rest_api_id = "2b2jbby97i"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment85" {
#     rest_api_id = "2b2jbby97i"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment86" {
#     rest_api_id = "2b2jbby97i"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment87" {
#     rest_api_id = "c7mu3wocl7"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment88" {
#     rest_api_id = "c7mu3wocl7"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment89" {
#     rest_api_id = "c7mu3wocl7"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment90" {
#     rest_api_id = "teedu4ctw7"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment91" {
#     rest_api_id = "teedu4ctw7"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment92" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment93" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment94" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment95" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment96" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment97" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment98" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment99" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment100" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment101" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment102" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment103" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment104" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment105" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment106" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment107" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment108" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment109" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment110" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment111" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment112" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment113" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment114" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment115" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment116" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment117" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment118" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment119" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment120" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment121" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment122" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment123" {
#     rest_api_id = "o3jefs0gmi"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment124" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment125" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment126" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment127" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment128" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment129" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment130" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment131" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment132" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment133" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment134" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment135" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment136" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment137" {
#     rest_api_id = "3ccuijlcej"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment138" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment139" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment140" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment141" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment142" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment143" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment144" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment145" {
#     rest_api_id = "msn0ql5nd3"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment146" {
#     rest_api_id = "embl768leg"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment147" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment148" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment149" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment150" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment151" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment152" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment153" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment154" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment155" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment156" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment157" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment158" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment159" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment160" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment161" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment162" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment163" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment164" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment165" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment166" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment167" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment168" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment169" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment170" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment171" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment172" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment173" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment174" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment175" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment176" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment177" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment178" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment179" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment180" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment181" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment182" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment183" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment184" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment185" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment186" {
#     rest_api_id = "aaf3byz721"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment187" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment188" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment189" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment190" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment191" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment192" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment193" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment194" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment195" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment196" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment197" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment198" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment199" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment200" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment201" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment202" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment203" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment204" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment205" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment206" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment207" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment208" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment209" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment210" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment211" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment212" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment213" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment214" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment215" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_deployment" "ApiGatewayDeployment216" {
#     rest_api_id = "el5m20mh97"
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "o5vq7x"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0cn7xt"
#     api_key_required = false
#     request_parameters {
#         method.request.path.hootsuiteUserId = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod2" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "dqv4e1"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod3" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "lwk31w"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod4" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "o5vq7x"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod5" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "lwk31w"
#     http_method = "HEAD"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0cn7xt"
#     api_key_required = false
#     request_parameters {
#         method.request.path.hootsuiteUserId = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod6" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "33zgbm"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0cn7xt"
#     api_key_required = false
#     request_parameters {
#         method.request.path.hootsuiteUserId = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod7" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "33zgbm"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod8" {
#     rest_api_id = "4a09cnxny8"
#     resource_id = "dqv4e1"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0cn7xt"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod9" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "p66kly"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod10" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "rrcw74"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "y2cu8q"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#         method.request.path.taskid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod11" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "tnfypd"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "y2cu8q"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod12" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "tnfypd"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod13" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "jie2bm"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod14" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "jie2bm"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "y2cu8q"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#         method.request.path.taskid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod15" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "rrcw74"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod16" {
#     rest_api_id = "zhcn1ycd4b"
#     resource_id = "p66kly"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "y2cu8q"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod17" {
#     rest_api_id = "ql0pnpw1e9"
#     resource_id = "cd5r1p"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "tz8x3r"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod18" {
#     rest_api_id = "ql0pnpw1e9"
#     resource_id = "cd5r1p"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod19" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "7xehua"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod20" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "7x3w8e"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod21" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "7x3w8e"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod22" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "aqm4n7"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod23" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "7xehua"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod24" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "jfoyxk"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod25" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "q3slz2"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod26" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "rcyoln"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod27" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "rcyoln"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod28" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "q3slz2"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod29" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "mzk7d6"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod30" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "jfoyxk"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod31" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "mzk7d6"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod32" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "1vvkkk"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod33" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "1vvkkk"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod34" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "aqm4n7"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod35" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "hpy6ab"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod36" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "hpy6ab"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod37" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "djrvi6"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod38" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "eazz2w"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod39" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "djrvi6"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod40" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "gmubet"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod41" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "gmubet"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
#     request_parameters {
#         method.request.path.response_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod42" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "hpy6ab"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3nrfno"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod43" {
#     rest_api_id = "ne3n4nua1l"
#     resource_id = "eazz2w"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod44" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "wtmfu9"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod45" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "ftnb5i"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod46" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "qbtjzy"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod47" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "8rrn70"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod48" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "g0hhp4"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod49" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "qbtjzy"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
#     request_parameters {
#         method.request.path.scope = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod50" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "ftnb5i"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod51" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "wtmfu9"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
#     request_parameters {
#         method.request.path.scope = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod52" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "fkcmw3"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod53" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "2w8tq0"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod54" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "2w8tq0"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
#     request_parameters {
#         method.request.path.scope = true
#         method.request.path.templateId = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod55" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "8rrn70"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
#     request_parameters {
#         method.request.path.scope = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod56" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "fkcmw3"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
#     request_parameters {
#         method.request.path.scope = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod57" {
#     rest_api_id = "7uniuwedrb"
#     resource_id = "g0hhp4"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "emrc7l"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod58" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "jzbqqp"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod59" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "jzbqqp"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "gex2q1"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod60" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "vp34gv"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod61" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "epytyu"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod62" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "9mk88t"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "gex2q1"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod63" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "epytyu"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod64" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "9mk88t"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod65" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "vp34gv"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "gex2q1"
#     api_key_required = false
#     request_parameters {
#         method.request.path.response_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod66" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "p6iy3p"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod67" {
#     rest_api_id = "27tdqjnm3c"
#     resource_id = "p6iy3p"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "gex2q1"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod68" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "isd1ue"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod69" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "lafl9w"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod70" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "m7b4ni"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod71" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "fnppcp"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod72" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "hn76ks"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod73" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "hn76ks"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectname = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod74" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "fnppcp"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod75" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "m7b4ni"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod76" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "i4cw7p"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod77" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "isd1ue"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectname = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod78" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "i4cw7p"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod79" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "lafl9w"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod80" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "1wemls"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod81" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "1wemls"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod82" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "xnuqjy"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.currentstate = true
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod83" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "qsncz1"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod84" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "dgbwy2"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod85" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "dgbwy2"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod86" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "dgbwy2"
#     http_method = "DELETE"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod87" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "qsncz1"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod88" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "r86z5k"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod89" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "r86z5k"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "uf9ukp"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod90" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "qsncz1"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod91" {
#     rest_api_id = "einmnmmbs4"
#     resource_id = "xnuqjy"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod92" {
#     rest_api_id = "obv24ajvcc"
#     resource_id = "uryhf1"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "dftysl"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod93" {
#     rest_api_id = "obv24ajvcc"
#     resource_id = "uryhf1"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod94" {
#     rest_api_id = "obv24ajvcc"
#     resource_id = "lgq4rh"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "dftysl"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod95" {
#     rest_api_id = "obv24ajvcc"
#     resource_id = "lgq4rh"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod96" {
#     rest_api_id = "mxip4yrtf1"
#     resource_id = "augnwv"
#     http_method = "POST"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod97" {
#     rest_api_id = "mxip4yrtf1"
#     resource_id = "augnwv"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod98" {
#     rest_api_id = "mxip4yrtf1"
#     resource_id = "xghmtx"
#     http_method = "POST"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod99" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "1lfzon"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod100" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "1lfzon"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod101" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "3rucnk"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod102" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "3rucnk"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod103" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "hf4gqo"
#     http_method = "DELETE"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod104" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "g5e8f3"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod105" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "g5e8f3"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.musicid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod106" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "dguj1k"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod107" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "j6e46j"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod108" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "ybt40h"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod109" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "ybt40h"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod110" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "52etzh"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod111" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "52etzh"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod112" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "dguj1k"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod113" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "6frml8"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod114" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "hf4gqo"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod115" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "3rucnk"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod116" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "j6e46j"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod117" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "dguj1k"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod118" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "6frml8"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod119" {
#     rest_api_id = "ytrj30ju7c"
#     resource_id = "hf4gqo"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "a2stm6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod120" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "z1k4zy"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod121" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "yphg1q"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod122" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "z1k4zy"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod123" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "wg030b"
#     http_method = "POST"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod124" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "wg030b"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod125" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "srnk28"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod126" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "yphg1q"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod127" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "srnk28"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod128" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "6ekl2h"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod129" {
#     rest_api_id = "ytxgzolmkk"
#     resource_id = "6ekl2h"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod130" {
#     rest_api_id = "2b2jbby97i"
#     resource_id = "invuot"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod131" {
#     rest_api_id = "2b2jbby97i"
#     resource_id = "614aoy"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "phhok8"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod132" {
#     rest_api_id = "2b2jbby97i"
#     resource_id = "ll5fg9"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "phhok8"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod133" {
#     rest_api_id = "2b2jbby97i"
#     resource_id = "ll5fg9"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod134" {
#     rest_api_id = "2b2jbby97i"
#     resource_id = "614aoy"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod135" {
#     rest_api_id = "2b2jbby97i"
#     resource_id = "invuot"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "phhok8"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod136" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "zuclh8"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod137" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "jax5az"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod138" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "jax5az"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod139" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "m3w77z"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod140" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "1sgsgu"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod141" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "1sgsgu"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod142" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "6dfg2s"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod143" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "dpdm05"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod144" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "6dfg2s"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod145" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "b9r4ne"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod146" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "dpdm05"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod147" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "htq3t6"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod148" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "m3w77z"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod149" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "zuclh8"
#     http_method = "DELETE"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod150" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "b9r4ne"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod151" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "dpdm05"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod152" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "1sgsgu"
#     http_method = "DELETE"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod153" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "zuclh8"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod154" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "6dfg2s"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod155" {
#     rest_api_id = "c7mu3wocl7"
#     resource_id = "htq3t6"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "kr6odh"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod156" {
#     rest_api_id = "teedu4ctw7"
#     resource_id = "65iafp"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "o759vi"
#     api_key_required = false
#     request_parameters {
#         method.request.path.projectid = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod157" {
#     rest_api_id = "teedu4ctw7"
#     resource_id = "9qtk7k"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "o759vi"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod158" {
#     rest_api_id = "teedu4ctw7"
#     resource_id = "65iafp"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod159" {
#     rest_api_id = "teedu4ctw7"
#     resource_id = "9qtk7k"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod160" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "69x9yj"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod161" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "69x9yj"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.hostedpage_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod162" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "9vcxo9"
#     http_method = "DELETE"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod163" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "zsvik5"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod164" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "zyt888"
#     http_method = "POST"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod165" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "knp93f"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     authorization_scopes = [
#         "o3jefs0gmi.execute-api.us-east-2.amazonaws.com/appsumo.notify"
#     ]
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod166" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "knp93f"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod167" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "laybh3"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod168" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "j6v4es"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod169" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "ozexcl"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod170" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "ozexcl"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod171" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "t6eiuo"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod172" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "s1wirh"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod173" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "mtvqgj"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod174" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "laybh3"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod175" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "mtvqgj"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod176" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "mywswa"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod177" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "mywswa"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod178" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "9vcxo9"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod179" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "s1wirh"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod180" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "tgnnyu"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod181" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "zsvik5"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod182" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "t6eiuo"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod183" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "v32j2j"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod184" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "v32j2j"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod185" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "x83kdi"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod186" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "xqvt7z"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod187" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "x83kdi"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod188" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "tgnnyu"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod189" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "eicam5"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
#     request_parameters {
#         method.request.path.subscription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod190" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "j6v4es"
#     http_method = "POST"
#     authorization = "NONE"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod191" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "tgnnyu"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod192" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "9vcxo9"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod193" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "eicam5"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod194" {
#     rest_api_id = "o3jefs0gmi"
#     resource_id = "xqvt7z"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "w680lu"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod195" {
#     rest_api_id = "3ccuijlcej"
#     resource_id = "8uw8z4"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod196" {
#     rest_api_id = "3ccuijlcej"
#     resource_id = "9ndxzf"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod197" {
#     rest_api_id = "3ccuijlcej"
#     resource_id = "9ndxzf"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod198" {
#     rest_api_id = "3ccuijlcej"
#     resource_id = "6tgatl"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0nektn"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod199" {
#     rest_api_id = "3ccuijlcej"
#     resource_id = "6tgatl"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod200" {
#     rest_api_id = "3ccuijlcej"
#     resource_id = "8uw8z4"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0nektn"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod201" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "ulf2xp"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod202" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "f9h1ak"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0vpk7m"
#     api_key_required = false
#     request_parameters {
#         method.request.path.response_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod203" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "f9h1ak"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod204" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "ulf2xp"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0vpk7m"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod205" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "be0s5l"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod206" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "8sufyf"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0vpk7m"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod207" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "8sufyf"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod208" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "be0s5l"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0vpk7m"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod209" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "0kowbm"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0vpk7m"
#     api_key_required = false
#     request_parameters {
#         method.request.path.response_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod210" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "0l9ilj"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod211" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "0kowbm"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod212" {
#     rest_api_id = "msn0ql5nd3"
#     resource_id = "0l9ilj"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "0vpk7m"
#     api_key_required = false
#     request_parameters {
#         method.request.path.response_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod213" {
#     rest_api_id = "embl768leg"
#     resource_id = "foiul8"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod214" {
#     rest_api_id = "embl768leg"
#     resource_id = "6kf2px"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3r680j"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod215" {
#     rest_api_id = "embl768leg"
#     resource_id = "foiul8"
#     http_method = "DELETE"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3r680j"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod216" {
#     rest_api_id = "embl768leg"
#     resource_id = "foiul8"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3r680j"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod217" {
#     rest_api_id = "embl768leg"
#     resource_id = "6kf2px"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod218" {
#     rest_api_id = "embl768leg"
#     resource_id = "6kf2px"
#     http_method = "PUT"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3r680j"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod219" {
#     rest_api_id = "embl768leg"
#     resource_id = "im5xl0"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "3r680j"
#     api_key_required = false
#     request_parameters {
#         method.request.path.userid = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod220" {
#     rest_api_id = "embl768leg"
#     resource_id = "im5xl0"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod221" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "0v71tt"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod222" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "0vrey3"
#     http_method = "GET"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod223" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "0vrey3"
#     http_method = "DELETE"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod224" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "0v71tt"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod225" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "0vrey3"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod226" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "v4tp1u"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod227" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "j32vrp"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod228" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "j32vrp"
#     http_method = "DELETE"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod229" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "v4tp1u"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "1l58z6"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod230" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "ebk3mh"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "1l58z6"
#     api_key_required = false
#     request_parameters {
#         method.request.header.X-Hootsuite-Refresh-Token = false
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod231" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "j32vrp"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "1l58z6"
#     api_key_required = false
#     request_parameters {
#         method.request.path.id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod232" {
#     rest_api_id = "aaf3byz721"
#     resource_id = "ebk3mh"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod233" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "4hcvxn"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#         method.request.path.transcription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod234" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "4hcvxn"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#         method.request.path.transcription_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod235" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "fiik0q"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod236" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "qg7v9w"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod237" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "fiik0q"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod238" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "krnfef"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod239" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "8zjy6r"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod240" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "064f4o"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod241" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "qg7v9w"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod242" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "xt6d0k"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod243" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "qg7v9w"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod244" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "x458x8"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod245" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "x458x8"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.response_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod246" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "xt6d0k"
#     http_method = "GET"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.transcription_job_name = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod247" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "064f4o"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod248" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "9ojv4d"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod249" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "krnfef"
#     http_method = "OPTIONS"
#     authorization = "NONE"
#     api_key_required = false
#     request_parameters {}
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod250" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "9ojv4d"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#     }
# }

# resource "aws_api_gateway_method" "ApiGatewayMethod251" {
#     rest_api_id = "el5m20mh97"
#     resource_id = "8zjy6r"
#     http_method = "POST"
#     authorization = "COGNITO_USER_POOLS"
#     authorizer_id = "imnclg"
#     api_key_required = false
#     request_parameters {
#         method.request.path.project_id = true
#     }
# }
