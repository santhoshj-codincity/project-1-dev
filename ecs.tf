resource "aws_ecs_cluster" "ECSCluster" {
    name = "cluster-us-e2-dev-pictory-api"
}

resource "aws_ecs_service" "ECSService" {
    name = "service-us-e2-dev-media-resources"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup6.arn
        container_name = "media-resources-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-l6fdximxtgynm4bb"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition5.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 5
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService2" {
    name = "service-us-e2-dev-summarizer"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup9.arn
        container_name = "summarizer-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-vcu3df6couxeyp35"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition3.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 5
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService3" {
    name = "service-us-e2-dev-asset-search"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup.arn
        container_name = "asset-search-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-5yyk7k7brmzzvzwv"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition7.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 5
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService4" {
    name = "service-us-e2-dev-article-parser"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup8.arn
        container_name = "article-parser-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-gyim3oemr3fgzz47"
    }
    desired_count = 0
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "arn:aws:ecs:us-east-2:701488979254:task-definition/tdef-us-e2-dev-article-parser:58"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService5" {
    name = "service-us-e2-dev-push-notification"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup7.arn
        container_name = "push-notification-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-jzcfrfnlanme5odu"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition4.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService6" {
    name = "service-us-e2-dev-transcribe"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup10.arn
        container_name = "transcribe-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-lsvk4pxsg7utezdb"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition2.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService7" {
    name = "service-us-e2-dev-video-generation"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup15.arn
        container_name = "video-generation-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-jzzhy52xbw45f5pn"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService8" {
    name = "service-us-e2-dev-audio"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup5.arn
        container_name = "audio-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-hac5vs4yqxhjqhbu"
    }
    desired_count = 1
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "${aws_ecs_task_definition.ECSTaskDefinition6.arn}"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 5
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService9" {
    name = "service-us-e2-dev-customer-management"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup4.arn
        container_name = "customer-management-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-hlhkov6wfq3p7usl"
    }
    desired_count = 0
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "arn:aws:ecs:us-east-2:701488979254:task-definition/tdef-us-e2-dev-customer-management:57"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService10" {
    name = "service-us-e2-dev-video-posts"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup12.arn
        container_name = "video-posts-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-i5tmqu7gmkeksu7b"
    }
    desired_count = 0
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "arn:aws:ecs:us-east-2:701488979254:task-definition/tdef-us-e2-dev-video-posts:16"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 5
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService11" {
    name = "service-us-e2-dev-uploader"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup11.arn
        container_name = "uploader-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-op3ywquer6yp5j2t"
    }
    desired_count = 0
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "arn:aws:ecs:us-east-2:701488979254:task-definition/tdef-us-e2-dev-uploader:6"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 0
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_service" "ECSService12" {
    name = "service-us-e2-dev-assets-rank"
    cluster = aws_ecs_cluster.ECSCluster.id
    load_balancer {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup3.arn
        container_name = "assets-rank-container"
        container_port = 5000
    }
    service_registries {
        registry_arn = "arn:aws:servicediscovery:us-east-2:701488979254:service/srv-yy6csm2xqizqmegf"
    }
    desired_count = 0
    launch_type = "FARGATE"
    platform_version = "LATEST"
    task_definition = "arn:aws:ecs:us-east-2:701488979254:task-definition/tdef-us-e2-dev-assets-rank:16"
    deployment_maximum_percent = 200
    deployment_minimum_healthy_percent = 100
    iam_role = "arn:aws:iam::701488979254:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
    network_configuration {
        assign_public_ip = "DISABLED"
        security_groups = [
            aws_security_group.lb.id
        ]
        subnets = [
            aws_subnet.EC2Subnet3.id,
			aws_subnet.EC2Subnet4.id
        ]
    }
    health_check_grace_period_seconds = 300
    scheduling_strategy = "REPLICA"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition" {
    container_definitions = "[{\"name\":\"video-generation-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/video-generation:eb6d32d3e092ea3c7ffe1d3f176c07287913ba55\",\"cpu\":2048,\"memory\":4096,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"ECS_EC2_CLUSTER\",\"value\":\"ec2cluster-us-e2-dev-video-generation\"},{\"name\":\"ECS_TASK_DEFINITION_VIDEO_CLIP_WORKER_30GB\",\"value\":\"tdef-us-e2-dev-video-clip-worker-30gb:1\"},{\"name\":\"VIDEO_CLIP_LAMBDA_FUNCTION\",\"value\":\"video-clip-worker-pictorydev\"},{\"name\":\"OPEN_SHOT_USER\",\"value\":\"cloud-admin\"},{\"name\":\"OPEN_SHOT_USER_PASSWORD\",\"value\":\"P9nx4qD39E\"},{\"name\":\"TASKS_FUNCTION\",\"value\":\"tasks-pictorydev\"},{\"name\":\"ECS_TASK_DEFINITION_HAND_BRAKE_CLI_WORKER\",\"value\":\"tdef-us-e2-dev-handbrake-cli-worker:1\"},{\"name\":\"ECS_TASK_DEFINITION_STATUS_WORKER\",\"value\":\"tdef-us-e2-dev-video-gen-status-worker:4\"},{\"name\":\"ECS_TASK_DEFINITION_GENERATE_VIDEO_WORKER\",\"value\":\"tdef-us-e2-dev-gen-video-worker:6\"},{\"name\":\"ECS_EC2_TASK_DEFINITION_VIDEO_CLIP_WORKER_6GB\",\"value\":\"tdef-us-e2-dev-ec2-video-clip-worker-6gb:1\"},{\"name\":\"VIDEO_PLAY_BACK_APP_URL\",\"value\":\"https://development.d3mm3kd8b2ak8j.amplifyapp.com\"},{\"name\":\"ECS_EC2_TASK_DEFINITION_VIDEO_CLIP_WORKER_8GB\",\"value\":\"tdef-us-e2-dev-ec2-video-clip-worker-8gb:2\"},{\"name\":\"PROJECTS_FUNCTION\",\"value\":\"lambda-us-e2-dev-projects\"},{\"name\":\"FARGATE_VIDEO_GENERATION\",\"value\":\"True\"},{\"name\":\"CUSTOMER_MANAGEMENT_LAMDA\",\"value\":\"lambda-us-e2-dev-customer-management\"},{\"name\":\"ECS_TASK_DEFINITION_VIDEO_CLIP_WORKER_16GB\",\"value\":\"tdef-us-e2-dev-video-clip-worker-16gb:1\"},{\"name\":\"PROJECTS_CLIP_TABLE\",\"value\":\"project-clips-dev\"},{\"name\":\"APP_URL\",\"value\":\"https://dev.pictory.ai\"},{\"name\":\"ECS_EC2_TASK_DEFINITION_GENERATE_VIDEO_WORKER\",\"value\":\"tdef-us-e2-dev-ec2-gen-video-worker:1\"},{\"name\":\"ECS_TASK_DEFINITION_VIDEO_CLIP_WORKER_8GB_2CPU\",\"value\":\"tdef-us-e2-dev-video-clip-worker-8gb-2cpu:1\"},{\"name\":\"ECS_TASK_DEFINITION_VIDEO_CLIP_WORKER_8GB\",\"value\":\"tdef-us-e2-dev-video-clip-worker-8gb:1\"},{\"name\":\"OPEN_SHOT_URL\",\"value\":\"http://18.116.203.252\"},{\"name\":\"ECS_TASK_DEFINITION_VIDEO_CLIP_WORKER\",\"value\":\"tdef-us-e2-dev-video-clip-worker:6\"},{\"name\":\"LAMBDA_VIDEO_CLIP_WORKER\",\"value\":\"lambda-us-e2-dev-video-clip-worker\"},{\"name\":\"PUSH_NOTIFICATION_SERVICE\",\"value\":\"http://push-notification.dev:5000\"},{\"name\":\"VIDEO_POSTS_LAMBDA\",\"value\":\"lambda-us-e2-dev-video-posts\"},{\"name\":\"AMPLITUDE_API_KEY\",\"value\":\"7b6997468ddb8b2eaafb22809cc659f5\"},{\"name\":\"ECS_CLUSTER\",\"value\":\"cluster-us-e2-dev-pictory-api\"},{\"name\":\"ECS_TASK_DEFINITION_VIDEO_CLIP_WORKER_16GB_2CPU\",\"value\":\"tdef-us-e2-dev-video-clip-worker-16gb-2cpu:1\"},{\"name\":\"CUSTOMER_MANAGEMENT_SERVICE\",\"value\":\"http://cust-management.dev:5000\"},{\"name\":\"ECS_EC2_TASK_DEFINITION_VIDEO_CLIP_WORKER_16GB\",\"value\":\"tdef-us-e2-dev-ec2-video-clip-worker-16gb:1\"},{\"name\":\"ECS_CLUSTERS\",\"value\":\"[\\\"cluster-us-e2-prod-video-generation-1\\\",\\\"cluster-us-e2-prod-video-generation-2\\\",\\\"cluster-us-e2-prod-video-generation-3\\\"]\"},{\"name\":\"VIDEO_POSTS_SERVICE\",\"value\":\"http://video-posts.dev:5000\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-video-generation\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-video-generation"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "2048"
    memory = "4096"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition2" {
    container_definitions = "[{\"name\":\"transcribe-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/transcribe:7ef5efaebd1992ae8c4ca1a38a84ee7d33c2816a\",\"cpu\":4096,\"memoryReservation\":8192,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"ECS_CLUSTER\",\"value\":\"cluster-us-e2-dev-pictory-api\"},{\"name\":\"AWS_ACCESS_KEY_ID\",\"value\":\"AKIA2GVAALU3HFB6AF7Q\"},{\"name\":\"SUMMARIZATION_SERVICE\",\"value\":\"http://summarizer.dev:5000\"},{\"name\":\"AWS_SECRET_ACCESS_KEY\",\"value\":\"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\"},{\"name\":\"CUSTOMER_MANAGEMENT_SERVICE\",\"value\":\"http://customer-management.dev:5000\"},{\"name\":\"PROJECTS_FUNCTION\",\"value\":\"lambda-us-e2-dev-projects\"},{\"name\":\"CUSTOMER_MANAGEMENT_LAMDA\",\"value\":\"lambda-us-e2-dev-customer-management\"},{\"name\":\"ECS_TASK_DEFINITION_HAND_BRAKE_CLI_WORKER\",\"value\":\"tdef-us-e2-dev-handbrake-cli-worker:1\"},{\"name\":\"APP_BUCKET\",\"value\":\"brand-settings-images74751-pictorydev\"},{\"name\":\"APP_URL\",\"value\":\"https://dev.pictory.ai\"},{\"name\":\"PUSH_NOTIFICATION_SERVICE\",\"value\":\"http://push-notification.dev:5000\"},{\"name\":\"ECS_TASK_DEFINITION_SIXTEEN_GB_HAND_BRAKE_CLI_WORKER\",\"value\":\"tdef-us-e2-dev-16-GB-handbrake-cli-worker:1\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-transcribe\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-transcribe"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "4096"
    memory = "8192"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition3" {
    container_definitions = "[{\"name\":\"summarizer-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/summarizer:056346c0a1337e06d9bdb317a66c14c172966782\",\"cpu\":1024,\"memoryReservation\":8192,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"ASSET_SEARCH_SERVICE\",\"value\":\"http://asset-search.dev:5000\"},{\"name\":\"ARTICLE_PARSER_FUNCTION\",\"value\":\"lambda-us-e2-dev-article-parser\"},{\"name\":\"BERT_EXTRACT_EMBEDDINGS_LAMBDA\",\"value\":\"bert-extract-embeddings-pictorydev\"},{\"name\":\"ARTICLE_PARSER_SERVICE\",\"value\":\"http://article-parser.dev:5000\"},{\"name\":\"PUSH_NOTIFICATION_SERVICE\",\"value\":\"http://push-notification.dev:5000\"},{\"name\":\"TRANSCRIBE_SERVICE\",\"value\":\"http://transcribe.dev:5000\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-summarizer\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-summarizer"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "8192"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition4" {
    container_definitions = "[{\"name\":\"push-notification-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/push-notification:f1368ba1d1038853617870b0a3ac30c4f0ded573\",\"cpu\":512,\"memoryReservation\":2048,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"WEB_SOCKET_DOMAIN\",\"value\":\"sb6ke6v2gi.execute-api.us-east-2.amazonaws.com\"},{\"name\":\"AWS_ACCESS_KEY\",\"value\":\"AKIA2GVAALU3NFG2KQV7\"},{\"name\":\"WEB_SOCKET_ENDPOINT\",\"value\":\"dev/@connections/\"},{\"name\":\"CONNECTIONS_TABLE\",\"value\":\"wsConnections-pictorydev\"},{\"name\":\"AWS_ACCESS_SECRET\",\"value\":\"PFLTIN41KlBQziZOXVx0EvjMnRwOTAyb9Mlcp6wn\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-push-notification\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-push-notification"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "512"
    memory = "2048"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition5" {
    container_definitions = "[{\"name\":\"media-resources-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/media-resources:4e475b89aaf79bf7871528f9ac34e3e274804229\",\"cpu\":512,\"memoryReservation\":2048,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"MEDIA_TABLE\",\"value\":\"media-pictorydev\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-media-resources\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-media-resources"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "512"
    memory = "2048"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition6" {
    container_definitions = "[{\"name\":\"audio-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/audio:90a3786ea756e8e0d39143074920843bd27e5366\",\"cpu\":4096,\"memoryReservation\":8192,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"POLLY_TABLE\",\"value\":\"polly-dev\"},{\"name\":\"AWS_REGION\",\"value\":\"us-east-2\"},{\"name\":\"PUSH_NOTIFICATION_SERVICE\",\"value\":\"http://push-notification.dev:5000\"},{\"name\":\"GOOGLE_APPLICATION_CREDENTIALS\",\"value\":\"service-account-file.json\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-audio\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-audio"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "4096"
    memory = "8192"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition7" {
    container_definitions = "[{\"name\":\"asset-search-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/asset-search:b1a582173bb626899040f92b81b8aa3c1c71f3ff\",\"cpu\":1024,\"memoryReservation\":4096,\"portMappings\":[{\"containerPort\":5000,\"hostPort\":5000,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"ASSETS_RANK_SERVICE\",\"value\":\"http://assets-rank.dev:5000\"},{\"name\":\"IMAGE_PROXY\",\"value\":\"https://api.pictory.ai/asset-search\"},{\"name\":\"MEDIA_TABLE\",\"value\":\"media-pictorydev\"},{\"name\":\"ASSETS_RANK_LAMBDA\",\"value\":\"lambda-us-e2-dev-assets-rank\"},{\"name\":\"PUSH_NOTIFICATION_SERVICE\",\"value\":\"http://push-notification.dev:5000\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-asset-search\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
    family = "tdef-us-e2-dev-asset-search"
    task_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    execution_role_arn = "arn:aws:iam::701488979254:role/ecsTaskExecutionRole"
    network_mode = "awsvpc"
    requires_compatibilities = [
        "FARGATE"
    ]
    cpu = "1024"
    memory = "4096"
}
