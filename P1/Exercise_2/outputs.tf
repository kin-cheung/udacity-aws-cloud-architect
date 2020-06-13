# TODO: Define the output variable for the lambda function.
output  "greets" {
  value       = data.aws_lambda_invocation.udacity_lambda.result
}