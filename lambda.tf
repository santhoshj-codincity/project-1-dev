resource "aws_lambda_function" "LambdaFunction" {
    description = ""
    function_name = "lambda-us-e2-dev-customers-stream-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/user-management:lambda.b221f06260441c195caf04849fec8c2e82fe5125"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction2" {
    description = ""
    function_name = "lambda-us-e2-dev-user-project-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:280fcbb4c2cfe55d937df0ddf02e2ebe564dacf7"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction3" {
    description = ""
    function_name = "lambda-us-e2-dev-projects-deleted-partition"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:280fcbb4c2cfe55d937df0ddf02e2ebe564dacf7"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction4" {
    description = ""
    function_name = "lambda-us-e2-dev-article-parser"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/pictory-article-readability-api:lambda.2c4f358cafa486f269ea730a51be160f155341f3"
    memory_size = 2048
    role = aws_iam_role.IAMRole.arn
    timeout = 90
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id,
            aws_subnet.EC2Subnet4.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction5" {
    description = ""
    function_name = "lambda-us-e2-dev-template-styles-dynamodb-stream-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/template-styles:749321cc12e87f8705c284ddc438c7aff6b1d26e"
    memory_size = 256
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction6" {
    description = ""
    function_name = "lambda-us-e2-dev-portal-service"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/portal-service:70b7f488df607c18847c1b7aff42e720c7bd95f1"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction7" {
    description = ""
    function_name = "lambda-us-e2-dev-video-downloader-service"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/video-downloader-service:18027d20281bf8f6fa2fb82ae3ea07f4b08c3809"
    memory_size = 256
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id,
            aws_subnet.EC2Subnet4.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction8" {
    description = ""
    function_name = "lambda-us-e2-dev-projects-dynamodb-migration-worker"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:e97d2efa42a4b3be76f5cc965e92868a9090282c"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction9" {
    description = ""
    function_name = "lambda-us-e2-dev-media-download-transcription"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/video-downloader-service:18027d20281bf8f6fa2fb82ae3ea07f4b08c3809"
    memory_size = 2048
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id,
            aws_subnet.EC2Subnet4.id

        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction10" {
    description = ""
    function_name = "lambda-us-e2-dev-video-posts"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/video-posts:lambda.a3f29257ae95247576e5efecadb4b6f3f3696479"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction11" {
    description = ""
    function_name = "lambda-us-e2-dev-projects-opensearch"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:e19b2e41b936731acc42c11f6fd12f6f76d6a70d"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 3
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction12" {
    description = ""
    function_name = "lambda-us-e2-dev-user-data-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/user-management:lambda.b221f06260441c195caf04849fec8c2e82fe5125"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction13" {
    description = ""
    function_name = "lambda-us-e2-dev-user-images-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/images:8f5a99786e09fddbd2b1abd344457ee3729804f7"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction14" {
    description = ""
    function_name = "lambda-us-e2-dev-template-styles"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/template-styles:749321cc12e87f8705c284ddc438c7aff6b1d26e"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction15" {
    description = ""
    function_name = "lambda-us-e2-dev-s3-convert-media-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/s3-convert-media-trigger:87ed35cb89838220d7eb09280c8e746508e85836"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 30
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction16" {
    description = ""
    function_name = "lambda-us-e2-dev-assets-rank"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/assets-rank:4e1fa32ab0026e703b24c4bbe5ccbba91249da94"
    memory_size = 10240
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction17" {
    description = ""
    function_name = "lambda-us-e2-dev-search-suggestions"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/search-suggestions:6078c4c7ff8cb13e0dcb2f095addd5a886a1f2a5"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction18" {
    description = ""
    function_name = "lambda-us-e2-dev-projects"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:280fcbb4c2cfe55d937df0ddf02e2ebe564dacf7"
    memory_size = 256
    role = aws_iam_role.IAMRole.arn
    timeout = 30
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id,
            aws_subnet.EC2Subnet4.id

        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction19" {
    description = ""
    function_name = "lambda-us-e2-dev-user-brandsettings-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/brandsettings:c1d612b6a27e9bfd7a7908578ffea6302972b562"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction20" {
    description = ""
    function_name = "lambda-us-e2-dev-user-visual-favorites-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/visuals-favorites:e68a58be9607ebc42901108141ef37f147d3f252"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction21" {
    description = ""
    function_name = "lambda-us-e2-dev-asset-search"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/asset-search:lambda.b1a582173bb626899040f92b81b8aa3c1c71f3ff"
    memory_size = 4096
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction22" {
    description = ""
    function_name = "lambda-us-e2-dev-user-tasks-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/tasks:735f904c91966c46a662052e86a33324fb2de0df"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction23" {
    description = ""
    function_name = "lambda-us-e2-dev-brandsettings"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/brandsettings:c1d612b6a27e9bfd7a7908578ffea6302972b562"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction24" {
    description = ""
    function_name = "lambda-us-e2-dev-projects-dynamodb-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:280fcbb4c2cfe55d937df0ddf02e2ebe564dacf7"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 3
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction25" {
    description = ""
    function_name = "lambda-us-e2-dev-projects-table-v1-sync"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:280fcbb4c2cfe55d937df0ddf02e2ebe564dacf7"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction26" {
    description = ""
    function_name = "lambda-us-e2-dev-cognito-pre-auth-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/lambda-cognito-pre-auth-trigger:201b5b438de5eccc1941110c97eb98e1a1855fe6"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 30
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction27" {
    description = ""
    function_name = "lambda-us-e2-dev-visuals-favorites"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/visuals-favorites:e68a58be9607ebc42901108141ef37f147d3f252"
    memory_size = 256
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction28" {
    description = ""
    function_name = "lambda-us-e2-dev-audio-favorites"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/audio-favorites:a71bef18af822758ea10d5e1206b9a6d0bca69ac"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction29" {
    description = ""
    function_name = "lambda-us-e2-dev-user-audio-favorites-cleanup"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/audio-favorites:a71bef18af822758ea10d5e1206b9a6d0bca69ac"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction30" {
    description = ""
    function_name = "lambda-us-e2-dev-visuals-favorites-dynamodb-stream-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/visuals-favorites:e68a58be9607ebc42901108141ef37f147d3f252"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction31" {
    description = ""
    function_name = "lambda-us-e2-dev-cognito-trigger-pre-sign-up-auto-confirm"
    handler = "index.handler"
    architectures = [
        "x86_64"
    ]
    s3_bucket = "awslambda-us-east-2-tasks"
    s3_key = "/snapshots/701488979254/lambda-us-e2-dev-cognito-trigger-pre-sign-up-auto-confirm-bc97898b-59d1-4069-8d42-e3c1332c0da7"
    s3_object_version = "SjuNybB9QUWywIcAaacFHrTX69wdoBA0"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    runtime = "nodejs16.x"
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction32" {
    description = ""
    function_name = "lambda-us-e2-dev-push-notification"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/push-notification:lambda.c875b5d32a0a32f57be836cd1228c2f3fe625785"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction33" {
    description = ""
    environment {
        variables {
            EXECUTION_ENV = "LAMBDA"
            VIDEO_PLAY_BACK_APP_URL = "https://development.d3mm3kd8b2ak8j.amplifyapp.com"
        }
    }
    function_name = "lambda-us-e2-dev-video-clip-worker"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/video-clip-worker:lambda-dev"
    memory_size = 8192
    role = aws_iam_role.IAMRole.arn
    timeout = 600
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id,
            aws_subnet.EC2Subnet4.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction34" {
    description = ""
    function_name = "lambda-us-e2-dev-customer-management"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/user-management:lambda.b221f06260441c195caf04849fec8c2e82fe5125"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 900
    tracing_config {
        mode = "PassThrough"
    }
    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_function" "LambdaFunction35" {
    description = ""
    function_name = "lambda-us-e2-dev-images"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/images:8f5a99786e09fddbd2b1abd344457ee3729804f7"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_function" "LambdaFunction36" {
    description = ""
    function_name = "lambda-us-e2-dev-projects-hierarchy-dynamodb-stream-trigger"
    architectures = [
        "x86_64"
    ]
    image_uri = "701488979254.dkr.ecr.us-east-2.amazonaws.com/projects:e19b2e41b936731acc42c11f6fd12f6f76d6a70d"
    memory_size = 128
    role = aws_iam_role.IAMRole.arn
    timeout = 3
    tracing_config {
        mode = "PassThrough"
    }
}

resource "aws_lambda_permission" "LambdaPermission" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission2" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission3" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission4" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission5" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission6" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission7" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission8" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission9" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission10" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission11" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission12" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission13" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission14" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission15" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission16" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission17" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission18" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission19" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission20" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission21" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission22" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission23" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission24" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission25" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission26" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission27" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission28" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission29" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission30" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission31" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission32" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction21.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi14.arn
}

resource "aws_lambda_permission" "LambdaPermission33" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction6.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi18.arn
}

resource "aws_lambda_permission" "LambdaPermission34" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction6.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi18.arn
}

resource "aws_lambda_permission" "LambdaPermission35" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction35.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi3.arn
}

resource "aws_lambda_permission" "LambdaPermission36" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction35.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi3.arn
}

resource "aws_lambda_permission" "LambdaPermission37" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction35.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi3.arn
}

resource "aws_lambda_permission" "LambdaPermission38" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction35.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi3.arn
}

resource "aws_lambda_permission" "LambdaPermission39" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction35.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi3.arn
}

resource "aws_lambda_permission" "LambdaPermission40" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction7.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi19.arn
}

resource "aws_lambda_permission" "LambdaPermission41" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction7.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi19.arn
}

resource "aws_lambda_permission" "LambdaPermission42" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction7.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi19.arn
}

resource "aws_lambda_permission" "LambdaPermission43" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction10.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi11.arn
}

