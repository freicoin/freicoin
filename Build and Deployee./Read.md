# freicoin#Build and Deploy.md :
#bitpre.sig :
Bitore.sigs/my.sig :
const :construction :
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
Typ e:DOCKER.Gui.sng : :
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
一次Elasticsearch的启动和关闭日志
Lai JianFeng edited this page on Jan 8, 2019 · 2 revisions
 Pages 2
Find a page…
Home
一次Elasticsearch的启动和关闭日志
环境信息
Clone this wiki locally
https://github.com/whirlys/Elastic-In-Practice.wiki.git
环境信息
系统：Windows7
Elasticsearch版本：6.3.2
本节点名称：node-2
集群中另外一个节点：master:9300（节点名称：node-1）
日志级别：debug
注意：日志中前面大部分都是 JarHell 检查重复类文件的日志，直接跳到后面看启动和关闭日志即可

"C:\Program Files\Java\jdk1.8.0_161\bin\java.exe" -Des.path.conf=E:\Test-workstation\elasticsearch-6.3.2\config -Des.path.home=E:\Test-workstation\elasticsearch-6.3.2 -Dlog4j2.disable.jmx=true -Djava.security.policy=E:\Test-workstation\elasticsearch-6.3.2\config\java.policy -Xms2g -Xmx2g "-javaagent:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar=2579:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\bin" -Dfile.encoding=UTF-8 -classpath "C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar;E:\Test-workstation\elasticsearch\server\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main;E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar;E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar" org.elasticsearch.bootstrap.Elasticsearch
[2019-01-08T21:58:11,821][DEBUG][o.e.b.JNAKernel32Library ] windows/Kernel32 library loaded
[2019-01-08T21:58:11,911][DEBUG][o.e.b.SystemCallFilter   ] Windows ActiveProcessLimit initialization successful
[2019-01-08T21:58:11,916][DEBUG][o.e.b.JNANatives         ] console ctrl handler correctly set
[2019-01-08T21:58:11,936][DEBUG][o.e.b.JarHell            ] java.class.path: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar;E:\Test-workstation\elasticsearch\server\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main;E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar;E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar;C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:11,942][DEBUG][o.e.b.JarHell            ] sun.boot.class.path: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\sunrsasign.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_161\jre\classes
[2019-01-08T21:58:11,943][DEBUG][o.e.b.JarHell            ] classloader urls: [file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/charsets.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/deploy.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/access-bridge-64.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/cldrdata.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/dnsns.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/jaccess.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/jfxrt.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/localedata.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/nashorn.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunec.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunjce_provider.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunmscapi.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunpkcs11.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/zipfs.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/javaws.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jce.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jfr.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jfxswt.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jsse.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/management-agent.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/plugin.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/resources.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/rt.jar, file:/E:/Test-workstation/elasticsearch/server/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/libs/x-content/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/server/cli/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/libs/elasticsearch-core/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/libs/plugin-classloader/build-idea/classes/main/, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-core/7.3.1/ce76b4aef66ffe0830afefb2b347028a4fc9eb36/lucene-core-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-analyzers-common/7.3.1/51b62b22f4193bfa386f5ca0c978c68821a12bc0/lucene-analyzers-common-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-backward-codecs/7.3.1/c9bded879284d12b66eb8df112b6f69078616bb6/lucene-backward-codecs-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-grouping/7.3.1/ebb5344ee066bbb6031164dcf4e690d5a4ea62a5/lucene-grouping-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-highlighter/7.3.1/1e945c65876a1eab97a5db40e92c981c5a65915/lucene-highlighter-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-join/7.3.1/e866b2c36555cff48f31a427efbfd52466418504/lucene-join-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-memory/7.3.1/12b7520cfb0c83d4d9e4efde6ad1812693f91acd/lucene-memory-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-misc/7.3.1/2ce12b8828f29c8e5dd9eeef05333705befc9342/lucene-misc-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-queries/7.3.1/d531efe427da6cb41a9aa52854be4dd241227a19/lucene-queries-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-queryparser/7.3.1/51e4cde15df3ab4534a6407598cfb5c7ce7d21ac/lucene-queryparser-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-sandbox/7.3.1/ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5/lucene-sandbox-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-spatial/7.3.1/6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec/lucene-spatial-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-spatial-extras/7.3.1/7ff14f7c7b8e2fb7259e925949f51122cbc873c4/lucene-spatial-extras-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-spatial3d/7.3.1/db59b01557dd4abb1a469d857e2a96b3c3aa6365/lucene-spatial3d-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-suggest/7.3.1/5255e5bec27f078ca89cdc44b9614e3295b51607/lucene-suggest-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.carrotsearch/hppc/0.7.1/8b5057f74ea378c0150a1860874a3ebdcb713767/hppc-0.7.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/joda-time/joda-time/2.9.9/f7b520c458572890807d143670c9b24f4de90897/joda-time-2.9.9.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.tdunning/t-digest/3.2/2ab94758b0276a8a26102adf8d528cf6d0567b9a/t-digest-3.2.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.hdrhistogram/HdrHistogram/2.1.9/e4631ce165eb400edecfa32e03d3f1be53dee754/HdrHistogram-2.1.9.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.locationtech.spatial4j/spatial4j/0.7/faa8ba85d503da4ab872d17ba8c00da0098ab2f2/spatial4j-0.7.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.locationtech.jts/jts-core/1.15.0/705981b7e25d05a76a3654e597dab6ba423eb79e/jts-core-1.15.0.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.logging.log4j/log4j-api/2.9.1/7a2999229464e7a324aa503c0a52ec0f05efe7bd/log4j-api-2.9.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.logging.log4j/log4j-core/2.9.1/c041978c686866ee8534f538c6220238db3bb6be/log4j-core-2.9.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.logging.log4j/log4j-1.2-api/2.9.1/894f96d677880d4ab834a1356f62b875e579caaa/log4j-1.2-api-2.9.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.elasticsearch/jna/4.5.1/da10908ae23dc59b19dc258e63aea1c44621dc3a/jna-4.5.1.jar, file:/E:/Test-workstation/elasticsearch/libs/secure-sm/build-idea/classes/main/, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.yaml/snakeyaml/1.17/7a27ea250c5130b2922b86dea63cbb1cc10a660c/snakeyaml-1.17.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.core/jackson-core/2.8.10/eb21a035c66ad307e66ec8fce37f5d50fd62d039/jackson-core-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.dataformat/jackson-dataformat-smile/2.8.10/e853081fadaad3e98ed801937acc3d8f77580686/jackson-dataformat-smile-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.dataformat/jackson-dataformat-yaml/2.8.10/1e08caf1d787c825307d8cc6362452086020d853/jackson-dataformat-yaml-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.dataformat/jackson-dataformat-cbor/2.8.10/1c58cc9313ddf19f0900cd61ed044874278ce320/jackson-dataformat-cbor-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/net.sf.jopt-simple/jopt-simple/5.0.2/98cafc6081d5632b61be2c9e60650b64ddbc637c/jopt-simple-5.0.2.jar, file:/C:/Program%20Files/JetBrains/IntelliJ%20IDEA%202018.2.1/lib/idea_rt.jar]
[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:13,075][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:13,091][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:13,095][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:13,106][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:13,109][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:13,115][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:13,119][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:13,120][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:13,122][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:13,124][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:13,125][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:13,127][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:13,129][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:13,132][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:13,134][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:13,138][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:13,140][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:13,142][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:13,144][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:13,145][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:13,148][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:13,150][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:13,152][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:13,153][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:13,155][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:13,158][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:13,160][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:13,163][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:13,165][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:13,167][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:13,170][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:13,172][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:13,174][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:13,175][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:13,177][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:13,179][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:13,181][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:14,069][DEBUG][o.e.c.n.IfConfig         ] configuration:

lo
        Software Loopback Interface 1
        inet 127.0.0.1 netmask:255.0.0.0 broadcast:127.255.255.255 scope:host
        inet6 ::1 prefixlen:128 scope:host
        UP MULTICAST LOOPBACK mtu:-1 index:1

net0
        WAN Miniport (SSTP)
        MULTICAST mtu:-1 index:2

net1
        WAN Miniport (L2TP)
        MULTICAST mtu:-1 index:3

net2
        WAN Miniport (PPTP)
        MULTICAST mtu:-1 index:4

ppp0
        WAN Miniport (PPPOE)
        MULTICAST mtu:-1 index:5

eth0
        WAN Miniport (IPv6)
        MULTICAST mtu:-1 index:6

eth1
        WAN Miniport (Network Monitor)
        MULTICAST mtu:-1 index:7

eth2
        WAN Miniport (IP)
        MULTICAST mtu:-1 index:8

ppp1
        RAS Async Adapter
        MULTICAST mtu:-1 index:9

net3
        WAN Miniport (IKEv2)
        MULTICAST mtu:-1 index:10

eth3
        Realtek PCIe GBE Family Controller
        MULTICAST mtu:-1 index:11

net4
        Microsoft ISATAP Adapter
        inet6 fe80::5efe:a64:6376 prefixlen:128 scope:link
        hardware 00:00:00:00:00:00:00:E0
        POINTOPOINT mtu:1280 index:12

eth4
        Realtek PCIe GBE Family Controller #2
        inet 10.100.99.118 netmask:255.255.252.0 broadcast:10.100.99.255 scope:site
        inet6 fe80::c41a:a386:9e78:6936 prefixlen:64 scope:link
        hardware B0:83:FE:70:07:B5
        UP MULTICAST mtu:1500 index:13

eth5
        VirtualBox Host-Only Ethernet Adapter
        inet 192.168.56.1 netmask:255.255.255.0 broadcast:192.168.56.255 scope:site
        inet6 fe80::ad6b:7c6a:73b4:9964 prefixlen:64 scope:link
        hardware 0A:00:27:00:00:0E
        UP MULTICAST mtu:1500 index:14

net5
        Microsoft ISATAP Adapter #2
        inet6 fe80::5efe:c0a8:3801 prefixlen:128 scope:link
        hardware 00:00:00:00:00:00:00:E0
        POINTOPOINT mtu:1280 index:15

net6
        Teredo Tunneling Pseudo-Interface
        inet6 fe80::100:7f:fffe prefixlen:64 scope:link
        hardware 00:00:00:00:00:00:00:E0
        POINTOPOINT mtu:1280 index:16

eth6
        Realtek PCIe GBE Family Controller #2-VirtualBox NDIS Light-Weight Filter-0000
        MULTICAST mtu:-1 index:17

eth7
        Realtek PCIe GBE Family Controller #2-QoS Packet Scheduler-0000
        MULTICAST mtu:-1 index:18

eth8
        Realtek PCIe GBE Family Controller #2-WFP LightWeight Filter-0000
        MULTICAST mtu:-1 index:19

eth9
        WAN Miniport (Network Monitor)-QoS Packet Scheduler-0000
        MULTICAST mtu:-1 index:20

eth10
        WAN Miniport (IP)-QoS Packet Scheduler-0000
        MULTICAST mtu:-1 index:21

eth11
        WAN Miniport (IPv6)-QoS Packet Scheduler-0000
        MULTICAST mtu:-1 index:22

eth12
        VirtualBox Host-Only Ethernet Adapter-QoS Packet Scheduler-0000
        MULTICAST mtu:-1 index:23

eth13
        VirtualBox Host-Only Ethernet Adapter-WFP LightWeight Filter-0000
        MULTICAST mtu:-1 index:24

[2019-01-08T21:58:14,313][INFO ][o.e.n.Node               ] [node-2] initializing ...
[2019-01-08T21:58:14,467][DEBUG][o.e.e.NodeEnvironment    ] [node-2] using node location [[NodePath{path=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0, indicesPath=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices, fileStore=(E:), majorDeviceNumber=-1, minorDeviceNumber=-1}]], local_lock_id [0]
[2019-01-08T21:58:14,470][DEBUG][o.e.e.NodeEnvironment    ] [node-2] node data locations details:
 -> E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0, free_space [142.4gb], usable_space [142.4gb], total_space [300.9gb], mount [(E:)], type [NTFS]
