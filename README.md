# freicoin
Freicoin integration/staging tree http://freico.in/
Skip to main content
Click here to return to Amazon Web Services homepage
Contact Us
Support 
English 
My Account 
Products Solutions Pricing Documentation Learn Partner Network AWS Marketplace Customer Enablement Events Explore More
How do I use AWSUtility::CloudFormation::CommandRunner to run a command before or after a resource in my CloudFormation stack?
Last updated: 2021-06-15
I want to use AWSUtility::CloudFormation::CommandRunner to run a command before or after a resource in my AWS CloudFormation stack.
Resolution
Note: If you receive errors when running AWS Command Line Interface (AWS CLI) commands, make sure that you’re using the most recent AWS CLI version.
To run a command before or after a resource in your CloudFormation stack, define the AWSUtility::CloudFormation::CommandRunner resource in your CloudFormation template.
For example:
Resources:
CommandRunner:
Type: AWSUtility::CloudFormation::CommandRunner
Properties: 
Command: 'aws ssm get-parameter --name BucketName --region us-east-1 --query Parameter.Value --output text > /command-output.txt'
Role: EC2-Role
LogGroup: my-cloudwatch-log-group
Important: If you haven't already registered the AWSUtility::CloudFormation::CommandRunner resource, then run the following commands. The register.sh script uses the awsutility-cloudformation-commandrunner.zip to register the resource type in your AWS Region. The script uses the register-type AWS CLI command to register the resource type in the default Region configured in the AWS CLI. You can check the configured default Region by running aws configure get region. For more information about what actions the register.sh script performs, see User Installation Steps on the AWS GitHub repository.
git clone https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-awsutilities-commandrunner.git
cd aws-cloudformation-resource-providers-awsutilities-commandrunner
curl -LO https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-awsutilities-commandrunner/releases/latest/download/awsutility-cloudformation-commandrunner.zip

./scripts/register.sh --set-default
Important: The property Role should be the name of an AWS Identity and Access Management (IAM) instance profile with an associated IAM role. The IAM role must have a trust relationship with the Amazon Elastic Compute Cloud (Amazon EC2) service (ec2.amazonaws.com). The property Role is assumed by the AWSUtility::CloudFormation::CommandRunner resource to run your command. The optional property LogGroup, if specified, writes the logs from your command's execution to the Amazon CloudWatch log group. For more information on using the AWSUtility::CloudFormation::CommandRunner resource in your template, see README.md and docs/README.md from the aws-cloudformation-resource-providers-awsutilities-commandrunner repository on AWS GitHub.
You must include the --region option in your AWS CLI commands. Then, you must write the command's output to a reserved file called /command-output.txt, as in the preceding code example.
You can reference the output of the command using Fn::GetAtt. For example:
S3Bucket: 
    Type: AWS::S3::Bucket
    Properties: 
        BucketName: !GetAtt CommandRunner.Output
To run the command after a resource with the logical name Instance, specify DependsOn: Instance in the AWSUtility::CloudFormation::CommandRunner resource's definition. For example:
Resources:
   CommandRunner:
      DependsOn: Instance
      Type: AWSUtility::CloudFormation::CommandRunner
      Properties:
         Command: aws s3 ls | sed -n 1p | cut -d " " -f3 > /command-output.txt
         LogGroup: my-cloudwatch-log-group
         Role: EC2-Role
   Instance:
      Type: AWS::EC2::Instance
      Properties:
         Image: ami-abcd1234
To run the command before a resource, set DependsOn to the logical name of the AWSUtility::CloudFormation::CommandRunner resource in that resource's definition. For example:
Resources:
   CommandRunner:
      Type: AWSUtility::CloudFormation::CommandRunner
      Properties:
         Command: aws s3 ls | sed -n 1p | cut -d " " -f3 > /command-output.txt
         LogGroup: my-cloudwatch-log-group
         Role: EC2-Role
   Instance:
      DependsOn: CommandRunner
      Type: AWS::EC2::Instance
      Properties:
         Image: ami-abcd1234
'#-''  '-'"{"''  '##Note##'' 'PR_URL :${{github.event.pull_request.html_url}} : GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
+run: gh pr edit "$PR_URL" --add-label "production"
+env:
+PR_URL: ${{github.event.pull_request.html_url}}
+GITHUB_TOKEN: ${{ ((c)(r)).[12753750.[00]m]'_BITORE_34173.1337) ')]}}}'"'' :
+ </git checkout origin/base <file name>
