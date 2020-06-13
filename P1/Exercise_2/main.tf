provider "aws" {
  access_key = ""
  secret_key = ""
  region = var.aws_region
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

# resource "aws_iam_role_policy_attachment" "lambda" {
#   role = aws_iam_role.iam_for_lambda.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
# }

resource "aws_lambda_function" "udacity_lambda" {
  filename      = "greet_lambda.zip"
  function_name = "greet"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "greet_lambda.lambda_handler"

  runtime = "python3.8"

  vpc_config {
    subnet_ids         = ["subnet-5dc22e17"]
    security_group_ids = ["sg-26bd5a74"]
  }

  environment {
    variables = {
      greeting = "everybody!"
    }
  }
}

data "aws_lambda_invocation" "udacity_lambda" {
    function_name = "greet"
    input = ""
}