resource "aws_lambda_permission" "LambdaPermission44" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction10.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi11.arn
}

resource "aws_lambda_permission" "LambdaPermission45" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction10.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi11.arn
}

resource "aws_lambda_permission" "LambdaPermission46" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction10.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi11.arn
}

resource "aws_lambda_permission" "LambdaPermission47" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction23.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi20.arn
}

resource "aws_lambda_permission" "LambdaPermission48" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction23.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi20.arn
}

resource "aws_lambda_permission" "LambdaPermission49" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission50" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission51" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission52" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission53" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission54" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission55" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission56" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission57" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction14.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi2.arn
}

resource "aws_lambda_permission" "LambdaPermission58" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction15.arn}"
    principal = "s3.amazonaws.com"
    source_arn = aws_s3_bucket.create-s3-bucket-2.arn
}

resource "aws_lambda_permission" "LambdaPermission59" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction16.arn}"
    principal = "events.amazonaws.com"
    source_arn = "arn:aws:events:us-east-2:701488979254:rule/rule-us-e2-dev-lambda-us-e2-dev-assets-rank-warmup"
}

resource "aws_lambda_permission" "LambdaPermission60" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction17.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi15.arn
}

resource "aws_lambda_permission" "LambdaPermission61" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission62" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission63" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission64" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission65" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission66" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission67" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission68" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission69" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission70" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission71" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission72" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission73" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission74" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission75" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction28.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi8.arn
}