[2019-01-08T21:58:14,470][INFO ][o.e.e.NodeEnvironment    ] [node-2] heap size [1.9gb], compressed ordinary object pointers [true]
[2019-01-08T21:58:14,522][INFO ][o.e.n.Node               ] [node-2] node name [node-2], node ID [1yGidog0S6KySrLcql7o7Q]
[2019-01-08T21:58:14,522][INFO ][o.e.n.Node               ] [node-2] version[6.3.2-SNAPSHOT], pid[10708], build[unknown/unknown/Unknown/Unknown], OS[Windows 7/6.1/amd64], JVM[Oracle Corporation/Java HotSpot(TM) 64-Bit Server VM/1.8.0_161/25.161-b12]
[2019-01-08T21:58:14,523][INFO ][o.e.n.Node               ] [node-2] JVM arguments [-Des.path.conf=E:\Test-workstation\elasticsearch-6.3.2\config, -Des.path.home=E:\Test-workstation\elasticsearch-6.3.2, -Dlog4j2.disable.jmx=true, -Djava.security.policy=E:\Test-workstation\elasticsearch-6.3.2\config\java.policy, -Xms2g, -Xmx2g, -javaagent:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar=2579:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\bin, -Dfile.encoding=UTF-8]
[2019-01-08T21:58:14,523][WARN ][o.e.n.Node               ] [node-2] version [6.3.2-SNAPSHOT] is a pre-release version of Elasticsearch and is not suitable for production
[2019-01-08T21:58:14,523][DEBUG][o.e.n.Node               ] [node-2] using config [E:\Test-workstation\elasticsearch-6.3.2\config], data [[E:\Test-workstation\elasticsearch-6.3.2\data]], logs [E:\Test-workstation\elasticsearch-6.3.2\logs], plugins [E:\Test-workstation\elasticsearch-6.3.2\plugins]
[2019-01-08T21:58:14,642][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:14,642][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\percolator\percolator-6.3.2.jar
[2019-01-08T21:58:14,649][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:14,649][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:14,650][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:14,651][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:14,651][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:14,651][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:14,652][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:14,653][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:14,653][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:14,657][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:14,657][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:14,658][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:14,659][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:14,660][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:14,661][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:14,662][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:14,663][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:14,664][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:14,664][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:14,667][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:14,667][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:14,668][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:14,669][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:14,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:14,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:14,671][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:14,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:14,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:14,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:14,688][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:14,688][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:14,691][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:14,692][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:14,701][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:14,702][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:15,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:15,771][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:15,771][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:15,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:15,775][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:15,779][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:15,784][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:15,785][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:15,785][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:15,787][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:15,787][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:15,790][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:15,790][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\percolator\percolator-6.3.2.jar
[2019-01-08T21:58:15,791][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:15,791][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:15,792][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:15,795][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:15,795][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:15,796][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:16,650][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:16,651][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\repository-url\repository-url-6.3.2.jar
[2019-01-08T21:58:16,658][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:16,658][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:16,660][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:16,662][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:16,663][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:16,663][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:16,665][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:16,667][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:16,669][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:16,673][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:16,673][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:16,674][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:16,676][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:16,679][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:16,679][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:16,681][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:16,683][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:16,684][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:16,684][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:16,687][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:16,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:16,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:16,692][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:16,695][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\repository-url\repository-url-6.3.2.jar
[2019-01-08T21:58:16,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:16,696][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:16,696][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:16,697][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:16,697][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:16,697][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:16,699][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:16,716][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:16,718][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:16,720][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:16,722][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:16,722][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:16,725][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:16,726][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:16,737][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:16,738][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:17,654][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:17,656][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:17,656][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:17,657][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:17,659][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:17,661][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:17,664][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:17,666][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:17,666][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:17,667][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:17,667][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:17,673][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:17,673][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:17,674][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:17,674][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:17,674][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:17,675][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:17,675][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:17,675][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:17,708][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:17,708][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\rank-eval\rank-eval-6.3.2.jar
[2019-01-08T21:58:17,715][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:17,715][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:17,716][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:17,718][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:17,719][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:17,719][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:17,720][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:17,721][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:17,722][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:17,726][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:17,726][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:17,728][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:17,729][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:17,731][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:17,731][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:17,732][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:17,734][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:17,735][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:17,735][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:17,739][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:17,739][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:17,740][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:17,742][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:17,744][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:17,744][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:17,744][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:17,746][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:17,746][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:17,746][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:17,747][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:17,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:17,766][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:17,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:17,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:17,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:17,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:17,772][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:17,783][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:17,784][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:18,683][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:18,685][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:18,685][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:18,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:18,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:18,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:18,693][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:18,694][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:18,694][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:18,696][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:18,696][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:18,700][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:18,701][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:18,701][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:18,701][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:18,702][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\rank-eval\rank-eval-6.3.2.jar
[2019-01-08T21:58:18,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:18,703][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:18,740][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:18,740][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpclient-4.5.2.jar
[2019-01-08T21:58:18,742][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:18,742][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\reindex-6.3.2.jar
[2019-01-08T21:58:18,743][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:18,744][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-logging-1.1.3.jar
[2019-01-08T21:58:18,744][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-4.4.5.jar
[2019-01-08T21:58:18,745][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\elasticsearch-rest-client-6.3.2.jar
[2019-01-08T21:58:18,746][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-codec-1.10.jar
[2019-01-08T21:58:18,753][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:18,753][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:18,754][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:18,757][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:18,757][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:18,757][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:18,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:18,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:18,761][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:18,766][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:18,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:18,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:18,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:18,771][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:18,771][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:18,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:18,774][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:18,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:18,776][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:18,780][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:18,780][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\elasticsearch-rest-client-6.3.2.jar
[2019-01-08T21:58:18,780][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:18,782][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:18,784][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:18,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:18,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:18,786][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:18,788][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:18,788][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:18,788][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:18,789][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:18,805][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:18,807][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-codec-1.10.jar
[2019-01-08T21:58:18,808][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:18,810][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:18,811][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:18,812][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\reindex-6.3.2.jar
[2019-01-08T21:58:18,813][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:18,813][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:18,814][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:18,817][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:18,818][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:18,829][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:18,830][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:19,755][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:19,758][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:19,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:19,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:19,761][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-logging-1.1.3.jar
[2019-01-08T21:58:19,761][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-4.4.5.jar
[2019-01-08T21:58:19,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:19,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:19,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:19,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:19,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:19,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:19,770][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:19,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:19,775][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpclient-4.5.2.jar
[2019-01-08T21:58:19,778][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:19,778][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:19,815][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:19,815][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:19,819][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:19,820][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:19,821][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:19,822][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:19,832][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:19,833][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:19,835][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:19,837][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:19,838][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:19,839][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:19,839][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:19,840][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:19,840][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:19,841][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:19,842][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:19,842][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:19,843][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:19,850][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:19,850][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:19,851][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:19,853][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:19,853][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:19,853][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:19,855][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:19,857][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:19,858][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:19,859][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:19,860][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:19,871][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:19,875][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:19,875][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:19,877][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:19,878][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:19,880][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:19,880][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:19,881][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:19,883][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:19,884][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:19,885][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:19,885][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:19,888][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:19,888][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:19,890][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:19,892][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:19,894][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:19,896][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:19,896][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:19,896][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:19,898][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:19,899][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:19,899][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:19,899][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:19,901][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:19,902][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:19,918][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:19,920][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:19,920][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:19,921][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:19,923][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:19,923][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:19,926][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:19,926][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:19,937][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:19,938][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:20,846][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:20,848][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:20,848][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:20,852][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:20,853][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:20,855][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:20,856][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:20,857][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:20,858][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:20,859][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:20,862][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:20,863][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:20,863][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:20,865][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:20,865][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:20,868][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:20,868][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:20,869][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:20,870][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:20,870][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:20,870][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:20,871][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:20,871][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:20,875][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:22,064][DEBUG][o.e.x.c.s.SSLService     ] [node-2] using ssl settings [SSLConfiguration{keyConfig=[NONE], trustConfig=JDK trusted certs], cipherSuites=[[TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384, TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384, TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA]], supportedProtocols=[[TLSv1.2, TLSv1.1, TLSv1]], sslClientAuth=[REQUIRED], verificationMode=[FULL]}]
[2019-01-08T21:58:22,160][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:22,160][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:22,163][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:22,165][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:22,166][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:22,166][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:22,175][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:22,176][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:22,179][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:22,180][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:22,181][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:22,181][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:22,182][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:22,182][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:22,183][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:22,183][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:22,183][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:22,184][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:22,185][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:22,185][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:22,185][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-core-3.3.0.jar
[2019-01-08T21:58:22,186][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:22,187][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-api-3.3.0.jar
[2019-01-08T21:58:22,187][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:22,188][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\httpclient-cache-4.5.2.jar
[2019-01-08T21:58:22,188][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:22,195][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:22,196][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:22,197][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:22,198][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:22,198][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-api-3.3.0.jar
[2019-01-08T21:58:22,199][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-impl-3.3.0.jar
[2019-01-08T21:58:22,200][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\log4j-slf4j-impl-2.9.1.jar
[2019-01-08T21:58:22,200][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:22,201][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\metrics-core-3.2.2.jar
[2019-01-08T21:58:22,201][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\slf4j-api-1.6.2.jar
[2019-01-08T21:58:22,202][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-api-3.3.0.jar
[2019-01-08T21:58:22,202][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:22,202][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:22,203][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:22,204][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-impl-3.3.0.jar
[2019-01-08T21:58:22,207][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-impl-3.3.0.jar
[2019-01-08T21:58:22,207][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-api-3.3.0.jar
[2019-01-08T21:58:22,208][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-api-3.3.0.jar
[2019-01-08T21:58:22,208][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-impl-3.3.0.jar
[2019-01-08T21:58:22,209][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\guava-19.0.jar
[2019-01-08T21:58:22,211][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:22,211][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:22,212][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\java-support-7.3.0.jar
[2019-01-08T21:58:22,212][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:22,213][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-impl-3.3.0.jar
[2019-01-08T21:58:22,213][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:22,213][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:22,214][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:22,214][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-api-3.3.0.jar
[2019-01-08T21:58:22,214][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-impl-3.3.0.jar
[2019-01-08T21:58:22,215][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\cryptacular-1.2.0.jar
[2019-01-08T21:58:22,215][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:22,216][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-impl-3.3.0.jar
[2019-01-08T21:58:22,216][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\x-pack-security-6.3.2.jar
[2019-01-08T21:58:22,217][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-api-3.3.0.jar
[2019-01-08T21:58:22,218][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\xmlsec-2.0.8.jar
[2019-01-08T21:58:22,225][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:22,225][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:22,226][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:22,228][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:22,228][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:22,228][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-api-3.3.0.jar
[2019-01-08T21:58:22,229][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:22,230][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:22,231][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\httpclient-cache-4.5.2.jar
[2019-01-08T21:58:22,232][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:22,233][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:22,237][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:22,237][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:22,238][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:22,239][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:22,241][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-api-3.3.0.jar
[2019-01-08T21:58:22,241][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:22,241][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:22,242][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-impl-3.3.0.jar
[2019-01-08T21:58:22,243][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:22,245][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:22,246][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\log4j-slf4j-impl-2.9.1.jar
[2019-01-08T21:58:22,246][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:22,246][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:22,250][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\slf4j-api-1.6.2.jar
[2019-01-08T21:58:22,251][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:22,251][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-api-3.3.0.jar
[2019-01-08T21:58:22,251][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:22,252][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:22,254][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:22,256][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-impl-3.3.0.jar
[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-impl-3.3.0.jar
[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\guava-19.0.jar
[2019-01-08T21:58:22,259][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:22,261][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:22,261][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:22,261][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:22,262][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-impl-3.3.0.jar
[2019-01-08T21:58:22,263][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:22,283][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:22,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-api-3.3.0.jar
[2019-01-08T21:58:22,285][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:22,287][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-impl-3.3.0.jar
[2019-01-08T21:58:22,287][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:22,289][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:22,289][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\cryptacular-1.2.0.jar
[2019-01-08T21:58:22,290][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:22,293][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:22,293][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:22,305][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-api-3.3.0.jar
[2019-01-08T21:58:22,306][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:22,307][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-core-3.3.0.jar
[2019-01-08T21:58:22,307][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:23,291][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:23,292][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:23,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:23,294][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:23,295][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:23,296][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:23,300][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\metrics-core-3.2.2.jar
[2019-01-08T21:58:23,301][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:23,301][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:23,301][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:23,303][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:23,303][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:23,306][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:23,306][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-impl-3.3.0.jar
[2019-01-08T21:58:23,306][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-api-3.3.0.jar
[2019-01-08T21:58:23,307][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:23,307][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:23,307][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:23,308][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-api-3.3.0.jar
[2019-01-08T21:58:23,308][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:23,308][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\java-support-7.3.0.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-impl-3.3.0.jar
[2019-01-08T21:58:23,311][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\x-pack-security-6.3.2.jar
[2019-01-08T21:58:23,311][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:23,314][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\xmlsec-2.0.8.jar
[2019-01-08T21:58:23,657][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:23,657][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:23,659][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:23,660][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:23,661][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:23,661][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:23,671][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:23,672][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:23,673][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:23,674][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:23,675][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:23,675][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:23,676][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:23,676][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:23,676][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:23,677][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:23,677][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:23,678][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:23,678][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:23,679][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:23,679][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:23,682][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\x-pack-monitoring-6.3.2.jar
[2019-01-08T21:58:23,684][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:23,684][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:23,685][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:23,685][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:23,693][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:23,693][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:23,694][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:23,695][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:23,696][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-6.3.2.jar
[2019-01-08T21:58:23,696][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:23,697][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:23,697][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-sniffer-6.3.2.jar
[2019-01-08T21:58:23,699][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:23,699][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:23,700][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:23,706][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:23,706][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:23,707][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:23,709][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:23,709][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:23,709][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:23,710][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:23,712][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:23,713][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:23,717][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:23,717][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:23,719][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:23,719][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:23,721][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:23,721][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:23,723][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:23,724][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:23,726][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:23,726][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:23,731][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-sniffer-6.3.2.jar
[2019-01-08T21:58:23,732][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:23,732][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:23,734][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:23,736][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:23,737][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:23,737][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:23,737][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:23,739][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:23,739][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:23,739][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:23,741][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:23,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:23,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:23,761][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:23,768][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:23,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:23,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:23,773][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:23,786][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:23,787][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:24,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:24,764][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:24,765][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:24,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:24,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:24,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:24,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:24,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:24,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:24,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:24,775][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:24,780][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:24,781][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\x-pack-monitoring-6.3.2.jar
[2019-01-08T21:58:24,782][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:24,782][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:24,782][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:24,784][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:24,784][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-6.3.2.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:24,858][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:24,858][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:24,860][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:24,861][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:24,862][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:24,862][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:24,872][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:24,873][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:24,875][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:24,876][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:24,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:24,878][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:24,878][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:24,879][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:24,879][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:24,880][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:24,881][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:24,882][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:24,883][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:24,885][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:24,885][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:24,887][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:24,888][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\owasp-java-html-sanitizer-r239.jar
[2019-01-08T21:58:24,889][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:24,891][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:24,891][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:24,899][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:24,901][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:24,902][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:24,905][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:24,906][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:24,907][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:24,907][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\guava-16.0.1.jar
[2019-01-08T21:58:24,909][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:24,910][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:24,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:24,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\activation-1.1.1.jar
[2019-01-08T21:58:24,912][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\javax.mail-1.5.6.jar
[2019-01-08T21:58:24,913][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\x-pack-watcher-6.3.2.jar
[2019-01-08T21:58:24,914][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:24,916][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:24,916][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:24,917][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:24,924][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:24,924][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:24,925][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:24,927][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:24,928][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:24,928][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:24,930][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:24,931][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:24,933][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:24,936][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:24,936][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:24,938][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:24,939][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:24,941][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:24,941][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:24,943][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:24,944][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\activation-1.1.1.jar
[2019-01-08T21:58:24,945][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:24,946][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\x-pack-watcher-6.3.2.jar
[2019-01-08T21:58:24,947][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:24,947][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:24,950][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:24,950][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:24,952][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:24,953][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\owasp-java-html-sanitizer-r239.jar
[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:24,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:24,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:24,957][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:24,958][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:24,975][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:24,977][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\guava-16.0.1.jar
[2019-01-08T21:58:24,979][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\javax.mail-1.5.6.jar
[2019-01-08T21:58:24,980][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:24,981][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:24,983][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:24,983][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:24,986][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:24,986][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:24,997][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:24,999][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:25,974][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:25,976][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:25,976][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:25,977][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:25,978][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:25,980][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:25,986][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:25,987][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:25,987][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:25,988][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:25,989][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:25,993][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:25,993][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:26,109][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:26,109][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:26,111][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:26,112][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:26,113][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:26,113][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:26,121][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:26,122][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:26,123][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:26,124][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:26,124][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:26,125][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:26,125][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:26,126][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:26,126][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:26,126][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:26,127][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:26,127][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:26,128][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:26,128][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:26,128][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:26,130][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:26,131][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:26,132][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:26,133][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:26,141][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:26,142][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:26,143][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:26,144][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:26,145][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:26,146][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:26,146][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:26,147][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:26,148][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:26,149][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:26,149][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:26,150][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\x-pack-ml-6.3.2.jar
[2019-01-08T21:58:26,153][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:26,153][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:26,154][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\super-csv-2.4.0.jar
[2019-01-08T21:58:26,160][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:26,160][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:26,161][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:26,163][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:26,163][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:26,163][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:26,165][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:26,167][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:26,171][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:26,176][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:26,176][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:26,178][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:26,179][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:26,181][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:26,181][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:26,182][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:26,184][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:26,191][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:26,191][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:26,195][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\x-pack-ml-6.3.2.jar
[2019-01-08T21:58:26,196][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:26,196][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:26,198][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:26,200][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:26,202][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:26,202][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:26,202][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:26,203][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:26,203][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:26,204][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:26,205][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:26,223][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:26,225][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:26,226][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:26,228][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:26,228][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:26,230][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:26,231][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:26,248][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:26,250][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:27,242][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:27,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:27,244][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:27,246][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:27,247][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:27,249][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:27,251][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:27,252][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:27,252][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:27,253][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:27,254][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\super-csv-2.4.0.jar
[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:27,259][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:27,259][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:27,499][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:27,499][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\asm-debug-all-5.1.jar
[2019-01-08T21:58:27,500][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\antlr4-runtime-4.5.3.jar
[2019-01-08T21:58:27,501][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\lang-painless-6.3.2.jar
[2019-01-08T21:58:27,501][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\elasticsearch-scripting-painless-spi-6.3.2.jar
[2019-01-08T21:58:27,508][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:27,508][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:27,510][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:27,511][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:27,512][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:27,512][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:27,515][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:27,517][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:27,518][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:27,524][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:27,524][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:27,526][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:27,527][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:27,532][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:27,532][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:27,534][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:27,536][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\asm-debug-all-5.1.jar
[2019-01-08T21:58:27,536][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:27,538][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:27,538][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:27,541][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:27,541][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\elasticsearch-scripting-painless-spi-6.3.2.jar
[2019-01-08T21:58:27,542][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:27,543][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:27,545][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\antlr4-runtime-4.5.3.jar
[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:27,549][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:27,549][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:27,549][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:27,550][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:27,566][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:27,568][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:27,569][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:27,573][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:27,573][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:27,575][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:27,576][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:27,588][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:27,590][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:28,539][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:28,541][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:28,541][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:28,543][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:28,544][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:28,546][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:28,551][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:28,551][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:28,551][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:28,553][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:28,553][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:28,558][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:28,558][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:28,559][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\lang-painless-6.3.2.jar
[2019-01-08T21:58:28,561][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:28,600][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:28,600][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:28,602][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:28,603][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:28,604][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:28,604][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:28,612][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:28,613][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:28,614][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:28,615][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:28,616][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:28,616][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:28,617][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:28,617][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:28,617][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:28,618][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:28,619][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:28,620][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:28,622][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:28,623][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:28,623][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:28,625][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:28,626][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-upgrade\x-pack-upgrade-6.3.2.jar
[2019-01-08T21:58:28,626][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:28,627][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:28,627][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:28,634][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:28,635][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:28,636][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:28,638][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:28,639][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:28,639][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:28,641][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:28,641][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:28,642][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:28,647][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:28,647][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:28,650][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:28,652][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:28,652][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:28,652][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:28,654][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:28,655][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:28,656][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:28,660][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:28,660][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:28,661][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:28,662][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:28,664][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:28,664][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:28,666][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:28,668][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:28,669][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:28,669][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:28,673][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:28,673][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:28,674][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:28,675][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:28,677][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:28,677][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:28,677][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:28,678][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:28,678][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:28,678][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:28,680][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:28,699][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:28,701][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:28,702][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:28,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:28,703][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:28,705][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:28,706][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:28,720][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:28,721][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:29,681][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:29,682][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:29,682][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:29,684][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:29,685][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:29,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:29,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:29,690][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:29,690][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:29,691][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:29,691][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:29,696][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-upgrade\x-pack-upgrade-6.3.2.jar
[2019-01-08T21:58:29,697][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:29,697][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:29,741][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:29,741][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\lang-mustache-6.3.2.jar
[2019-01-08T21:58:29,742][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\compiler-0.9.3.jar
[2019-01-08T21:58:29,748][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:29,748][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:29,749][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:29,751][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:29,751][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:29,751][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:29,752][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:29,753][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:29,754][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:29,758][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:29,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:29,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:29,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:29,761][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:29,761][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:29,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:29,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:29,765][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:29,765][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:29,768][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\compiler-0.9.3.jar
[2019-01-08T21:58:29,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:29,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:29,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:29,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:29,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:29,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:29,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:29,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:29,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:29,775][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:29,776][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:29,791][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:29,793][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:29,794][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:29,795][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:29,795][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:29,798][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:29,798][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:29,809][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:29,810][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:30,684][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:30,686][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:30,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:30,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:30,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:30,690][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:30,693][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:30,694][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:30,694][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:30,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:30,695][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:30,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:30,699][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\lang-mustache-6.3.2.jar
[2019-01-08T21:58:30,700][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:30,700][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:30,700][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:30,702][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:30,702][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:30,741][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:30,741][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\tribe\tribe-6.3.2.jar
[2019-01-08T21:58:30,747][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:30,747][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:30,748][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:30,750][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:30,750][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:30,750][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:30,751][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:30,752][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:30,753][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:30,757][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:30,757][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:30,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:30,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:30,760][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:30,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:30,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:30,763][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:30,764][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:30,764][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:30,768][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:30,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:30,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:30,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:30,772][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:30,772][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:30,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:30,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:30,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:30,774][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:30,775][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:30,791][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:30,792][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:30,794][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:30,795][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:30,795][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:30,797][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:30,798][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:30,808][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:30,809][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:31,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:31,763][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:31,763][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:31,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:31,766][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:31,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:31,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:31,771][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:31,771][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:31,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:31,773][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:31,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:31,777][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:31,778][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:31,778][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:31,778][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\tribe\tribe-6.3.2.jar
[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:31,808][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:31,808][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\analysis-common\analysis-common-6.3.2.jar
[2019-01-08T21:58:31,814][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:31,814][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:31,815][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:31,817][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:31,817][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:31,817][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:31,818][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:31,819][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:31,821][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:31,825][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:31,825][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:31,826][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:31,827][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:31,829][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:31,829][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:31,830][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:31,832][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:31,834][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:31,834][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:31,837][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:31,837][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:31,838][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:31,840][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:31,841][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:31,842][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:31,842][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:31,843][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:31,843][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:31,843][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:31,844][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\analysis-common\analysis-common-6.3.2.jar
[2019-01-08T21:58:31,845][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:31,860][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:31,861][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:31,863][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:31,865][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:31,865][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:31,869][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:31,870][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:31,885][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:31,886][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:32,753][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:32,755][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:32,755][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:32,757][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:32,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:32,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:32,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:32,763][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:32,763][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:32,764][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:32,764][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:32,767][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:32,767][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:32,768][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:32,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:32,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:32,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:32,874][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:32,874][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:32,875][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:32,876][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:32,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:32,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:32,878][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:32,879][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:32,880][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\transport-netty4-6.3.2.jar
[2019-01-08T21:58:32,886][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:32,886][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:32,888][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:32,889][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:32,889][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:32,889][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:32,890][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:32,891][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:32,892][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:32,893][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:32,895][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:32,898][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:32,898][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:32,900][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:32,900][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:32,902][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:32,902][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:32,903][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:32,904][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:32,905][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:32,905][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:32,909][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:32,909][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\transport-netty4-6.3.2.jar
[2019-01-08T21:58:32,909][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:32,910][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:32,912][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:32,914][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:32,914][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:32,914][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:32,914][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:32,915][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:32,915][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:32,915][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:32,917][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:32,933][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:32,934][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:32,935][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:32,937][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:32,937][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:32,937][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:32,940][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:32,940][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:32,950][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:32,951][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:33,809][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:33,811][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:33,812][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:33,812][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:33,813][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:33,814][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:33,816][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:33,819][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:33,819][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:33,820][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:33,820][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:33,821][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:33,821][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:33,824][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:33,824][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:33,825][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:33,825][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:33,825][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:33,826][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:33,826][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:33,828][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:33,828][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:33,828][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:33,828][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:33,828][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:33,828][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:33,897][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:33,898][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:33,900][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:33,900][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:33,901][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:33,901][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:33,909][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:33,909][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:33,910][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:33,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:33,912][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:33,912][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:33,912][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:33,913][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:33,913][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:33,913][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:33,914][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:33,915][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:33,915][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:33,916][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:33,916][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:33,917][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:33,918][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:33,918][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:33,919][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:33,925][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:33,926][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:33,927][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:33,927][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:33,928][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:33,928][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:33,929][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:33,929][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:33,929][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:33,930][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:33,930][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-deprecation\x-pack-deprecation-6.3.2.jar
[2019-01-08T21:58:33,931][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:33,931][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:33,932][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:33,937][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:33,937][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:33,939][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:33,940][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:33,940][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:33,940][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:33,942][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:33,943][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:33,944][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:33,948][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:33,948][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:33,949][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:33,950][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:33,951][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:33,951][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:33,952][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:33,953][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:33,955][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:33,955][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:33,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:33,959][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:33,960][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:33,962][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:33,963][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:33,963][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:33,963][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:33,964][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:33,965][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:33,965][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:33,966][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:33,982][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:33,983][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:33,985][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:33,986][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:33,986][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:33,988][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:33,989][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:34,001][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:34,002][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:34,860][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:34,861][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:34,861][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:34,863][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:34,864][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:34,866][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:34,868][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:34,869][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:34,869][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:34,870][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:34,870][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:34,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:34,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:34,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:34,874][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:34,875][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:34,875][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:34,876][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:34,876][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:34,876][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:34,876][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:34,876][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:34,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-deprecation\x-pack-deprecation-6.3.2.jar
[2019-01-08T21:58:34,877][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:34,910][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:34,910][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\jcodings-1.0.12.jar
[2019-01-08T21:58:34,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\elasticsearch-grok-6.3.2.jar
[2019-01-08T21:58:34,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\joni-2.1.6.jar
[2019-01-08T21:58:34,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\ingest-common-6.3.2.jar
[2019-01-08T21:58:34,917][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:34,917][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:34,918][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:34,920][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:34,920][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:34,920][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:34,922][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:34,924][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:34,925][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:34,928][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:34,928][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:34,929][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:34,930][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:34,932][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:34,932][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:34,933][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:34,934][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:34,935][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:34,936][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:34,940][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:34,940][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\joni-2.1.6.jar
[2019-01-08T21:58:34,940][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\ingest-common-6.3.2.jar
[2019-01-08T21:58:34,940][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:34,941][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:34,943][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:34,945][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:34,945][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:34,945][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:34,946][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:34,946][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:34,946][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:34,947][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:34,963][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:34,964][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:34,966][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:34,967][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:34,967][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:34,969][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:34,970][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:34,979][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:34,981][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:35,834][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:35,835][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:35,835][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:35,837][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:35,838][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:35,839][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:35,842][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:35,843][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:35,843][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:35,844][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:35,844][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:35,847][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:35,847][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:35,847][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:35,847][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:35,849][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:35,849][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:35,850][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:35,850][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\elasticsearch-grok-6.3.2.jar
[2019-01-08T21:58:35,851][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:35,851][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:35,851][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:35,851][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\ingest-common\jcodings-1.0.12.jar
[2019-01-08T21:58:35,852][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:35,852][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:36,274][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:36,274][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\aggs-matrix-stats\aggs-matrix-stats-6.3.2.jar
[2019-01-08T21:58:36,280][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:36,280][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:36,281][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:36,283][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:36,283][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:36,283][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:36,284][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:36,286][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:36,287][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:36,290][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:36,290][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:36,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:36,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:36,294][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:36,294][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:36,295][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:36,296][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:36,298][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:36,298][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:36,301][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:36,301][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\aggs-matrix-stats\aggs-matrix-stats-6.3.2.jar
[2019-01-08T21:58:36,301][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:36,302][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:36,304][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:36,305][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:36,306][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:36,306][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:36,307][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:36,307][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:36,307][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:36,308][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:36,323][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:36,325][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:36,327][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:36,328][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:36,328][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:36,330][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:36,331][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:36,341][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:36,343][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:37,203][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:37,205][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:37,205][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:37,206][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:37,207][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:37,209][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:37,211][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:37,212][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:37,212][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:37,213][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:37,213][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:37,217][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:37,217][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:37,217][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:37,217][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:37,218][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:37,218][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:37,219][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:37,219][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:37,219][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:37,219][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:37,219][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:37,219][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:37,251][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:37,251][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:37,253][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:37,254][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:37,255][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:37,255][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:37,263][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:37,264][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:37,265][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:37,266][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:37,266][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:37,267][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:37,267][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:37,268][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:37,268][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:37,268][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:37,269][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:37,269][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:37,270][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:37,270][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:37,270][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:37,272][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-logstash\x-pack-logstash-6.3.2.jar
[2019-01-08T21:58:37,272][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:37,273][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:37,274][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:37,274][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:37,280][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:37,281][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:37,282][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:37,283][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:37,283][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:37,284][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:37,284][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:37,284][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:37,284][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:37,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:37,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:37,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:37,286][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:37,291][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:37,291][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:37,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:37,294][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:37,294][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:37,294][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:37,295][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:37,297][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:37,298][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:37,302][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:37,302][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:37,303][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:37,304][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:37,305][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:37,305][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:37,306][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:37,308][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:37,309][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:37,309][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:37,313][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:37,313][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:37,314][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:37,316][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:37,317][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:37,317][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:37,317][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:37,319][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:37,319][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:37,319][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:37,320][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:37,335][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:37,337][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:37,338][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:37,341][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:37,341][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:37,343][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:37,343][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:37,353][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:37,354][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:38,227][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:38,229][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:38,229][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:38,230][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:38,231][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:38,233][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:38,236][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:38,236][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:38,236][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:38,238][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:38,238][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:38,241][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:38,241][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-logstash\x-pack-logstash-6.3.2.jar
[2019-01-08T21:58:38,241][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:38,241][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:38,241][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:38,243][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:38,243][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:38,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:38,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:38,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:38,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:38,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:38,244][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:38,281][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:38,281][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:38,283][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:38,284][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:38,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:38,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:38,292][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:38,292][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:38,294][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:38,294][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:38,295][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:38,295][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:38,296][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:38,296][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:38,296][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:38,297][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:38,297][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:38,298][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:38,299][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:38,299][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:38,299][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:38,300][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:38,301][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:38,302][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:38,302][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:38,309][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:38,309][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:38,311][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:38,311][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:38,312][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:38,312][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:38,313][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:38,313][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:38,313][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:38,314][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:38,314][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-graph\x-pack-graph-6.3.2.jar
[2019-01-08T21:58:38,315][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:38,315][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:38,316][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:38,322][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:38,322][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:38,323][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:38,325][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:38,325][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:38,325][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:38,326][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:38,328][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:38,329][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:38,332][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:38,332][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:38,334][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:38,334][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:38,336][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:38,336][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:38,337][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:38,339][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:38,340][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:38,340][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:38,343][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:38,343][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:38,344][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:38,346][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:38,347][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:38,348][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:38,348][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:38,349][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:38,349][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:38,349][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:38,350][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:38,366][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:38,368][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:38,369][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:38,370][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:38,370][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:38,373][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:38,373][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:38,384][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:38,386][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:39,241][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:39,243][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:39,243][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:39,244][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:39,245][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:39,247][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:39,250][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:39,251][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:39,251][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:39,252][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:39,252][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:39,255][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:39,255][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:39,255][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:39,255][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:39,256][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:39,257][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:39,258][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:39,258][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:39,258][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:39,258][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:39,258][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:39,258][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-graph\x-pack-graph-6.3.2.jar
[2019-01-08T21:58:39,259][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:39,295][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:39,295][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:39,297][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:39,298][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:39,299][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:39,299][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:39,307][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:39,308][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:39,309][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:39,310][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:39,310][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:39,311][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:39,311][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:39,312][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:39,312][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:39,312][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:39,313][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:39,314][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:39,314][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:39,315][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:39,315][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:39,316][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\antlr4-runtime-4.5.3.jar
[2019-01-08T21:58:39,318][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:39,319][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:39,319][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:39,320][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:39,326][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:39,327][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:39,328][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:39,329][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:39,330][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:39,330][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:39,331][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:39,331][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:39,331][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:39,331][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\sql-proto-6.3.2.jar
[2019-01-08T21:58:39,332][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:39,332][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\x-pack-sql-6.3.2.jar
[2019-01-08T21:58:39,334][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:39,334][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\aggs-matrix-stats-6.3.2.jar
[2019-01-08T21:58:39,335][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:39,335][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:39,341][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:39,341][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:39,342][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:39,344][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:39,344][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:39,344][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:39,346][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:39,347][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:39,348][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:39,352][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:39,352][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:39,353][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:39,354][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:39,355][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:39,355][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:39,356][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:39,358][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:39,359][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\sql-proto-6.3.2.jar
[2019-01-08T21:58:39,359][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:39,359][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:39,362][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:39,362][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:39,364][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:39,366][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:39,368][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:39,368][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:39,368][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:39,369][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:39,369][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:39,369][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:39,370][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:39,385][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:39,387][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:39,388][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:39,389][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:39,390][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:39,392][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:39,392][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:39,402][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:39,403][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:40,258][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:40,259][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:40,259][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:40,261][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:40,262][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:40,264][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:40,267][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:40,268][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:40,268][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:40,269][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:40,269][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:40,272][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\aggs-matrix-stats-6.3.2.jar
[2019-01-08T21:58:40,273][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:40,273][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:40,273][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:40,273][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\antlr4-runtime-4.5.3.jar
[2019-01-08T21:58:40,274][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:40,275][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:40,275][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:40,276][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:40,276][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:40,276][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:40,276][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:40,276][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-sql\x-pack-sql-6.3.2.jar
[2019-01-08T21:58:40,277][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:40,277][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:40,329][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:40,329][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\parent-join\parent-join-6.3.2.jar
[2019-01-08T21:58:40,335][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:40,335][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:40,336][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:40,338][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:40,338][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:40,338][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:40,340][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:40,341][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:40,342][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:40,346][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:40,346][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:40,347][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:40,348][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:40,349][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:40,349][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:40,350][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:40,352][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:40,353][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:40,353][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:40,356][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:40,356][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\parent-join\parent-join-6.3.2.jar
[2019-01-08T21:58:40,356][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:40,357][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:40,359][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:40,361][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:40,361][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:40,361][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:40,362][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:40,362][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:40,362][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:40,363][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:40,379][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:40,380][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:40,382][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:40,384][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:40,384][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:40,386][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:40,387][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:40,397][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:40,399][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:41,249][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:41,250][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:41,251][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:41,252][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:41,253][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:41,255][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:41,257][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:41,258][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:41,258][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:41,259][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:41,259][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:41,262][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:41,263][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:41,263][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:41,263][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:41,264][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:41,264][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:41,265][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:41,266][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:41,266][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:41,266][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:41,266][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:41,266][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:41,294][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:41,294][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\lucene-expressions-7.3.1.jar
[2019-01-08T21:58:41,295][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\asm-tree-5.0.4.jar
[2019-01-08T21:58:41,295][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\antlr4-runtime-4.5.1-1.jar
[2019-01-08T21:58:41,296][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\asm-5.0.4.jar
[2019-01-08T21:58:41,296][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\asm-commons-5.0.4.jar
[2019-01-08T21:58:41,297][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\lang-expression-6.3.2.jar
[2019-01-08T21:58:41,302][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:41,302][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:41,303][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:41,305][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:41,305][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:41,305][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:41,306][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:41,307][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:41,308][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:41,312][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:41,312][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:41,313][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:41,314][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:41,316][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:41,316][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:41,317][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:41,318][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:41,319][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:41,319][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:41,323][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:41,323][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:41,324][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:41,326][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:41,327][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:41,327][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:41,327][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:41,328][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:41,328][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:41,328][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:41,329][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:41,345][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:41,347][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\lucene-expressions-7.3.1.jar
[2019-01-08T21:58:41,347][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:41,349][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:41,350][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:41,350][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:41,352][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:41,352][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:41,362][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\lang-expression-6.3.2.jar
[2019-01-08T21:58:41,363][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:41,365][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:42,225][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:42,226][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:42,226][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:42,227][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:42,229][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:42,230][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:42,233][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:42,234][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\asm-tree-5.0.4.jar
[2019-01-08T21:58:42,234][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\antlr4-runtime-4.5.1-1.jar
[2019-01-08T21:58:42,235][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:42,235][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:42,236][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:42,236][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:42,239][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\asm-commons-5.0.4.jar
[2019-01-08T21:58:42,240][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:42,240][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:42,240][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:42,240][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:42,241][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:42,241][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-expression\asm-5.0.4.jar
[2019-01-08T21:58:42,242][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:42,271][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:42,271][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\mapper-extras\mapper-extras-6.3.2.jar
[2019-01-08T21:58:42,277][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:42,277][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:42,278][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:42,280][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:42,280][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:42,280][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:42,281][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:42,282][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:42,284][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:42,287][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:42,287][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:42,289][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:42,289][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:42,291][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:42,291][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:42,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:42,293][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:42,294][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:42,294][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:42,298][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:42,298][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:42,299][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:42,301][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:42,302][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\mapper-extras\mapper-extras-6.3.2.jar
[2019-01-08T21:58:42,303][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:42,303][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:42,303][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:42,304][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:42,304][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:42,304][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:42,305][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:42,321][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:42,322][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:42,324][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:42,325][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:42,325][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:42,327][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:42,327][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:42,338][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:42,339][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:43,197][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:43,198][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:43,198][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:43,199][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:43,200][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:43,202][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:43,205][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:43,206][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:43,206][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:43,207][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:43,207][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:43,210][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:43,210][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:43,210][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:43,210][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:43,211][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:43,211][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:43,213][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:43,213][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:43,213][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:43,213][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:43,213][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:43,213][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:43,242][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:43,242][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:43,244][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:43,244][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:43,245][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:43,245][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:43,252][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:43,253][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:43,254][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:43,255][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:43,255][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:43,256][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:43,256][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:43,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:43,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:43,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:43,258][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:43,258][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:43,259][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:43,259][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:43,259][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar
[2019-01-08T21:58:43,261][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar
[2019-01-08T21:58:43,261][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-rollup\x-pack-rollup-6.3.2.jar
[2019-01-08T21:58:43,262][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar
[2019-01-08T21:58:43,263][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar
[2019-01-08T21:58:43,263][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar
[2019-01-08T21:58:43,270][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar
[2019-01-08T21:58:43,270][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar
[2019-01-08T21:58:43,272][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar
[2019-01-08T21:58:43,272][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar
[2019-01-08T21:58:43,273][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar
[2019-01-08T21:58:43,273][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar
[2019-01-08T21:58:43,274][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar
[2019-01-08T21:58:43,274][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar
[2019-01-08T21:58:43,274][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar
[2019-01-08T21:58:43,275][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar
[2019-01-08T21:58:43,275][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar
[2019-01-08T21:58:43,275][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar
[2019-01-08T21:58:43,276][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar
[2019-01-08T21:58:43,282][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre
[2019-01-08T21:58:43,282][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar
[2019-01-08T21:58:43,283][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar
[2019-01-08T21:58:43,285][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar
[2019-01-08T21:58:43,285][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar
[2019-01-08T21:58:43,285][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar
[2019-01-08T21:58:43,286][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar
[2019-01-08T21:58:43,287][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar
[2019-01-08T21:58:43,289][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main
[2019-01-08T21:58:43,292][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar
[2019-01-08T21:58:43,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar
[2019-01-08T21:58:43,293][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar
[2019-01-08T21:58:43,294][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar
[2019-01-08T21:58:43,295][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar
[2019-01-08T21:58:43,296][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar
[2019-01-08T21:58:43,297][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar
[2019-01-08T21:58:43,298][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar
[2019-01-08T21:58:43,300][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar
[2019-01-08T21:58:43,300][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main
[2019-01-08T21:58:43,303][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar
[2019-01-08T21:58:43,303][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar
[2019-01-08T21:58:43,304][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar
[2019-01-08T21:58:43,306][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar
[2019-01-08T21:58:43,308][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar
[2019-01-08T21:58:43,308][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar
[2019-01-08T21:58:43,308][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar
[2019-01-08T21:58:43,309][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar
[2019-01-08T21:58:43,309][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar
[2019-01-08T21:58:43,309][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar
[2019-01-08T21:58:43,310][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main
[2019-01-08T21:58:43,326][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar
[2019-01-08T21:58:43,327][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar
[2019-01-08T21:58:43,329][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar
[2019-01-08T21:58:43,330][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar
[2019-01-08T21:58:43,330][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar
[2019-01-08T21:58:43,332][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar
[2019-01-08T21:58:43,333][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main
[2019-01-08T21:58:43,343][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar
[2019-01-08T21:58:43,345][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main
[2019-01-08T21:58:44,199][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar
[2019-01-08T21:58:44,201][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-rollup\x-pack-rollup-6.3.2.jar
[2019-01-08T21:58:44,201][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar
[2019-01-08T21:58:44,201][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar
[2019-01-08T21:58:44,203][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar
[2019-01-08T21:58:44,204][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar
[2019-01-08T21:58:44,205][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar
[2019-01-08T21:58:44,208][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar
[2019-01-08T21:58:44,209][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar
[2019-01-08T21:58:44,209][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar
[2019-01-08T21:58:44,210][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar
[2019-01-08T21:58:44,210][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main
[2019-01-08T21:58:44,214][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar
[2019-01-08T21:58:44,214][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar
[2019-01-08T21:58:44,214][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar
[2019-01-08T21:58:44,214][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar
[2019-01-08T21:58:44,215][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar
[2019-01-08T21:58:44,215][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar
[2019-01-08T21:58:44,216][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar
[2019-01-08T21:58:44,216][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar
[2019-01-08T21:58:44,216][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar
[2019-01-08T21:58:44,216][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar
[2019-01-08T21:58:44,216][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar
[2019-01-08T21:58:44,216][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [aggs-matrix-stats]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [analysis-common]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [ingest-common]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [lang-expression]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [lang-mustache]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [lang-painless]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [mapper-extras]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [parent-join]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [percolator]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [rank-eval]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [reindex]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [repository-url]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [transport-netty4]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [tribe]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-core]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-deprecation]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-graph]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-logstash]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-ml]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-monitoring]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-rollup]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-security]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-sql]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-upgrade]
[2019-01-08T21:58:44,329][INFO ][o.e.p.PluginsService     ] [node-2] loaded module [x-pack-watcher]
[2019-01-08T21:58:44,330][INFO ][o.e.p.PluginsService     ] [node-2] no plugins loaded
[2019-01-08T21:58:44,726][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [watcher], size [20], queue size [1k]
[2019-01-08T21:58:44,727][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [force_merge], size [1], queue size [unbounded]
[2019-01-08T21:58:44,727][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [security-token-key], size [1], queue size [1k]
[2019-01-08T21:58:44,727][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [ml_datafeed], size [20], queue size [200]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [fetch_shard_started], core [1], max [8], keep alive [5m]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [listener], size [2], queue size [unbounded]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [ml_autodetect], size [80], queue size [80]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [index], size [4], queue size [200]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [refresh], core [1], max [2], keep alive [5m]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [generic], core [4], max [128], keep alive [30s]
[2019-01-08T21:58:44,731][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [rollup_indexing], size [4], queue size [4]
[2019-01-08T21:58:44,732][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [warmer], core [1], max [2], keep alive [5m]
[2019-01-08T21:58:44,735][DEBUG][o.e.c.u.c.QueueResizingEsThreadPoolExecutor] thread pool [node-2/search] will adjust queue by [50] when determining automatic queue size
[2019-01-08T21:58:44,735][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [search], size [7], queue size [1k]
[2019-01-08T21:58:44,735][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [flush], core [1], max [2], keep alive [5m]
[2019-01-08T21:58:44,735][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [fetch_shard_store], core [1], max [8], keep alive [5m]
[2019-01-08T21:58:44,735][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [management], core [1], max [5], keep alive [5m]
[2019-01-08T21:58:44,735][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [ml_utility], size [80], queue size [500]
[2019-01-08T21:58:44,735][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [get], size [4], queue size [1k]
[2019-01-08T21:58:44,736][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [analyze], size [1], queue size [16]
[2019-01-08T21:58:44,736][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [write], size [4], queue size [200]
[2019-01-08T21:58:44,736][DEBUG][o.e.t.ThreadPool         ] [node-2] created thread pool: name [snapshot], core [1], max [2], keep alive [5m]
[2019-01-08T21:58:46,014][DEBUG][i.n.u.i.PlatformDependent] Platform: Windows
[2019-01-08T21:58:46,018][DEBUG][i.n.u.i.PlatformDependent0] -Dio.netty.noUnsafe: false
[2019-01-08T21:58:46,024][DEBUG][i.n.u.i.PlatformDependent0] Java version: 8
[2019-01-08T21:58:46,030][DEBUG][i.n.u.i.PlatformDependent0] sun.misc.Unsafe.theUnsafe: available
[2019-01-08T21:58:46,033][DEBUG][i.n.u.i.PlatformDependent0] sun.misc.Unsafe.copyMemory: available
[2019-01-08T21:58:46,036][DEBUG][i.n.u.i.PlatformDependent0] java.nio.Buffer.address: available
[2019-01-08T21:58:46,039][DEBUG][i.n.u.i.PlatformDependent0] direct buffer constructor: available
[2019-01-08T21:58:46,043][DEBUG][i.n.u.i.PlatformDependent0] java.nio.Bits.unaligned: available, true
[2019-01-08T21:58:46,043][DEBUG][i.n.u.i.PlatformDependent0] jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9
[2019-01-08T21:58:46,043][DEBUG][i.n.u.i.PlatformDependent0] java.nio.DirectByteBuffer.<init>(long, int): available
[2019-01-08T21:58:46,043][DEBUG][i.n.u.i.PlatformDependent] sun.misc.Unsafe: available
[2019-01-08T21:58:46,045][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.tmpdir: C:\Users\TDW\AppData\Local\Temp (java.io.tmpdir)
[2019-01-08T21:58:46,045][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.bitMode: 64 (sun.arch.data.model)
[2019-01-08T21:58:46,051][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.noPreferDirect: false
[2019-01-08T21:58:46,051][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.maxDirectMemory: 2058354688 bytes
[2019-01-08T21:58:46,051][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.uninitializedArrayAllocationThreshold: -1
[2019-01-08T21:58:46,054][DEBUG][i.n.u.i.CleanerJava6     ] java.nio.ByteBuffer.cleaner(): available
[2019-01-08T21:58:47,205][DEBUG][o.e.s.ScriptService      ] [node-2] using script cache with max_size [100], expire [0s]
[2019-01-08T21:58:49,680][DEBUG][o.e.m.j.JvmGcMonitorService] [node-2] enabled [true], interval [1s], gc_threshold [{default=GcThreshold{name='default', warnThreshold=10000, infoThreshold=5000, debugThreshold=2000}, young=GcThreshold{name='young', warnThreshold=1000, infoThreshold=700, debugThreshold=400}, old=GcThreshold{name='old', warnThreshold=10000, infoThreshold=5000, debugThreshold=2000}}], overhead [50, 25, 10]
[2019-01-08T21:58:49,682][DEBUG][o.e.m.o.OsService        ] [node-2] using refresh_interval [1s]
[2019-01-08T21:58:49,696][DEBUG][o.e.m.p.ProcessService   ] [node-2] using refresh_interval [1s]
[2019-01-08T21:58:49,702][DEBUG][o.e.m.j.JvmService       ] [node-2] using refresh_interval [1s]
[2019-01-08T21:58:49,702][DEBUG][o.e.m.f.FsService        ] [node-2] using refresh_interval [1s]
[2019-01-08T21:58:49,704][DEBUG][o.e.c.r.a.d.ClusterRebalanceAllocationDecider] [node-2] using [cluster.routing.allocation.allow_rebalance] with [indices_all_active]
[2019-01-08T21:58:49,705][DEBUG][o.e.c.r.a.d.ConcurrentRebalanceAllocationDecider] [node-2] using [cluster_concurrent_rebalance] with [2]
[2019-01-08T21:58:49,715][DEBUG][o.e.c.r.a.d.ThrottlingAllocationDecider] [node-2] using node_concurrent_outgoing_recoveries [2], node_concurrent_incoming_recoveries [2], node_initial_primaries_recoveries [4]
[2019-01-08T21:58:50,910][DEBUG][o.e.i.IndicesQueryCache  ] [node-2] using [node] query cache with size [196.2mb] max filter count [1000]
[2019-01-08T21:58:50,939][DEBUG][o.e.i.IndexingMemoryController] [node-2] using indexing buffer size [196.2mb] with indices.memory.shard_inactive_time [5m], indices.memory.interval [5s]
[2019-01-08T21:58:51,462][DEBUG][o.e.x.s.a.f.FileUserPasswdStore] [node-2] parsed [0] users from file [E:\Test-workstation\elasticsearch-6.3.2\config\users]
[2019-01-08T21:58:51,477][DEBUG][o.e.x.s.a.f.FileUserRolesStore] [node-2] parsed [0] user to role mappings from file [E:\Test-workstation\elasticsearch-6.3.2\config\users_roles]
[2019-01-08T21:58:51,486][DEBUG][o.e.x.s.Security         ] Using default authentication failure handler
[2019-01-08T21:58:51,501][DEBUG][o.e.x.s.a.s.FileRolesStore] [node-2] attempting to read roles file located at [E:\Test-workstation\elasticsearch-6.3.2\config\roles.yml]
[2019-01-08T21:58:51,505][INFO ][o.e.x.s.a.s.FileRolesStore] [node-2] parsed [0] roles from file [E:\Test-workstation\elasticsearch-6.3.2\config\roles.yml]
[2019-01-08T21:58:51,691][DEBUG][o.e.x.s.t.f.IPFilter     ] [node-2] loaded ip filtering profiles: []
[2019-01-08T21:58:53,917][DEBUG][o.e.x.m.j.p.l.CppLogMessageHandler] [controller/4184] [CLogger.cc@350] uname -a: Windows TDW-PC 6.1 Windows NT Version 6.1 (Workstation) Build 7601 x64
[2019-01-08T21:58:53,918][DEBUG][o.e.x.m.j.p.l.CppLogMessageHandler] [controller/4184] [CLogger.cc@263] Logger is logging to named pipe \\.\pipe\controller_log_10708
[2019-01-08T21:58:53,918][INFO ][o.e.x.m.j.p.l.CppLogMessageHandler] [controller/4184] [Main.cc@109] controller (64 bit): Version 6.3.2 (Build 903094f295d249) Copyright (c) 2018 Elasticsearch BV
[2019-01-08T21:58:56,242][DEBUG][o.e.a.ActionModule       ] Using REST wrapper from plugin org.elasticsearch.xpack.security.Security
[2019-01-08T21:58:56,314][DEBUG][o.e.c.u.IndexFolderUpgrader] [E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\j0D6PyMeQV6l9CLwWxpj-Q] no upgrade needed - already upgraded
[2019-01-08T21:58:56,317][DEBUG][o.e.c.u.IndexFolderUpgrader] [E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\KgYYsIO7REWaaXoy613kxw] no upgrade needed - already upgraded
[2019-01-08T21:58:56,321][DEBUG][o.e.c.u.IndexFolderUpgrader] [E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\uxwGBLF3Q_m9S65-EOXvgQ] no upgrade needed - already upgraded
[2019-01-08T21:58:56,685][DEBUG][o.e.g.GatewayMetaState   ] [node-2] took 33ms to load state
[2019-01-08T21:58:56,880][DEBUG][i.n.u.i.PlatformDependent] Platform: Windows
[2019-01-08T21:58:56,884][DEBUG][i.n.u.i.PlatformDependent0] -Dio.netty.noUnsafe: false
[2019-01-08T21:58:56,891][DEBUG][i.n.u.i.PlatformDependent0] Java version: 8
[2019-01-08T21:58:56,898][DEBUG][i.n.u.i.PlatformDependent0] sun.misc.Unsafe.theUnsafe: available
[2019-01-08T21:58:56,901][DEBUG][i.n.u.i.PlatformDependent0] sun.misc.Unsafe.copyMemory: available
[2019-01-08T21:58:56,904][DEBUG][i.n.u.i.PlatformDependent0] java.nio.Buffer.address: available
[2019-01-08T21:58:56,907][DEBUG][i.n.u.i.PlatformDependent0] direct buffer constructor: available
[2019-01-08T21:58:56,911][DEBUG][i.n.u.i.PlatformDependent0] java.nio.Bits.unaligned: available, true
[2019-01-08T21:58:56,911][DEBUG][i.n.u.i.PlatformDependent0] jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9
[2019-01-08T21:58:56,911][DEBUG][i.n.u.i.PlatformDependent0] java.nio.DirectByteBuffer.<init>(long, int): available
[2019-01-08T21:58:56,911][DEBUG][i.n.u.i.PlatformDependent] sun.misc.Unsafe: available
[2019-01-08T21:58:56,912][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.tmpdir: C:\Users\TDW\AppData\Local\Temp (java.io.tmpdir)
[2019-01-08T21:58:56,912][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.bitMode: 64 (sun.arch.data.model)
[2019-01-08T21:58:56,919][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.noPreferDirect: false
[2019-01-08T21:58:56,919][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.maxDirectMemory: 2058354688 bytes
[2019-01-08T21:58:56,919][DEBUG][i.n.u.i.PlatformDependent] -Dio.netty.uninitializedArrayAllocationThreshold: -1
[2019-01-08T21:58:56,923][DEBUG][i.n.u.i.CleanerJava6     ] java.nio.ByteBuffer.cleaner(): available
[2019-01-08T21:58:56,999][DEBUG][o.e.x.s.t.n.SecurityNetty4HttpServerTransport] [node-2] using max_chunk_size[8kb], max_header_size[8kb], max_initial_line_length[4kb], max_content_length[100mb], receive_predictor[64kb->64kb], pipelining[true], pipelining_max_events[10000]
[2019-01-08T21:58:57,010][INFO ][o.e.d.DiscoveryModule    ] [node-2] using discovery type [zen]
[2019-01-08T21:58:57,012][DEBUG][o.e.d.z.UnicastZenPing   ] [node-2] using initial hosts [master], with concurrent_connects [10], resolve_timeout [5s]
[2019-01-08T21:58:57,024][DEBUG][o.e.d.z.ElectMasterService] [node-2] using minimum_master_nodes [1]
[2019-01-08T21:58:57,024][DEBUG][o.e.d.z.ZenDiscovery     ] [node-2] using ping_timeout [3s], join.timeout [1m], master_election.ignore_non_master [false]
[2019-01-08T21:58:57,027][DEBUG][o.e.d.z.MasterFaultDetection] [node-2] [master] uses ping_interval [1s], ping_timeout [30s], ping_retries [3]
[2019-01-08T21:58:57,031][DEBUG][o.e.d.z.NodesFaultDetection] [node-2] [node  ] uses ping_interval [1s], ping_timeout [30s], ping_retries [3]
[2019-01-08T21:58:57,369][DEBUG][o.e.i.r.RecoverySettings ] [node-2] using max_bytes_per_sec[40mb]
[2019-01-08T21:58:58,897][DEBUG][o.e.n.Node               ] [node-2] initializing HTTP handlers ...
[2019-01-08T21:58:59,551][INFO ][o.e.n.Node               ] [node-2] initialized
[2019-01-08T21:58:59,551][INFO ][o.e.n.Node               ] [node-2] starting ...
[2019-01-08T21:58:59,555][DEBUG][o.e.l.LicenseService     ] [node-2] initializing license state
[2019-01-08T21:58:59,555][DEBUG][o.e.x.m.MonitoringService] [node-2] monitoring service is starting
[2019-01-08T21:58:59,555][DEBUG][o.e.x.m.MonitoringService] [node-2] monitoring service started
[2019-01-08T21:58:59,573][DEBUG][o.e.x.m.c.CleanerService ] [node-2] starting cleaning service
[2019-01-08T21:58:59,626][DEBUG][o.e.x.m.c.CleanerService ] [node-2] cleaning service started
[2019-01-08T21:58:59,696][DEBUG][i.n.c.MultithreadEventLoopGroup] -Dio.netty.eventLoopThreads: 8
[2019-01-08T21:58:59,852][DEBUG][i.n.c.n.NioEventLoop     ] -Dio.netty.noKeySetOptimization: false
[2019-01-08T21:58:59,852][DEBUG][i.n.c.n.NioEventLoop     ] -Dio.netty.selectorAutoRebuildThreshold: 512
[2019-01-08T21:58:59,939][DEBUG][i.n.u.i.PlatformDependent] org.jctools-core.MpscChunkedArrayQueue: available
[2019-01-08T21:59:00,029][DEBUG][o.e.x.s.t.n.SecurityNetty4ServerTransport] [node-2] using profile[default], worker_count[8], port[9300-9400], bind_host[[0.0.0.0]], publish_host[[]], compress[false], connect_timeout[30s], connections_per_node[2/3/6/1/1], receive_predictor[64kb->64kb]
[2019-01-08T21:59:00,061][DEBUG][o.e.x.s.t.n.SecurityNetty4ServerTransport] [node-2] binding server bootstrap to: [0.0.0.0]
[2019-01-08T21:59:00,127][DEBUG][i.n.c.DefaultChannelId   ] -Dio.netty.processId: 10708 (auto-detected)
[2019-01-08T21:59:00,136][DEBUG][i.n.u.NetUtil            ] -Djava.net.preferIPv4Stack: false
[2019-01-08T21:59:00,136][DEBUG][i.n.u.NetUtil            ] -Djava.net.preferIPv6Addresses: false
[2019-01-08T21:59:00,179][DEBUG][i.n.u.NetUtil            ] Loopback interface: lo (Software Loopback Interface 1, 127.0.0.1)
[2019-01-08T21:59:00,183][DEBUG][i.n.u.NetUtil            ] Failed to get SOMAXCONN from sysctl and file \proc\sys\net\core\somaxconn. Default: 200
[2019-01-08T21:59:00,231][DEBUG][i.n.c.DefaultChannelId   ] -Dio.netty.machineId: b0:83:fe:ff:fe:70:07:b5 (auto-detected)
[2019-01-08T21:59:00,263][DEBUG][i.n.u.i.InternalThreadLocalMap] -Dio.netty.threadLocalMap.stringBuilder.initialSize: 1024
[2019-01-08T21:59:00,263][DEBUG][i.n.u.i.InternalThreadLocalMap] -Dio.netty.threadLocalMap.stringBuilder.maxSize: 4096
[2019-01-08T21:59:00,338][DEBUG][i.n.u.ResourceLeakDetector] -Dio.netty.leakDetection.level: simple
[2019-01-08T21:59:00,338][DEBUG][i.n.u.ResourceLeakDetector] -Dio.netty.leakDetection.maxRecords: 4
[2019-01-08T21:59:00,338][DEBUG][i.n.u.ResourceLeakDetector] -Dio.netty.leakDetection.maxSampledRecords: 40
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.numHeapArenas: 8
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.numDirectArenas: 8
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.pageSize: 8192
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.maxOrder: 11
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.chunkSize: 16777216
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.tinyCacheSize: 512
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.smallCacheSize: 256
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.normalCacheSize: 64
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.maxCachedBufferCapacity: 32768
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.cacheTrimInterval: 8192
[2019-01-08T21:59:00,466][DEBUG][i.n.b.PooledByteBufAllocator] -Dio.netty.allocator.useCacheForAllThreads: true
[2019-01-08T21:59:00,514][DEBUG][i.n.b.ByteBufUtil        ] -Dio.netty.allocator.type: pooled
[2019-01-08T21:59:00,514][DEBUG][i.n.b.ByteBufUtil        ] -Dio.netty.threadLocalDirectBufferSize: 65536
[2019-01-08T21:59:00,514][DEBUG][i.n.b.ByteBufUtil        ] -Dio.netty.maxThreadLocalCharBufferSize: 16384
[2019-01-08T21:59:00,593][DEBUG][o.e.x.s.t.n.SecurityNetty4ServerTransport] [node-2] Bound profile [default] to address {[::]:9300}
[2019-01-08T21:59:00,675][DEBUG][o.e.x.s.t.f.IPFilter     ] [node-2] loaded ip filtering profiles: [default]
[2019-01-08T21:59:00,675][INFO ][o.e.t.TransportService   ] [node-2] publish_address {10.100.99.118:9300}, bound_addresses {[::]:9300}
[2019-01-08T21:59:00,708][INFO ][o.e.b.BootstrapChecks    ] [node-2] bound or publishing to a non-loopback address, enforcing bootstrap checks
[2019-01-08T21:59:00,741][DEBUG][o.e.n.Node               ] [node-2] waiting to join the cluster. timeout [30s]
[2019-01-08T21:59:01,015][DEBUG][i.n.b.AbstractByteBuf    ] -Dio.netty.buffer.bytebuf.checkAccessible: true
[2019-01-08T21:59:01,024][DEBUG][i.n.u.ResourceLeakDetectorFactory] Loaded default ResourceLeakDetector: io.netty.util.ResourceLeakDetector@7c675148
[2019-01-08T21:59:01,053][DEBUG][i.n.u.Recycler           ] -Dio.netty.recycler.maxCapacityPerThread: 32768
[2019-01-08T21:59:01,053][DEBUG][i.n.u.Recycler           ] -Dio.netty.recycler.maxSharedCapacityFactor: 2
[2019-01-08T21:59:01,053][DEBUG][i.n.u.Recycler           ] -Dio.netty.recycler.linkCapacity: 16
[2019-01-08T21:59:01,053][DEBUG][i.n.u.Recycler           ] -Dio.netty.recycler.ratio: 8
[2019-01-08T21:59:02,899][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T21:59:02,910][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T21:59:03,753][DEBUG][o.e.d.z.ZenDiscovery     ] [node-2] filtered ping responses: (ignore_non_masters [false])
	--> ping_response{node [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}], id[19], master [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}],cluster_state_version [33], cluster_name[whirly-es]}
	--> ping_response{node [{node-2}{1yGidog0S6KySrLcql7o7Q}{8Rzelm36QUe5V2KsAkf15Q}{10.100.99.118}{10.100.99.118:9300}{ml.machine_memory=17094565888, xpack.installed=true, ml.max_open_jobs=20, ml.enabled=true}], id[7], master [null],cluster_state_version [-1], cluster_name[whirly-es]}
[2019-01-08T21:59:03,764][DEBUG][o.e.c.s.MasterService    ] [node-2] processing [zen-disco-election-stop [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} elected]]: execute
[2019-01-08T21:59:03,774][DEBUG][o.e.c.s.MasterService    ] [node-2] processing [zen-disco-election-stop [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} elected]]: took [9ms] no change in cluster state
[2019-01-08T21:59:03,783][DEBUG][o.e.x.s.t.n.SecurityNetty4ServerTransport] [node-2] connected to node [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}]
[2019-01-08T21:59:03,867][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received full cluster state version [34] with size [13861]
[2019-01-08T21:59:03,871][DEBUG][o.e.d.z.ZenDiscovery     ] [node-2] got first state from fresh master [FCx64UEtScGZNP3fpAx60g]
[2019-01-08T21:59:03,871][DEBUG][o.e.d.z.MasterFaultDetection] [node-2] [master] restarting fault detection against master [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}], reason [new cluster state received and we are monitoring the wrong master [null]]
[2019-01-08T21:59:03,874][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [34]])]: execute
[2019-01-08T21:59:03,875][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [34], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [34]])]
[2019-01-08T21:59:03,877][INFO ][o.e.c.s.ClusterApplierService] [node-2] detected_master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}, added {{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true},}, reason: apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [34]])
[2019-01-08T21:59:03,877][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 34
[2019-01-08T21:59:03,882][INFO ][o.e.c.s.ClusterSettings  ] [node-2] updating [xpack.monitoring.collection.enabled] from [false] to [true]
[2019-01-08T21:59:03,882][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 34
[2019-01-08T21:59:03,896][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[nginx_logs_2016.11.09/H5M-5aCITMSfLUe0EwqoDQ]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,897][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[nginx_logs_2016.11.09/s9tOju6sSn6g1MuaPEOCyw]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,898][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.10/7iSDQEYATgWSyguJjdd3Qw]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,899][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.08/jI2k8zQ5TvWdW1yohOqoBg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,899][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.09/S8OOb_sGRNu6F2dLODgDYQ]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,900][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.08/FA0icLKRS3qeSSamJgnK1A]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,900][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.15/UjJY2Q4KRrKhXVBJ3iJ46g]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,901][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.14/608UutPLQ0eTmqQ2l19Drg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,902][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.15/KRL4sHfFStWdNYjGuN8dsA]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,902][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.13/ccDjTey5RCOH3aj_oCE4Sg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,903][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.11/0wjx0AsrSoKmHD-0y2pPyA]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,903][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.10.12/wuxg5X_JRvKPiXD2GBFZpg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,904][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.14/aTDtgo8rTlegR737ELgC5Q]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,905][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.13/wNDNk6mUSd2VJWYWL0S-Yg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,906][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.10/vG48AcotQRiQxw96UEsTKA]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,906][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.12.16/Xo9iG1oISfSJMm4Geb9fMA]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,907][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.11/5lFBeW4KR16i4bp7pIPn9Q]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,908][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2018.12.16/-A73CEfoQiOxsy1WD9ePpg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,908][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-logstash-6-2018.10.08/p9Gb7OYUQwaneDEN-jFIrg]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,909][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.12/WhK0oRpOSDm9doXvndY-DQ]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,909][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-kibana-6-2018.10.09/Omli1TDgRLq35Zvj_eHi8Q]] cleaning index, no longer part of the metadata
[2019-01-08T21:59:03,910][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.kibana/KgYYsIO7REWaaXoy613kxw]] creating index
[2019-01-08T21:59:03,912][DEBUG][o.e.i.IndicesService     ] [node-2] creating Index [[.kibana/KgYYsIO7REWaaXoy613kxw]], shards [1]/[0] - reason [create index]
[2019-01-08T21:59:04,177][DEBUG][o.e.i.m.MapperService    ] [node-2] [.kibana] using dynamic[true]
[2019-01-08T21:59:04,392][DEBUG][o.e.i.m.MapperService    ] [node-2] [.kibana] [[.kibana/KgYYsIO7REWaaXoy613kxw]] added mapping [doc] (source suppressed due to length, use TRACE level if needed)
[2019-01-08T21:59:04,392][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [.kibana][0] creating shard
[2019-01-08T21:59:04,408][DEBUG][o.e.i.IndexService       ] [node-2] [.kibana] [.kibana][0] loaded data path [E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\KgYYsIO7REWaaXoy613kxw\0], state path [E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\KgYYsIO7REWaaXoy613kxw\0]
[2019-01-08T21:59:04,408][DEBUG][o.e.i.IndexService       ] [node-2] [.kibana] [.kibana][0] creating using an existing path [ShardPath{path=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\KgYYsIO7REWaaXoy613kxw\0, shard=[.kibana][0]}]
[2019-01-08T21:59:04,408][DEBUG][o.e.i.IndexService       ] [node-2] [.kibana] creating shard_id [.kibana][0]
[2019-01-08T21:59:04,416][DEBUG][o.e.i.s.Store            ] [node-2] [.kibana][0] store stats are refreshed with refresh_interval [10s]
[2019-01-08T21:59:04,441][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.kibana][0] state: [CREATED]
[2019-01-08T21:59:04,483][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.kibana][0] state: [CREATED]->[RECOVERING], reason [from {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}]
[2019-01-08T21:59:04,627][DEBUG][o.e.i.r.RecoveryTarget   ] [node-2] [.kibana][0] reset of recovery with shard [.kibana][0] and id [1]
[2019-01-08T21:59:05,142][DEBUG][o.e.i.r.RecoveryTarget   ] [node-2] [.kibana][0] reset of recovery with shard [.kibana][0] and id [2]
[2019-01-08T21:59:05,662][DEBUG][o.e.i.r.RecoveryTarget   ] [node-2] [.kibana][0] reset of recovery with shard [.kibana][0] and id [3]
[2019-01-08T21:59:06,067][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 34
[2019-01-08T21:59:06,068][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:06,081][WARN ][o.e.x.s.a.s.m.NativeRoleMappingStore] [node-2] Failed to clear cache for realms [[]]
[2019-01-08T21:59:06,082][INFO ][o.e.x.s.a.TokenService   ] [node-2] refresh keys
[2019-01-08T21:59:06,177][DEBUG][o.e.i.r.RecoveryTarget   ] [node-2] [.kibana][0] reset of recovery with shard [.kibana][0] and id [4]
[2019-01-08T21:59:06,365][DEBUG][o.e.x.s.a.TokenService   ] [node-2] refreshed keys current: [92 b6 20 e7 b8 39 3a b6], keys: [[92 b6 20 e7 b8 39 3a b6]]
[2019-01-08T21:59:06,365][INFO ][o.e.x.s.a.TokenService   ] [node-2] refreshed keys
[2019-01-08T21:59:06,383][DEBUG][o.e.x.w.WatcherService   ] [node-2] starting watch service...
[2019-01-08T21:59:06,384][DEBUG][o.e.x.w.e.ExecutionService] [node-2] starting execution service
[2019-01-08T21:59:06,384][DEBUG][o.e.l.LicenseService     ] [node-2] previous [null]
[2019-01-08T21:59:06,385][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:06,390][DEBUG][o.e.x.w.e.ExecutionService] [node-2] started execution service
[2019-01-08T21:59:06,395][INFO ][o.e.l.LicenseService     ] [node-2] license [f08235dc-a319-4aeb-9317-0003c9596001] mode [basic] - valid
[2019-01-08T21:59:06,395][DEBUG][o.e.x.w.e.ExecutionService] [node-2] triggered execution of [0] watches
[2019-01-08T21:59:06,395][DEBUG][o.e.x.w.WatcherService   ] [node-2] watch service has started
[2019-01-08T21:59:06,399][DEBUG][o.e.l.LicenseService     ] [node-2] license [f08235dc-a319-4aeb-9317-0003c9596001] - valid
[2019-01-08T21:59:06,426][DEBUG][o.e.x.m.e.l.LocalExporter] started
[2019-01-08T21:59:06,434][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [34]])]: took [2.5s] done applying updated cluster state (version: 34, uuid: T6NDik8wQGCknkkMaSgMpg)
[2019-01-08T21:59:06,434][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [indices_store ([[.monitoring-es-6-2019.01.07][0]] active fully on other nodes)]: execute
[2019-01-08T21:59:06,486][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received diff cluster state version [35] with uuid [KpHSQ5tsSkKMdJX3B95EjA], diff size [686]
[2019-01-08T21:59:06,513][DEBUG][o.e.i.IndicesService     ] [node-2] [.monitoring-es-6-2019.01.07][0] deleted shard reason [no longer used]
[2019-01-08T21:59:06,513][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [indices_store ([[.monitoring-es-6-2019.01.07][0]] active fully on other nodes)]: took [78ms] no change in cluster state
[2019-01-08T21:59:06,513][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [indices_store ([[.monitoring-es-6-2019.01.08][0]] active fully on other nodes)]: execute
[2019-01-08T21:59:06,533][DEBUG][o.e.i.IndicesService     ] [node-2] [.monitoring-es-6-2019.01.08][0] deleted shard reason [no longer used]
[2019-01-08T21:59:06,533][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [indices_store ([[.monitoring-es-6-2019.01.08][0]] active fully on other nodes)]: took [20ms] no change in cluster state
[2019-01-08T21:59:06,533][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [35]])]: execute
[2019-01-08T21:59:06,533][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [35], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [35]])]
[2019-01-08T21:59:06,533][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 35
[2019-01-08T21:59:06,533][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 35
[2019-01-08T21:59:06,534][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2019.01.08/j0D6PyMeQV6l9CLwWxpj-Q]] creating index
[2019-01-08T21:59:06,540][DEBUG][o.e.x.s.t.n.SecurityNetty4HttpServerTransport] [node-2] Bound http to address {[::]:9200}
[2019-01-08T21:59:06,542][DEBUG][o.e.i.IndicesService     ] [node-2] creating Index [[.monitoring-es-6-2019.01.08/j0D6PyMeQV6l9CLwWxpj-Q]], shards [1]/[1] - reason [create index]
[2019-01-08T21:59:06,545][DEBUG][o.e.i.m.MapperService    ] [node-2] [.monitoring-es-6-2019.01.08] using dynamic[true]
[2019-01-08T21:59:06,554][DEBUG][o.e.i.m.MapperService    ] [node-2] [.monitoring-es-6-2019.01.08] [[.monitoring-es-6-2019.01.08/j0D6PyMeQV6l9CLwWxpj-Q]] added mapping [doc] (source suppressed due to length, use TRACE level if needed)
[2019-01-08T21:59:06,555][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [.monitoring-es-6-2019.01.08][0] creating shard
[2019-01-08T21:59:06,555][DEBUG][o.e.i.IndexService       ] [node-2] [.monitoring-es-6-2019.01.08] [.monitoring-es-6-2019.01.08][0] creating using a new path [ShardPath{path=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\j0D6PyMeQV6l9CLwWxpj-Q\0, shard=[.monitoring-es-6-2019.01.08][0]}]
[2019-01-08T21:59:06,556][DEBUG][o.e.i.IndexService       ] [node-2] [.monitoring-es-6-2019.01.08] creating shard_id [.monitoring-es-6-2019.01.08][0]
[2019-01-08T21:59:06,560][DEBUG][o.e.i.s.Store            ] [node-2] [.monitoring-es-6-2019.01.08][0] store stats are refreshed with refresh_interval [10s]
[2019-01-08T21:59:06,560][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.08][0] state: [CREATED]
[2019-01-08T21:59:06,607][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.08][0] state: [CREATED]->[RECOVERING], reason [from {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}]
[2019-01-08T21:59:06,619][DEBUG][o.e.i.r.RecoveryTarget   ] [node-2] [.monitoring-es-6-2019.01.08][0] reset of recovery with shard [.monitoring-es-6-2019.01.08][0] and id [6]
[2019-01-08T21:59:06,735][DEBUG][o.e.i.s.Store            ] [node-2] [.kibana][0] starting index commit [{history_uuid=AhpKwPSzQG6W7IaBJAIGew, local_checkpoint=16, max_seq_no=16, max_unsafe_auto_id_timestamp=-1, sync_id=decQtshaRmmVJMt33ivzog, translog_generation=1, translog_uuid=kSaLtzjRSWysgwzPokXARA}]
[2019-01-08T21:59:06,736][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 35
[2019-01-08T21:59:06,737][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:06,738][DEBUG][o.e.l.LicenseService     ] [node-2] previous [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:06,738][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:06,738][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [35]])]: took [205ms] done applying updated cluster state (version: 35, uuid: KpHSQ5tsSkKMdJX3B95EjA)
[2019-01-08T21:59:06,775][INFO ][o.e.x.s.t.n.SecurityNetty4HttpServerTransport] [node-2] publish_address {10.100.99.118:9200}, bound_addresses {[::]:9200}
[2019-01-08T21:59:06,775][DEBUG][o.e.x.s.t.f.IPFilter     ] [node-2] loaded ip filtering profiles: [default, .http]
[2019-01-08T21:59:06,775][INFO ][o.e.n.Node               ] [node-2] started
[2019-01-08T21:59:06,792][DEBUG][o.e.i.t.Translog         ] [node-2] [.kibana][0] open uncommitted translog checkpoint Checkpoint{offset=55, numOps=0, generation=4, minSeqNo=-1, maxSeqNo=-1, globalCheckpoint=16, minTranslogGeneration=1}
[2019-01-08T21:59:06,797][DEBUG][o.e.i.t.Translog         ] [node-2] [.kibana][0] recovered local translog from checkpoint Checkpoint{offset=55, numOps=0, generation=4, minSeqNo=-1, maxSeqNo=-1, globalCheckpoint=16, minTranslogGeneration=1}
[2019-01-08T21:59:06,799][DEBUG][o.e.i.t.Translog         ] [node-2] [.kibana][0] recovered local translog from checkpoint Checkpoint{offset=55, numOps=0, generation=4, minSeqNo=-1, maxSeqNo=-1, globalCheckpoint=16, minTranslogGeneration=1}
[2019-01-08T21:59:06,800][DEBUG][o.e.i.t.Translog         ] [node-2] [.kibana][0] recovered local translog from checkpoint Checkpoint{offset=55, numOps=0, generation=4, minSeqNo=-1, maxSeqNo=-1, globalCheckpoint=16, minTranslogGeneration=1}
[2019-01-08T21:59:07,093][DEBUG][o.e.i.e.Engine           ] [node-2] [.kibana][0] Safe commit [CommitPoint{segment[segments_9], userData[{history_uuid=AhpKwPSzQG6W7IaBJAIGew, local_checkpoint=16, max_seq_no=16, max_unsafe_auto_id_timestamp=-1, sync_id=decQtshaRmmVJMt33ivzog, translog_generation=1, translog_uuid=kSaLtzjRSWysgwzPokXARA}]}], last commit [CommitPoint{segment[segments_9], userData[{history_uuid=AhpKwPSzQG6W7IaBJAIGew, local_checkpoint=16, max_seq_no=16, max_unsafe_auto_id_timestamp=-1, sync_id=decQtshaRmmVJMt33ivzog, translog_generation=1, translog_uuid=kSaLtzjRSWysgwzPokXARA}]}]
[2019-01-08T21:59:07,510][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.kibana][0] state: [RECOVERING]->[POST_RECOVERY], reason [peer recovery done]
[2019-01-08T21:59:07,512][DEBUG][o.e.c.a.s.ShardStateAction] [node-2] sending [internal:cluster/shard/started] to [FCx64UEtScGZNP3fpAx60g] for shard entry [StartedShardEntry{shardId [[.kibana][0]], allocationId [OGgBJbFaRIikQ_DcOjWeUQ], message [after peer recovery]}]
[2019-01-08T21:59:07,514][DEBUG][o.e.i.r.PeerRecoveryTargetService] [node-2] [.kibana][0] recovery done from [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}], took [3.1s]
[2019-01-08T21:59:07,522][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received diff cluster state version [36] with uuid [5piQKeicRTmvrnaVUn3yvQ], diff size [522]
[2019-01-08T21:59:07,524][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [36]])]: execute
[2019-01-08T21:59:07,524][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [36], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [36]])]
[2019-01-08T21:59:07,524][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 36
[2019-01-08T21:59:07,524][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 36
[2019-01-08T21:59:07,525][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [[.monitoring-es-6-2019.01.07/uxwGBLF3Q_m9S65-EOXvgQ]] creating index
[2019-01-08T21:59:07,531][DEBUG][o.e.i.s.TransportNodesListShardStoreMetaData] [node-2] [.kibana][0] loaded store meta data (took [10.4ms])
[2019-01-08T21:59:07,532][DEBUG][o.e.i.IndicesService     ] [node-2] creating Index [[.monitoring-es-6-2019.01.07/uxwGBLF3Q_m9S65-EOXvgQ]], shards [1]/[1] - reason [create index]
[2019-01-08T21:59:07,533][DEBUG][o.e.i.m.MapperService    ] [node-2] [.monitoring-es-6-2019.01.07] using dynamic[true]
[2019-01-08T21:59:07,541][DEBUG][o.e.i.m.MapperService    ] [node-2] [.monitoring-es-6-2019.01.07] [[.monitoring-es-6-2019.01.07/uxwGBLF3Q_m9S65-EOXvgQ]] added mapping [doc] (source suppressed due to length, use TRACE level if needed)
[2019-01-08T21:59:07,541][DEBUG][o.e.i.c.IndicesClusterStateService] [node-2] [.monitoring-es-6-2019.01.07][0] creating shard
[2019-01-08T21:59:07,542][DEBUG][o.e.i.IndexService       ] [node-2] [.monitoring-es-6-2019.01.07] [.monitoring-es-6-2019.01.07][0] creating using a new path [ShardPath{path=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices\uxwGBLF3Q_m9S65-EOXvgQ\0, shard=[.monitoring-es-6-2019.01.07][0]}]
[2019-01-08T21:59:07,542][DEBUG][o.e.i.IndexService       ] [node-2] [.monitoring-es-6-2019.01.07] creating shard_id [.monitoring-es-6-2019.01.07][0]
[2019-01-08T21:59:07,547][DEBUG][o.e.i.s.Store            ] [node-2] [.monitoring-es-6-2019.01.07][0] store stats are refreshed with refresh_interval [10s]
[2019-01-08T21:59:07,548][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.07][0] state: [CREATED]
[2019-01-08T21:59:07,732][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.07][0] state: [CREATED]->[RECOVERING], reason [from {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}]
[2019-01-08T21:59:07,733][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.kibana][0] state: [POST_RECOVERY]->[STARTED], reason [global state is [STARTED]]
[2019-01-08T21:59:07,740][DEBUG][o.e.i.r.RecoveryTarget   ] [node-2] [.monitoring-es-6-2019.01.07][0] reset of recovery with shard [.monitoring-es-6-2019.01.07][0] and id [8]
[2019-01-08T21:59:07,992][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 36
[2019-01-08T21:59:07,992][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:07,994][DEBUG][o.e.l.LicenseService     ] [node-2] previous [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:07,994][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:07,995][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [36]])]: took [470ms] done applying updated cluster state (version: 36, uuid: 5piQKeicRTmvrnaVUn3yvQ)
[2019-01-08T21:59:08,018][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received diff cluster state version [37] with uuid [vaqlPQ_wS_GPvuYUQpM8Pw], diff size [289]
[2019-01-08T21:59:08,020][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [37]])]: execute
[2019-01-08T21:59:08,020][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [37], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [37]])]
[2019-01-08T21:59:08,020][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 37
[2019-01-08T21:59:08,020][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 37
[2019-01-08T21:59:08,021][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 37
[2019-01-08T21:59:08,021][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:08,021][DEBUG][o.e.l.LicenseService     ] [node-2] previous [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:08,021][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:08,022][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [37]])]: took [1ms] done applying updated cluster state (version: 37, uuid: vaqlPQ_wS_GPvuYUQpM8Pw)
[2019-01-08T21:59:08,313][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received diff cluster state version [38] with uuid [vrhSHvu-RKythj8zu30XpA], diff size [420]
[2019-01-08T21:59:08,315][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [38]])]: execute
[2019-01-08T21:59:08,315][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [38], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [38]])]
[2019-01-08T21:59:08,316][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 38
[2019-01-08T21:59:08,316][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 38
[2019-01-08T21:59:08,369][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 38
[2019-01-08T21:59:08,369][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:08,370][DEBUG][o.e.l.LicenseService     ] [node-2] previous [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:08,370][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:08,370][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [38]])]: took [54ms] done applying updated cluster state (version: 38, uuid: vrhSHvu-RKythj8zu30XpA)
[2019-01-08T21:59:08,571][DEBUG][o.e.i.s.Store            ] [node-2] [.monitoring-es-6-2019.01.08][0] starting index commit [{history_uuid=7DbSz17YRK67hbVnQp1Qvw, local_checkpoint=48077, max_seq_no=48077, max_unsafe_auto_id_timestamp=1546953689519, translog_generation=1, translog_uuid=9OleEF9VS6q_a-TXHHB6oA}]
[2019-01-08T21:59:08,575][DEBUG][o.e.i.t.Translog         ] [node-2] [.monitoring-es-6-2019.01.08][0] open uncommitted translog checkpoint Checkpoint{offset=55, numOps=0, generation=1, minSeqNo=-1, maxSeqNo=-1, globalCheckpoint=-2, minTranslogGeneration=1}
[2019-01-08T21:59:08,689][DEBUG][o.e.i.e.Engine           ] [node-2] [.monitoring-es-6-2019.01.08][0] Safe commit [CommitPoint{segment[segments_4], userData[{history_uuid=7DbSz17YRK67hbVnQp1Qvw, local_checkpoint=48077, max_seq_no=48077, max_unsafe_auto_id_timestamp=1546953689519, translog_generation=1, translog_uuid=9OleEF9VS6q_a-TXHHB6oA}]}], last commit [CommitPoint{segment[segments_4], userData[{history_uuid=7DbSz17YRK67hbVnQp1Qvw, local_checkpoint=48077, max_seq_no=48077, max_unsafe_auto_id_timestamp=1546953689519, translog_generation=1, translog_uuid=9OleEF9VS6q_a-TXHHB6oA}]}]
[2019-01-08T21:59:12,339][DEBUG][o.e.i.s.Store            ] [node-2] [.monitoring-es-6-2019.01.07][0] starting index commit [{history_uuid=TwJJqKphSHi9-9MsBfOKZA, local_checkpoint=93389, max_seq_no=93389, max_unsafe_auto_id_timestamp=1546864467666, sync_id=4RksK8LmS-SWae780xJlGQ, translog_generation=1, translog_uuid=dUBYiPDVSG6DprnKE1PvLw}]
[2019-01-08T21:59:12,345][DEBUG][o.e.i.t.Translog         ] [node-2] [.monitoring-es-6-2019.01.07][0] open uncommitted translog checkpoint Checkpoint{offset=55, numOps=0, generation=1, minSeqNo=-1, maxSeqNo=-1, globalCheckpoint=-2, minTranslogGeneration=1}
[2019-01-08T21:59:12,473][DEBUG][o.e.i.e.Engine           ] [node-2] [.monitoring-es-6-2019.01.07][0] Safe commit [CommitPoint{segment[segments_6], userData[{history_uuid=TwJJqKphSHi9-9MsBfOKZA, local_checkpoint=93389, max_seq_no=93389, max_unsafe_auto_id_timestamp=1546864467666, sync_id=4RksK8LmS-SWae780xJlGQ, translog_generation=1, translog_uuid=dUBYiPDVSG6DprnKE1PvLw}]}], last commit [CommitPoint{segment[segments_6], userData[{history_uuid=TwJJqKphSHi9-9MsBfOKZA, local_checkpoint=93389, max_seq_no=93389, max_unsafe_auto_id_timestamp=1546864467666, sync_id=4RksK8LmS-SWae780xJlGQ, translog_generation=1, translog_uuid=dUBYiPDVSG6DprnKE1PvLw}]}]
[2019-01-08T21:59:12,554][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.07][0] state: [RECOVERING]->[POST_RECOVERY], reason [peer recovery done]
[2019-01-08T21:59:12,555][DEBUG][o.e.c.a.s.ShardStateAction] [node-2] sending [internal:cluster/shard/started] to [FCx64UEtScGZNP3fpAx60g] for shard entry [StartedShardEntry{shardId [[.monitoring-es-6-2019.01.07][0]], allocationId [YKnOJ0IkQz6e29HRw_nMlQ], message [after peer recovery]}]
[2019-01-08T21:59:12,555][DEBUG][o.e.i.r.PeerRecoveryTargetService] [node-2] [.monitoring-es-6-2019.01.07][0] recovery done from [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}], took [5s]
[2019-01-08T21:59:12,562][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received diff cluster state version [39] with uuid [jeOZ--sJT5yMH6w5Rcf_zQ], diff size [459]
[2019-01-08T21:59:12,564][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [39]])]: execute
[2019-01-08T21:59:12,564][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [39], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [39]])]
[2019-01-08T21:59:12,565][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 39
[2019-01-08T21:59:12,565][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 39
[2019-01-08T21:59:12,565][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.07][0] state: [POST_RECOVERY]->[STARTED], reason [global state is [STARTED]]
[2019-01-08T21:59:12,599][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 39
[2019-01-08T21:59:12,600][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:12,602][DEBUG][o.e.l.LicenseService     ] [node-2] previous [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:12,602][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:12,602][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [39]])]: took [37ms] done applying updated cluster state (version: 39, uuid: jeOZ--sJT5yMH6w5Rcf_zQ)
[2019-01-08T21:59:12,920][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T21:59:12,920][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T21:59:21,862][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.08][0] state: [RECOVERING]->[POST_RECOVERY], reason [peer recovery done]
[2019-01-08T21:59:21,862][DEBUG][o.e.c.a.s.ShardStateAction] [node-2] sending [internal:cluster/shard/started] to [FCx64UEtScGZNP3fpAx60g] for shard entry [StartedShardEntry{shardId [[.monitoring-es-6-2019.01.08][0]], allocationId [Nkszr70xQ6WVgY9SBwlMCA], message [after peer recovery]}]
[2019-01-08T21:59:21,864][DEBUG][o.e.i.r.PeerRecoveryTargetService] [node-2] [.monitoring-es-6-2019.01.08][0] recovery done from [{node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true}], took [15.3s]
[2019-01-08T21:59:21,868][DEBUG][o.e.d.z.PublishClusterStateAction] [node-2] received diff cluster state version [40] with uuid [otZ0-LyHTGitns5oMLOwOw], diff size [458]
[2019-01-08T21:59:21,870][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [40]])]: execute
[2019-01-08T21:59:21,870][DEBUG][o.e.c.s.ClusterApplierService] [node-2] cluster state updated, version [40], source [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [40]])]
[2019-01-08T21:59:21,870][DEBUG][o.e.c.s.ClusterApplierService] [node-2] applying cluster state version 40
[2019-01-08T21:59:21,870][DEBUG][o.e.c.s.ClusterApplierService] [node-2] apply cluster state with version 40
[2019-01-08T21:59:21,871][DEBUG][o.e.i.s.IndexShard       ] [node-2] [.monitoring-es-6-2019.01.08][0] state: [POST_RECOVERY]->[STARTED], reason [global state is [STARTED]]
[2019-01-08T21:59:21,901][DEBUG][o.e.c.s.ClusterApplierService] [node-2] set locally applied cluster state to version 40
[2019-01-08T21:59:21,901][DEBUG][o.e.x.s.s.IndexLifecycleManager] [node-2] Security index [.security] is not yet active
[2019-01-08T21:59:21,903][DEBUG][o.e.l.LicenseService     ] [node-2] previous [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:21,903][DEBUG][o.e.l.LicenseService     ] [node-2] current [LicensesMetaData{license={"uid":"f08235dc-a319-4aeb-9317-0003c9596001","type":"basic","issue_date_in_millis":1537351068128,"max_nodes":1000,"issued_to":"whirly-es","issuer":"elasticsearch","signature":"/////QAAAMBjkglMVA+Cm4TutzhdePycP35+qalTRNpHvRaIkBDvKGBmvyY4wRhaSYbonvDkg1SaFaGS6aGTtzoyKC5sOZQQbXCxzq8YTt+zbs+ld5OxOagifw6vlgty1nD4g7gDLx61w1rU0bdenFL8TcZ/tysiIZc0/Sb51YEUTtPykjPRrJ+vUs2zlocVHl269CoA1L4ZLXT6JAEQdlB0+7RKQ4/q6KnxCpM5N0tQYFaksGQ+Tm4jf+hCtSBxgtuYRYTyMrQ=","start_date_in_millis":-1}, trialVersion=null}]
[2019-01-08T21:59:21,904][DEBUG][o.e.c.s.ClusterApplierService] [node-2] processing [apply cluster state (from master [master {node-1}{FCx64UEtScGZNP3fpAx60g}{CC9AktwWSnuOIwc5H3rqsQ}{10.100.97.207}{10.100.97.207:9300}{ml.machine_memory=4143157248, ml.max_open_jobs=20, xpack.installed=true, ml.enabled=true} committed version [40]])]: took [33ms] done applying updated cluster state (version: 40, uuid: otZ0-LyHTGitns5oMLOwOw)
[2019-01-08T21:59:22,920][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T21:59:22,920][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T21:59:32,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T21:59:32,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T21:59:33,852][DEBUG][i.n.h.c.c.ZlibCodecFactory] -Dio.netty.noJdkZlibDecoder: false
[2019-01-08T21:59:33,852][DEBUG][i.n.h.c.c.ZlibCodecFactory] -Dio.netty.noJdkZlibEncoder: false
[2019-01-08T21:59:42,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T21:59:42,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T21:59:52,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T21:59:52,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T22:00:02,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T22:00:02,921][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
[2019-01-08T22:00:12,922][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing expired connections
[2019-01-08T22:00:12,922][DEBUG][o.a.h.i.c.PoolingHttpClientConnectionManager] Closing connections idle longer than 10000 MILLISECONDS
CONSTRUCTION Paradise :
Process finished with exit code -1
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
:Build::
Publish :pub;lish.yml :
	