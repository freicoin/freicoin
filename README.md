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
Note: In the preceding examples, sed -n 1p prints only the first line from the response returned by aws s3 ls. To get the bucket name, sed -n 1p pipes the response to cut -d " " -f3. Then, cut -d " " -f3 chooses the third element in the array created after splitting the line delimited by a space.

Related information
Running bash commands in AWS CloudFormation templates

Did this article help?

Do you need billing or technical support?

Learn About AWS
What Is AWS?
What Is Cloud Computing?
AWS Diversity, Equity & Inclusion
What Is DevOps?
What Is a Container?
What Is a Data Lake?
AWS Cloud Security
What's New
Blogs
Press Releases
Resources for AWS
Getting Started
Training and Certification
AWS Solutions Library
Architecture Center
Product and Technical FAQs
Analyst Reports
AWS Partners
Developers on AWS
Developer Center
SDKs & Tools
.NET on AWS
Python on AWS
Java on AWS
PHP on AWS
JavaScript on AWS
Help
Contact Us
File a Support Ticket
Knowledge Center
AWS re:Post
AWS Support Overview
Legal
AWS Careers
Amazon is an Equal Opportunity Employer: Minority / Women / Disability / Veteran / Gender Identity / Sexual Orientation / Age.
diff --git a/.husky/.gitignore b/.husky/.gitignore
deleted file mode 100644
index 31354ec1389..00000000000
--- a/.husky/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-_
diff --git a/.husly/.sh/bitore.sig b/.husly/.sh/bitore.sig
new file mode 100644
index 00000000000..e67f834feea
--- /dev/null
+++ b/.husly/.sh/bitore.sig
@@ -0,0 +1,16 @@
+ BEGIN:
+ GLOW4:
+ </git checkout origin/main <file name>
+Run'' 'Runs::/Action::/:Build::/scripts::/Run-on :Runs :
+Runs :gh/pages :
+pages :edit "
+$ intuit install 
+PURL" --add-label "production"
+env:
+PR_URL: ${{github.event.pull_request.html_url}}
+GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
+run: gh pr edit "$PR_URL" --add-label "production"
+env:
+PR_URL: ${{github.event.pull_request.html_url}}
+GITHUB_TOKEN: ${{ ((c)(r)).[12753750.[00]m]'_BITORE_34173.1337) ')]}}}'"'' :
+ </git checkout origin/base <file name>