resource "aws_lambda_permission" "LambdaPermission76" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission77" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission78" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission79" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission80" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission81" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission82" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission83" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission84" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission85" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission86" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission87" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission88" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission89" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission90" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission91" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission92" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission93" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission94" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission95" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission96" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction34.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi5.arn
}

resource "aws_lambda_permission" "LambdaPermission97" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission98" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission99" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission100" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission101" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission102" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission103" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission104" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission105" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission106" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission107" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission108" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission109" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission110" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission111" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction18.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi10.arn
}

resource "aws_lambda_permission" "LambdaPermission112" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction32.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:us-east-2:701488979254:sb6ke6v2gi/*/$connect"
}

resource "aws_lambda_permission" "LambdaPermission113" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction32.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:us-east-2:701488979254:sb6ke6v2gi/*/$disconnect"
}

resource "aws_lambda_permission" "LambdaPermission114" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction32.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:us-east-2:701488979254:sb6ke6v2gi/*/$default"
}

resource "aws_lambda_permission" "LambdaPermission115" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction31.arn}"
    principal = "cognito-idp.amazonaws.com"
    source_arn = "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
}

resource "aws_lambda_permission" "LambdaPermission116" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission117" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission118" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission119" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission120" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission121" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission122" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission123" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission124" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission125" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission126" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission127" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction27.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = aws_api_gateway_rest_api.ApiGatewayRestApi7.arn
}

resource "aws_lambda_permission" "LambdaPermission128" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction26.arn}"
    principal = "cognito-idp.amazonaws.com"
    source_arn = "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
}
