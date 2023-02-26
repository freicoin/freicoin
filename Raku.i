# This is a basic workflow that is manually triggered
name: Manual workflow
# Controls when the action will run. Workflow runs when manually triggered using the UI
# or API.
on:
  workflow_dispatch:
    # Inputs the workflow accepts.
    inputs:
      name:
        # Friendly description to be shown in the UI instead of 'name'
        description: 'Person to greet'
        # Default value if no value is explicitly provided
        default: 'World'
        # Input has to be provided for the workflow to run
        required: true
# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "greet"
  greet:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest
    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
    # Runs a single command using the runners shell
    - name: Send greeting
      run: echo "Hello ${{ github.event.inputs.name }}"
  "name": "auto-assign",
  "description": "Automatically add reviewers/assignees to issues/PRs when issues/PRs are opened",
  "version": "1.1.0",
  "main": "dist/index.js",
  "repository": "https://github.com/wow-actions/auto-assign",
  "files": [
    "dist",
    "action.yml"
  ],
  "scripts": {
    "clean": "rimraf dist",
    "lint": "eslint 'src/**/*.{js,ts}?(x)' --fix",
    "build": "ncc build src/index.ts --minify --v8-cache",
    "prebuild": "run-s lint clean",
    "prepare": "is-ci || husky install .husky"
  },
  "lint-staged": {
    "**/*.{js,jsx,tsx,ts,less,md,json}": [
      "pretty-quick — staged"
    ],
    "*.ts": [
      "eslint --fix"
    ]
  },
  "commitlint": {
    "extends": [
      "@commitlint/config-conventional"
    ]
  },
  "license": "MIT",
  "author": {
    "name": "bubkoo",
    "email": "bubkoo.wy@gmail.com"
  },
  "dependencies": {
    "@actions/core": "^1.2.6",
    "@actions/github": "^5.0.0",
    "js-yaml": "^4.1.0",
    "lodash.merge": "^4.6.2",
    "lodash.samplesize": "^4.2.0"
  },
  "devDependencies": {
    "@commitlint/cli": "^13.1.0",
    "@commitlint/config-conventional": "^13.1.0",
    "@types/js-yaml": "^4.0.3",
    "@types/lodash.merge": "^4.6.6",
    "@types/lodash.samplesize": "^4.2.6",
    "@types/node": "^16.9.1",
    "@typescript-eslint/eslint-plugin": "^4.18.0",
    "@typescript-eslint/parser": "^4.18.0",
    "@vercel/ncc": "^0.31.1",
    "devmoji": "^2.3.0",
    "eslint": "^7.22.0",
    "eslint-config-airbnb-base": "^14.2.1",
    "eslint-config-prettier": "^8.1.0",
    "eslint-plugin-eslint-comments": "^3.2.0",
    "eslint-plugin-import": "^2.22.1",
    "eslint-plugin-prettier": "^4.0.0",
    "eslint-plugin-promise": "^5.1.0",
    "husky": "^7.0.2",
    "is-ci": "^3.0.0",
    "lint-staged": "^11.1.2",
    "npm-run-all": "^4.1.5",
    "prettier": "^2.4.1",
    "pretty-quick": "^3.1.1",
    "rimraf": "^3.0.2",
    "typescript": "^4.4.3
'require'' ':'' 'test'' :
:Build::
Pubish pom.YML ":
'B'E'G'I'N':''title:Name''Name'':WORKSFLOW_CALL_ON:DISPATCH:REPOSITORIES:FRAMEWORK-pop-kernal_Spring_up-dialog-for-Acer_Chromebook311''@'C:\'Users:\'#'Home:\'Desktop :':'Build::'License'.md/'S'E'C'U'R'I'T'Y'.md' :*Issue #, if available:*Skip to contentSearch or jump to…Pull requestsIssuesCodespacesMarketplaceExplore @mowjoejoejoejoe Your account has been flagged.Because of that, your profile is hidden from the public. If you believe this is a mistake, contact support to have your account status reviewed.whirlys/Elastic-In-PracticePublicFork your own copy of whirlys/Elastic-In-PracticeCodeIssues1Pull requestsActionsProjectsWikiSecurityInsights一次Elasticsearch的启动和关闭日志Lai JianFeng edited this page Jan 8, 2019 · 2 revisions Pages 2Find a page…Home一次Elasticsearch的启动和关闭日志环境信息Clone this wiki locallyhttps://github.com/whirlys/Elastic-In-Practice.wiki.git环境信息系统：Windows7Elasticsearch版本：6.3.2本节点名称：node-2集群中另外一个节点：master:9300（节点名称：node-1）日志级别：debug注意：日志中前面大部分都是 JarHell 检查重复类文件的日志，直接跳到后面看启动和关闭日志即可"C:\Program Files\Java\jdk1.8.0_161\bin\java.exe" -Des.path.conf=E:\Test-workstation\elasticsearch-6.3.2\config -Des.path.home=E:\Test-workstation\elasticsearch-6.3.2 -Dlog4j2.disable.jmx=true -Djava.security.policy=E:\Test-workstation\elasticsearch-6.3.2\config\java.policy -Xms2g -Xmx2g "-javaagent:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar=2579:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\bin" -Dfile.encoding=UTF-8 -classpath "C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar;E:\Test-workstation\elasticsearch\server\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main;E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar;E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar" org.elasticsearch.bootstrap.Elasticsearch[2019-01-08T21:58:11,821][DEBUG][o.e.b.JNAKernel32Library ] windows/Kernel32 library loaded[2019-01-08T21:58:11,911][DEBUG][o.e.b.SystemCallFilter   ] Windows ActiveProcessLimit initialization successful[2019-01-08T21:58:11,916][DEBUG][o.e.b.JNANatives         ] console ctrl handler correctly set[2019-01-08T21:58:11,936][DEBUG][o.e.b.JarHell            ] java.class.path: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar;E:\Test-workstation\elasticsearch\server\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main;E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main;E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar;E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar;C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar;C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:11,942][DEBUG][o.e.b.JarHell            ] sun.boot.class.path: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\sunrsasign.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_161\jre\classes[2019-01-08T21:58:11,943][DEBUG][o.e.b.JarHell            ] classloader urls: [file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/charsets.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/deploy.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/access-bridge-64.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/cldrdata.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/dnsns.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/jaccess.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/jfxrt.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/localedata.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/nashorn.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunec.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunjce_provider.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunmscapi.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/sunpkcs11.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/ext/zipfs.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/javaws.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jce.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jfr.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jfxswt.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/jsse.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/management-agent.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/plugin.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/resources.jar, file:/C:/Program%20Files/Java/jdk1.8.0_161/jre/lib/rt.jar, file:/E:/Test-workstation/elasticsearch/server/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/libs/x-content/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/server/cli/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/libs/elasticsearch-core/build-idea/classes/main/, file:/E:/Test-workstation/elasticsearch/libs/plugin-classloader/build-idea/classes/main/, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-core/7.3.1/ce76b4aef66ffe0830afefb2b347028a4fc9eb36/lucene-core-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-analyzers-common/7.3.1/51b62b22f4193bfa386f5ca0c978c68821a12bc0/lucene-analyzers-common-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-backward-codecs/7.3.1/c9bded879284d12b66eb8df112b6f69078616bb6/lucene-backward-codecs-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-grouping/7.3.1/ebb5344ee066bbb6031164dcf4e690d5a4ea62a5/lucene-grouping-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-highlighter/7.3.1/1e945c65876a1eab97a5db40e92c981c5a65915/lucene-highlighter-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-join/7.3.1/e866b2c36555cff48f31a427efbfd52466418504/lucene-join-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-memory/7.3.1/12b7520cfb0c83d4d9e4efde6ad1812693f91acd/lucene-memory-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-misc/7.3.1/2ce12b8828f29c8e5dd9eeef05333705befc9342/lucene-misc-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-queries/7.3.1/d531efe427da6cb41a9aa52854be4dd241227a19/lucene-queries-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-queryparser/7.3.1/51e4cde15df3ab4534a6407598cfb5c7ce7d21ac/lucene-queryparser-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-sandbox/7.3.1/ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5/lucene-sandbox-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-spatial/7.3.1/6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec/lucene-spatial-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-spatial-extras/7.3.1/7ff14f7c7b8e2fb7259e925949f51122cbc873c4/lucene-spatial-extras-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-spatial3d/7.3.1/db59b01557dd4abb1a469d857e2a96b3c3aa6365/lucene-spatial3d-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.lucene/lucene-suggest/7.3.1/5255e5bec27f078ca89cdc44b9614e3295b51607/lucene-suggest-7.3.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.carrotsearch/hppc/0.7.1/8b5057f74ea378c0150a1860874a3ebdcb713767/hppc-0.7.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/joda-time/joda-time/2.9.9/f7b520c458572890807d143670c9b24f4de90897/joda-time-2.9.9.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.tdunning/t-digest/3.2/2ab94758b0276a8a26102adf8d528cf6d0567b9a/t-digest-3.2.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.hdrhistogram/HdrHistogram/2.1.9/e4631ce165eb400edecfa32e03d3f1be53dee754/HdrHistogram-2.1.9.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.locationtech.spatial4j/spatial4j/0.7/faa8ba85d503da4ab872d17ba8c00da0098ab2f2/spatial4j-0.7.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.locationtech.jts/jts-core/1.15.0/705981b7e25d05a76a3654e597dab6ba423eb79e/jts-core-1.15.0.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.logging.log4j/log4j-api/2.9.1/7a2999229464e7a324aa503c0a52ec0f05efe7bd/log4j-api-2.9.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.logging.log4j/log4j-core/2.9.1/c041978c686866ee8534f538c6220238db3bb6be/log4j-core-2.9.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.apache.logging.log4j/log4j-1.2-api/2.9.1/894f96d677880d4ab834a1356f62b875e579caaa/log4j-1.2-api-2.9.1.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.elasticsearch/jna/4.5.1/da10908ae23dc59b19dc258e63aea1c44621dc3a/jna-4.5.1.jar, file:/E:/Test-workstation/elasticsearch/libs/secure-sm/build-idea/classes/main/, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/org.yaml/snakeyaml/1.17/7a27ea250c5130b2922b86dea63cbb1cc10a660c/snakeyaml-1.17.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.core/jackson-core/2.8.10/eb21a035c66ad307e66ec8fce37f5d50fd62d039/jackson-core-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.dataformat/jackson-dataformat-smile/2.8.10/e853081fadaad3e98ed801937acc3d8f77580686/jackson-dataformat-smile-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.dataformat/jackson-dataformat-yaml/2.8.10/1e08caf1d787c825307d8cc6362452086020d853/jackson-dataformat-yaml-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/com.fasterxml.jackson.dataformat/jackson-dataformat-cbor/2.8.10/1c58cc9313ddf19f0900cd61ed044874278ce320/jackson-dataformat-cbor-2.8.10.jar, file:/C:/Users/TDW/.gradle/caches/modules-2/files-2.1/net.sf.jopt-simple/jopt-simple/5.0.2/98cafc6081d5632b61be2c9e60650b64ddbc637c/jopt-simple-5.0.2.jar, file:/C:/Program%20Files/JetBrains/IntelliJ%20IDEA%202018.2.1/lib/idea_rt.jar][2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:11,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:11,958][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:11,959][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:11,960][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:13,075][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:13,091][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:13,095][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:13,106][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:13,109][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:13,115][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:13,119][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:13,120][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:13,122][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:13,124][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:13,125][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:13,127][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:13,129][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:13,132][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:13,134][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:13,138][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:13,140][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:13,142][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:13,144][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:13,145][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:13,148][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:13,150][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:13,152][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:13,153][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:13,155][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:13,158][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:13,160][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:13,163][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:13,165][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:13,167][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:13,170][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:13,172][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:13,174][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:13,175][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:13,177][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:13,179][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:13,181][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:14,069][DEBUG][o.e.c.n.IfConfig         ] configuration:lo        Software Loopback Interface 1        inet 127.0.0.1 netmask:255.0.0.0 broadcast:127.255.255.255 scope:host        inet6 ::1 prefixlen:128 scope:host        UP MULTICAST LOOPBACK mtu:-1 index:1net0        WAN Miniport (SSTP)        MULTICAST mtu:-1 index:2net1        WAN Miniport (L2TP)        MULTICAST mtu:-1 index:3net2        WAN Miniport (PPTP)        MULTICAST mtu:-1 index:4ppp0        WAN Miniport (PPPOE)        MULTICAST mtu:-1 index:5eth0        WAN Miniport (IPv6)        MULTICAST mtu:-1 index:6eth1        WAN Miniport (Network Monitor)        MULTICAST mtu:-1 index:7eth2        WAN Miniport (IP)        MULTICAST mtu:-1 index:8ppp1        RAS Async Adapter        MULTICAST mtu:-1 index:9net3        WAN Miniport (IKEv2)        MULTICAST mtu:-1 index:10eth3        Realtek PCIe GBE Family Controller        MULTICAST mtu:-1 index:11net4        Microsoft ISATAP Adapter        inet6 fe80::5efe:a64:6376 prefixlen:128 scope:link        hardware 00:00:00:00:00:00:00:E0        POINTOPOINT mtu:1280 index:12eth4        Realtek PCIe GBE Family Controller #2        inet 10.100.99.118 netmask:255.255.252.0 broadcast:10.100.99.255 scope:site        inet6 fe80::c41a:a386:9e78:6936 prefixlen:64 scope:link        hardware B0:83:FE:70:07:B5        UP MULTICAST mtu:1500 index:13eth5        VirtualBox Host-Only Ethernet Adapter        inet 192.168.56.1 netmask:255.255.255.0 broadcast:192.168.56.255 scope:site        inet6 fe80::ad6b:7c6a:73b4:9964 prefixlen:64 scope:link        hardware 0A:00:27:00:00:0E        UP MULTICAST mtu:1500 index:14net5        Microsoft ISATAP Adapter #2        inet6 fe80::5efe:c0a8:3801 prefixlen:128 scope:link        hardware 00:00:00:00:00:00:00:E0        POINTOPOINT mtu:1280 index:15net6        Teredo Tunneling Pseudo-Interface        inet6 fe80::100:7f:fffe prefixlen:64 scope:link        hardware 00:00:00:00:00:00:00:E0        POINTOPOINT mtu:1280 index:16eth6        Realtek PCIe GBE Family Controller #2-VirtualBox NDIS Light-Weight Filter-0000        MULTICAST mtu:-1 index:17eth7        Realtek PCIe GBE Family Controller #2-QoS Packet Scheduler-0000        MULTICAST mtu:-1 index:18eth8        Realtek PCIe GBE Family Controller #2-WFP LightWeight Filter-0000        MULTICAST mtu:-1 index:19eth9        WAN Miniport (Network Monitor)-QoS Packet Scheduler-0000        MULTICAST mtu:-1 index:20eth10        WAN Miniport (IP)-QoS Packet Scheduler-0000        MULTICAST mtu:-1 index:21eth11        WAN Miniport (IPv6)-QoS Packet Scheduler-0000        MULTICAST mtu:-1 index:22eth12        VirtualBox Host-Only Ethernet Adapter-QoS Packet Scheduler-0000        MULTICAST mtu:-1 index:23eth13        VirtualBox Host-Only Ethernet Adapter-WFP LightWeight Filter-0000        MULTICAST mtu:-1 index:24[2019-01-08T21:58:14,313][INFO ][o.e.n.Node               ] [node-2] initializing ...[2019-01-08T21:58:14,467][DEBUG][o.e.e.NodeEnvironment    ] [node-2] using node location [[NodePath{path=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0, indicesPath=E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0\indices, fileStore=(E:), majorDeviceNumber=-1, minorDeviceNumber=-1}]], local_lock_id [0][2019-01-08T21:58:14,470][DEBUG][o.e.e.NodeEnvironment    ] [node-2] node data locations details: -> E:\Test-workstation\elasticsearch-6.3.2\data\nodes\0, free_space [142.4gb], usable_space [142.4gb], total_space [300.9gb], mount [(E:)], type [NTFS][2019-01-08T21:58:14,470][INFO ][o.e.e.NodeEnvironment    ] [node-2] heap size [1.9gb], compressed ordinary object pointers [true][2019-01-08T21:58:14,522][INFO ][o.e.n.Node               ] [node-2] node name [node-2], node ID [1yGidog0S6KySrLcql7o7Q][2019-01-08T21:58:14,522][INFO ][o.e.n.Node               ] [node-2] version[6.3.2-SNAPSHOT], pid[10708], build[unknown/unknown/Unknown/Unknown], OS[Windows 7/6.1/amd64], JVM[Oracle Corporation/Java HotSpot(TM) 64-Bit Server VM/1.8.0_161/25.161-b12][2019-01-08T21:58:14,523][INFO ][o.e.n.Node               ] [node-2] JVM arguments [-Des.path.conf=E:\Test-workstation\elasticsearch-6.3.2\config, -Des.path.home=E:\Test-workstation\elasticsearch-6.3.2, -Dlog4j2.disable.jmx=true, -Djava.security.policy=E:\Test-workstation\elasticsearch-6.3.2\config\java.policy, -Xms2g, -Xmx2g, -javaagent:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar=2579:C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\bin, -Dfile.encoding=UTF-8][2019-01-08T21:58:14,523][WARN ][o.e.n.Node               ] [node-2] version [6.3.2-SNAPSHOT] is a pre-release version of Elasticsearch and is not suitable for production[2019-01-08T21:58:14,523][DEBUG][o.e.n.Node               ] [node-2] using config [E:\Test-workstation\elasticsearch-6.3.2\config], data [[E:\Test-workstation\elasticsearch-6.3.2\data]], logs [E:\Test-workstation\elasticsearch-6.3.2\logs], plugins [E:\Test-workstation\elasticsearch-6.3.2\plugins][2019-01-08T21:58:14,642][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:14,642][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\percolator\percolator-6.3.2.jar[2019-01-08T21:58:14,649][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:14,649][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:14,650][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:14,651][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:14,651][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:14,651][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:14,652][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:14,653][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:14,653][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:14,657][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:14,657][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:14,658][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:14,659][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:14,660][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:14,661][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:14,662][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:14,663][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:14,664][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:14,664][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:14,667][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:14,667][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:14,668][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:14,669][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:14,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:14,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:14,671][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:14,672][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:14,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:14,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:14,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:14,688][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:14,688][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:14,691][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:14,692][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:14,701][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:14,702][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:15,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:15,771][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:15,771][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:15,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:15,775][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:15,779][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:15,784][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:15,785][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:15,785][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:15,787][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:15,787][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:15,790][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:15,790][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\percolator\percolator-6.3.2.jar[2019-01-08T21:58:15,791][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:15,791][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:15,792][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:15,795][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:15,795][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:15,796][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:15,797][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:16,650][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:16,651][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\repository-url\repository-url-6.3.2.jar[2019-01-08T21:58:16,658][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:16,658][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:16,660][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:16,662][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:16,663][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:16,663][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:16,665][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:16,667][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:16,669][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:16,673][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:16,673][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:16,674][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:16,676][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:16,679][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:16,679][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:16,681][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:16,683][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:16,684][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:16,684][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:16,687][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:16,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:16,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:16,692][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:16,695][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\repository-url\repository-url-6.3.2.jar[2019-01-08T21:58:16,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:16,696][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:16,696][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:16,697][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:16,697][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:16,697][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:16,699][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:16,716][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:16,718][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:16,720][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:16,722][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:16,722][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:16,725][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:16,726][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:16,737][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:16,738][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:17,654][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:17,656][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:17,656][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:17,657][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:17,659][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:17,661][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:17,664][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:17,666][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:17,666][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:17,667][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:17,667][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:17,671][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:17,673][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:17,673][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:17,674][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:17,674][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:17,674][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:17,675][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:17,675][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:17,675][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:17,708][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:17,708][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\rank-eval\rank-eval-6.3.2.jar[2019-01-08T21:58:17,715][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:17,715][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:17,716][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:17,718][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:17,719][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:17,719][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:17,720][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:17,721][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:17,722][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:17,726][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:17,726][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:17,728][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:17,729][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:17,731][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:17,731][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:17,732][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:17,734][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:17,735][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:17,735][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:17,739][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:17,739][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:17,740][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:17,742][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:17,744][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:17,744][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:17,744][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:17,746][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:17,746][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:17,746][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:17,747][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:17,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:17,766][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:17,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:17,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:17,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:17,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:17,772][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:17,783][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:17,784][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:18,683][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:18,685][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:18,685][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:18,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:18,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:18,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:18,693][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:18,694][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:18,694][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:18,696][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:18,696][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:18,700][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:18,701][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:18,701][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:18,701][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:18,702][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\rank-eval\rank-eval-6.3.2.jar[2019-01-08T21:58:18,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:18,703][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:18,705][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:18,740][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:18,740][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpclient-4.5.2.jar[2019-01-08T21:58:18,742][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpasyncclient-4.1.2.jar[2019-01-08T21:58:18,742][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\reindex-6.3.2.jar[2019-01-08T21:58:18,743][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-nio-4.4.5.jar[2019-01-08T21:58:18,744][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-logging-1.1.3.jar[2019-01-08T21:58:18,744][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-4.4.5.jar[2019-01-08T21:58:18,745][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\elasticsearch-rest-client-6.3.2.jar[2019-01-08T21:58:18,746][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-codec-1.10.jar[2019-01-08T21:58:18,753][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:18,753][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:18,754][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:18,757][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:18,757][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:18,757][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:18,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:18,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:18,761][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:18,766][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:18,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:18,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:18,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:18,771][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:18,771][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:18,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:18,774][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:18,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:18,776][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:18,780][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:18,780][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\elasticsearch-rest-client-6.3.2.jar[2019-01-08T21:58:18,780][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:18,782][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:18,784][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:18,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:18,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:18,786][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:18,788][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:18,788][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:18,788][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:18,789][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:18,805][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:18,807][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-codec-1.10.jar[2019-01-08T21:58:18,808][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:18,810][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpasyncclient-4.1.2.jar[2019-01-08T21:58:18,811][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:18,812][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\reindex-6.3.2.jar[2019-01-08T21:58:18,813][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:18,813][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-nio-4.4.5.jar[2019-01-08T21:58:18,814][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:18,817][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:18,818][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:18,829][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:18,830][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:19,755][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:19,758][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:19,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:19,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:19,761][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\commons-logging-1.1.3.jar[2019-01-08T21:58:19,761][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpcore-4.4.5.jar[2019-01-08T21:58:19,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:19,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:19,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:19,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:19,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:19,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:19,770][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:19,774][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:19,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:19,775][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:19,777][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\reindex\httpclient-4.5.2.jar[2019-01-08T21:58:19,778][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:19,778][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:19,815][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:19,815][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:19,819][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:19,820][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:19,821][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:19,822][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:19,832][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:19,833][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:19,835][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:19,837][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:19,838][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:19,839][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:19,839][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:19,840][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:19,840][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:19,841][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:19,842][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:19,842][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:19,843][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:19,850][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:19,850][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:19,851][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:19,853][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:19,853][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:19,853][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:19,855][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:19,857][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:19,858][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:19,859][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:19,860][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:19,871][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:19,875][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:19,875][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:19,877][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:19,878][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:19,880][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:19,880][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:19,881][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:19,883][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:19,884][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:19,885][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:19,885][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:19,888][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:19,888][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:19,890][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:19,892][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:19,894][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:19,896][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:19,896][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:19,896][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:19,898][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:19,899][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:19,899][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:19,899][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:19,901][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:19,902][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:19,918][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:19,920][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:19,920][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:19,921][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:19,923][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:19,923][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:19,926][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:19,926][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:19,937][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:19,938][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:20,846][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:20,848][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:20,848][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:20,852][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:20,853][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:20,855][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:20,856][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:20,857][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:20,858][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:20,859][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:20,862][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:20,863][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:20,863][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:20,865][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:20,865][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:20,868][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:20,868][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:20,869][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:20,870][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:20,870][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:20,870][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:20,871][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:20,871][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:20,873][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:20,874][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:20,875][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:22,064][DEBUG][o.e.x.c.s.SSLService     ] [node-2] using ssl settings [SSLConfiguration{keyConfig=[NONE], trustConfig=JDK trusted certs], cipherSuites=[[TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384, TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384, TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA]], supportedProtocols=[[TLSv1.2, TLSv1.1, TLSv1]], sslClientAuth=[REQUIRED], verificationMode=[FULL]}][2019-01-08T21:58:22,160][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:22,160][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:22,163][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:22,165][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:22,166][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:22,166][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:22,175][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:22,176][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:22,179][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:22,180][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:22,181][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:22,181][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:22,182][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:22,182][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:22,183][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:22,183][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:22,183][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:22,184][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:22,185][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:22,185][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:22,185][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-core-3.3.0.jar[2019-01-08T21:58:22,186][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:22,187][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-api-3.3.0.jar[2019-01-08T21:58:22,187][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:22,188][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\httpclient-cache-4.5.2.jar[2019-01-08T21:58:22,188][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:22,195][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:22,196][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:22,197][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:22,198][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:22,198][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-api-3.3.0.jar[2019-01-08T21:58:22,199][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-impl-3.3.0.jar[2019-01-08T21:58:22,200][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\log4j-slf4j-impl-2.9.1.jar[2019-01-08T21:58:22,200][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:22,201][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\metrics-core-3.2.2.jar[2019-01-08T21:58:22,201][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\slf4j-api-1.6.2.jar[2019-01-08T21:58:22,202][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-api-3.3.0.jar[2019-01-08T21:58:22,202][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:22,202][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:22,203][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:22,204][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-impl-3.3.0.jar[2019-01-08T21:58:22,207][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-impl-3.3.0.jar[2019-01-08T21:58:22,207][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-api-3.3.0.jar[2019-01-08T21:58:22,208][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-api-3.3.0.jar[2019-01-08T21:58:22,208][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-impl-3.3.0.jar[2019-01-08T21:58:22,209][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\guava-19.0.jar[2019-01-08T21:58:22,211][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:22,211][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:22,212][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\java-support-7.3.0.jar[2019-01-08T21:58:22,212][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:22,213][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-impl-3.3.0.jar[2019-01-08T21:58:22,213][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:22,213][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:22,214][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:22,214][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-api-3.3.0.jar[2019-01-08T21:58:22,214][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-impl-3.3.0.jar[2019-01-08T21:58:22,215][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\cryptacular-1.2.0.jar[2019-01-08T21:58:22,215][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:22,216][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-impl-3.3.0.jar[2019-01-08T21:58:22,216][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\x-pack-security-6.3.2.jar[2019-01-08T21:58:22,217][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-api-3.3.0.jar[2019-01-08T21:58:22,218][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\xmlsec-2.0.8.jar[2019-01-08T21:58:22,225][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:22,225][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:22,226][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:22,228][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:22,228][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:22,228][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-api-3.3.0.jar[2019-01-08T21:58:22,229][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:22,230][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:22,231][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\httpclient-cache-4.5.2.jar[2019-01-08T21:58:22,232][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:22,233][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:22,237][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:22,237][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:22,238][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:22,239][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:22,241][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-api-3.3.0.jar[2019-01-08T21:58:22,241][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:22,241][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:22,242][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-impl-3.3.0.jar[2019-01-08T21:58:22,243][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:22,245][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:22,246][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\log4j-slf4j-impl-2.9.1.jar[2019-01-08T21:58:22,246][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:22,246][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:22,250][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\slf4j-api-1.6.2.jar[2019-01-08T21:58:22,251][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:22,251][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-api-3.3.0.jar[2019-01-08T21:58:22,251][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:22,252][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:22,254][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:22,256][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-impl-3.3.0.jar[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-xmlsec-impl-3.3.0.jar[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:22,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\guava-19.0.jar[2019-01-08T21:58:22,259][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:22,261][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:22,261][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:22,261][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:22,262][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-impl-3.3.0.jar[2019-01-08T21:58:22,263][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:22,283][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:22,285][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-soap-api-3.3.0.jar[2019-01-08T21:58:22,285][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:22,287][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-profile-impl-3.3.0.jar[2019-01-08T21:58:22,287][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:22,289][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:22,289][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\cryptacular-1.2.0.jar[2019-01-08T21:58:22,290][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:22,293][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:22,293][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:22,305][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-saml-api-3.3.0.jar[2019-01-08T21:58:22,306][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:22,307][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-core-3.3.0.jar[2019-01-08T21:58:22,307][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:23,291][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:23,292][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:23,292][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:23,294][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:23,295][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:23,296][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:23,300][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\metrics-core-3.2.2.jar[2019-01-08T21:58:23,301][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:23,301][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:23,301][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:23,303][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:23,303][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:23,306][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:23,306][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-storage-impl-3.3.0.jar[2019-01-08T21:58:23,306][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-security-api-3.3.0.jar[2019-01-08T21:58:23,307][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:23,307][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:23,307][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:23,308][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-api-3.3.0.jar[2019-01-08T21:58:23,308][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:23,308][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\java-support-7.3.0.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:23,310][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\opensaml-messaging-impl-3.3.0.jar[2019-01-08T21:58:23,311][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\x-pack-security-6.3.2.jar[2019-01-08T21:58:23,311][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:23,314][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-security\xmlsec-2.0.8.jar[2019-01-08T21:58:23,657][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:23,657][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:23,659][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:23,660][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:23,661][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:23,661][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:23,671][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:23,672][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:23,673][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:23,674][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:23,675][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:23,675][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:23,676][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:23,676][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:23,676][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:23,677][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:23,677][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:23,678][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:23,678][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:23,679][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:23,679][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:23,682][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\x-pack-monitoring-6.3.2.jar[2019-01-08T21:58:23,684][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:23,684][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:23,685][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:23,685][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:23,693][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:23,693][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:23,694][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:23,695][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:23,696][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-6.3.2.jar[2019-01-08T21:58:23,696][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:23,697][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:23,697][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:23,698][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-sniffer-6.3.2.jar[2019-01-08T21:58:23,699][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:23,699][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:23,700][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:23,706][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:23,706][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:23,707][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:23,709][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:23,709][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:23,709][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:23,710][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:23,712][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:23,713][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:23,717][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:23,717][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:23,719][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:23,719][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:23,721][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:23,721][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:23,723][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:23,724][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:23,726][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:23,726][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:23,731][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-sniffer-6.3.2.jar[2019-01-08T21:58:23,732][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:23,732][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:23,734][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:23,736][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:23,737][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:23,737][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:23,737][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:23,739][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:23,739][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:23,739][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:23,741][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:23,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:23,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:23,761][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:23,768][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:23,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:23,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:23,773][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:23,786][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:23,787][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:24,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:24,764][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:24,765][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:24,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:24,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:24,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:24,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:24,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:24,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:24,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:24,775][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:24,780][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:24,781][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\x-pack-monitoring-6.3.2.jar[2019-01-08T21:58:24,782][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:24,782][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:24,782][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:24,784][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:24,784][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-monitoring\elasticsearch-rest-client-6.3.2.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:24,786][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:24,858][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:24,858][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:24,860][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:24,861][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:24,862][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:24,862][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:24,872][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:24,873][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:24,875][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:24,876][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:24,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:24,878][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:24,878][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:24,879][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:24,879][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:24,880][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:24,881][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:24,882][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:24,883][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:24,885][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:24,885][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:24,887][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:24,888][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\owasp-java-html-sanitizer-r239.jar[2019-01-08T21:58:24,889][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:24,891][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:24,891][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:24,899][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:24,901][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:24,902][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:24,905][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:24,906][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:24,907][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:24,907][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\guava-16.0.1.jar[2019-01-08T21:58:24,909][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:24,910][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:24,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:24,911][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\activation-1.1.1.jar[2019-01-08T21:58:24,912][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\javax.mail-1.5.6.jar[2019-01-08T21:58:24,913][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\x-pack-watcher-6.3.2.jar[2019-01-08T21:58:24,914][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:24,916][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:24,916][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:24,917][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:24,924][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:24,924][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:24,925][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:24,927][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:24,928][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:24,928][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:24,930][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:24,931][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:24,933][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:24,936][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:24,936][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:24,938][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:24,939][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:24,941][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:24,941][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:24,943][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:24,944][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\activation-1.1.1.jar[2019-01-08T21:58:24,945][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:24,946][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\x-pack-watcher-6.3.2.jar[2019-01-08T21:58:24,947][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:24,947][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:24,950][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:24,950][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:24,952][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:24,953][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\owasp-java-html-sanitizer-r239.jar[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:24,955][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:24,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:24,957][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:24,957][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:24,958][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:24,975][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:24,977][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\guava-16.0.1.jar[2019-01-08T21:58:24,979][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-watcher\javax.mail-1.5.6.jar[2019-01-08T21:58:24,980][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:24,981][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:24,983][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:24,983][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:24,986][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:24,986][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:24,997][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:24,999][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:25,974][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:25,976][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:25,976][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:25,977][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:25,978][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:25,980][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:25,986][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:25,987][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:25,987][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:25,988][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:25,989][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:25,992][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:25,993][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:25,993][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:25,998][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:26,109][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:26,109][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:26,111][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:26,112][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:26,113][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:26,113][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:26,121][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:26,122][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:26,123][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:26,124][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:26,124][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:26,125][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:26,125][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:26,126][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:26,126][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:26,126][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:26,127][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:26,127][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:26,128][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:26,128][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:26,128][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:26,130][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:26,131][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:26,132][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:26,133][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:26,141][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:26,142][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:26,143][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:26,144][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:26,145][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:26,146][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:26,146][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:26,147][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:26,148][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:26,149][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:26,149][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:26,150][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\x-pack-ml-6.3.2.jar[2019-01-08T21:58:26,153][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:26,153][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:26,154][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\super-csv-2.4.0.jar[2019-01-08T21:58:26,160][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:26,160][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:26,161][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:26,163][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:26,163][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:26,163][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:26,165][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:26,167][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:26,171][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:26,176][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:26,176][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:26,178][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:26,179][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:26,181][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:26,181][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:26,182][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:26,184][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:26,191][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:26,191][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:26,195][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\x-pack-ml-6.3.2.jar[2019-01-08T21:58:26,196][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:26,196][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:26,198][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:26,200][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:26,202][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:26,202][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:26,202][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:26,203][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:26,203][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:26,204][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:26,205][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:26,223][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:26,225][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:26,226][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:26,228][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:26,228][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:26,230][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:26,231][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:26,248][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:26,250][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:27,242][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:27,244][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:27,244][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:27,246][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:27,247][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:27,249][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:27,251][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:27,252][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:27,252][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:27,253][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:27,254][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-ml\super-csv-2.4.0.jar[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:27,257][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:27,259][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:27,259][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:27,260][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:27,499][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:27,499][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\asm-debug-all-5.1.jar[2019-01-08T21:58:27,500][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\antlr4-runtime-4.5.3.jar[2019-01-08T21:58:27,501][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\lang-painless-6.3.2.jar[2019-01-08T21:58:27,501][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\elasticsearch-scripting-painless-spi-6.3.2.jar[2019-01-08T21:58:27,508][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:27,508][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:27,510][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:27,511][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:27,512][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:27,512][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:27,515][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:27,517][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:27,518][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:27,524][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:27,524][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:27,526][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:27,527][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:27,532][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:27,532][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:27,534][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:27,536][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\asm-debug-all-5.1.jar[2019-01-08T21:58:27,536][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:27,538][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:27,538][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:27,541][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:27,541][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\elasticsearch-scripting-painless-spi-6.3.2.jar[2019-01-08T21:58:27,542][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:27,543][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:27,545][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\antlr4-runtime-4.5.3.jar[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:27,547][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:27,549][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:27,549][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:27,549][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:27,550][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:27,566][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:27,568][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:27,569][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:27,573][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:27,573][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:27,575][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:27,576][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:27,588][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:27,590][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:28,539][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:28,541][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:28,541][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:28,543][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:28,544][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:28,546][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:28,551][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:28,551][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:28,551][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:28,553][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:28,553][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:28,556][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:28,558][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:28,558][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:28,559][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:28,560][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-painless\lang-painless-6.3.2.jar[2019-01-08T21:58:28,561][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:28,600][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:28,600][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:28,602][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:28,603][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:28,604][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:28,604][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:28,612][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:28,613][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:28,614][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:28,615][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:28,616][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:28,616][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:28,617][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:28,617][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:28,617][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:28,618][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:28,619][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:28,620][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:28,622][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:28,623][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:28,623][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcpkix-jdk15on-1.58.jar[2019-01-08T21:58:28,625][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpclient-4.5.2.jar[2019-01-08T21:58:28,626][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-upgrade\x-pack-upgrade-6.3.2.jar[2019-01-08T21:58:28,626][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\unboundid-ldapsdk-3.2.0.jar[2019-01-08T21:58:28,627][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpasyncclient-4.1.2.jar[2019-01-08T21:58:28,627][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\bcprov-jdk15on-1.58.jar[2019-01-08T21:58:28,634][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-nio-4.4.5.jar[2019-01-08T21:58:28,635][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\x-pack-core-6.3.2.jar[2019-01-08T21:58:28,636][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-codec-1.10.jar[2019-01-08T21:58:28,638][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:28,639][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:28,639][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\httpcore-4.4.5.jar[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\commons-logging-1.1.3.jar[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\transport-netty4-6.3.2.jar[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:28,640][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:28,641][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:28,641][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-common-4.1.16.Final.jar[2019-01-08T21:58:28,642][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-core\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:28,647][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:28,647][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:28,650][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:28,652][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:28,652][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:28,652][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:28,654][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:28,655][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:28,656][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:28,660][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:28,660][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:28,661][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:28,662][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:28,664][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:28,664][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:28,666][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:28,668][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:28,669][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:28,669][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:28,673][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:28,673][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:28,674][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:28,675][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:28,677][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:28,677][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:28,677][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:28,678][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:28,678][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:28,678][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:28,680][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:28,699][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:28,701][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:28,702][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:28,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:28,703][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:28,705][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:28,706][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:28,720][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:28,721][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:29,681][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:29,682][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:29,682][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:29,684][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:29,685][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:29,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:29,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:29,690][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:29,690][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:29,691][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:29,691][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:29,695][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:29,696][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\x-pack\x-pack-upgrade\x-pack-upgrade-6.3.2.jar[2019-01-08T21:58:29,697][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:29,697][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:29,699][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:29,741][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:29,741][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\lang-mustache-6.3.2.jar[2019-01-08T21:58:29,742][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\compiler-0.9.3.jar[2019-01-08T21:58:29,748][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:29,748][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:29,749][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:29,751][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:29,751][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:29,751][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:29,752][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:29,753][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:29,754][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:29,758][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:29,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:29,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:29,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:29,761][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:29,761][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:29,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:29,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:29,765][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:29,765][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:29,768][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\compiler-0.9.3.jar[2019-01-08T21:58:29,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:29,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:29,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:29,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:29,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:29,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:29,773][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:29,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:29,775][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:29,775][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:29,776][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:29,791][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:29,793][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:29,794][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:29,795][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:29,795][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:29,798][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:29,798][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:29,809][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:29,810][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:30,684][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:30,686][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:30,686][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:30,687][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:30,689][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:30,690][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:30,693][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:30,694][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:30,694][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:30,695][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:30,695][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:30,699][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:30,699][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\lang-mustache\lang-mustache-6.3.2.jar[2019-01-08T21:58:30,700][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:30,700][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:30,700][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:30,702][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:30,702][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:30,703][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:30,741][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:30,741][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\tribe\tribe-6.3.2.jar[2019-01-08T21:58:30,747][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:30,747][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:30,748][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:30,750][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:30,750][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:30,750][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:30,751][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:30,752][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:30,753][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:30,757][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:30,757][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:30,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:30,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:30,760][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:30,760][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:30,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:30,763][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:30,764][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:30,764][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:30,768][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:30,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:30,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:30,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:30,772][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:30,772][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:30,772][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:30,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:30,774][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:30,774][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:30,775][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:30,791][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:30,792][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:30,794][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:30,795][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:30,795][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:30,797][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:30,798][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:30,808][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:30,809][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:31,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:31,763][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:31,763][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:31,764][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:31,766][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:31,767][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:31,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:31,771][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:31,771][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:31,773][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:31,773][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:31,776][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:31,777][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:31,777][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:31,778][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:31,778][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:31,778][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\tribe\tribe-6.3.2.jar[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:31,779][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:31,808][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:31,808][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\analysis-common\analysis-common-6.3.2.jar[2019-01-08T21:58:31,814][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:31,814][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:31,815][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:31,817][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:31,817][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:31,817][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:31,818][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:31,819][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:31,821][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:31,825][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:31,825][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:31,826][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-analyzers-common\7.3.1\51b62b22f4193bfa386f5ca0c978c68821a12bc0\lucene-analyzers-common-7.3.1.jar[2019-01-08T21:58:31,827][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queryparser\7.3.1\51e4cde15df3ab4534a6407598cfb5c7ce7d21ac\lucene-queryparser-7.3.1.jar[2019-01-08T21:58:31,829][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfxswt.jar[2019-01-08T21:58:31,829][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-misc\7.3.1\2ce12b8828f29c8e5dd9eeef05333705befc9342\lucene-misc-7.3.1.jar[2019-01-08T21:58:31,830][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-join\7.3.1\e866b2c36555cff48f31a427efbfd52466418504\lucene-join-7.3.1.jar[2019-01-08T21:58:31,832][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-yaml\2.8.10\1e08caf1d787c825307d8cc6362452086020d853\jackson-dataformat-yaml-2.8.10.jar[2019-01-08T21:58:31,834][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\zipfs.jar[2019-01-08T21:58:31,834][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\secure-sm\build-idea\classes\main[2019-01-08T21:58:31,837][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\javaws.jar[2019-01-08T21:58:31,837][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.tdunning\t-digest\3.2\2ab94758b0276a8a26102adf8d528cf6d0567b9a\t-digest-3.2.jar[2019-01-08T21:58:31,838][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.carrotsearch\hppc\0.7.1\8b5057f74ea378c0150a1860874a3ebdcb713767\hppc-0.7.1.jar[2019-01-08T21:58:31,840][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.spatial4j\spatial4j\0.7\faa8ba85d503da4ab872d17ba8c00da0098ab2f2\spatial4j-0.7.jar[2019-01-08T21:58:31,841][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\charsets.jar[2019-01-08T21:58:31,842][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\localedata.jar[2019-01-08T21:58:31,842][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.core\jackson-core\2.8.10\eb21a035c66ad307e66ec8fce37f5d50fd62d039\jackson-core-2.8.10.jar[2019-01-08T21:58:31,843][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jce.jar[2019-01-08T21:58:31,843][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunjce_provider.jar[2019-01-08T21:58:31,843][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-1.2-api\2.9.1\894f96d677880d4ab834a1356f62b875e579caaa\log4j-1.2-api-2.9.1.jar[2019-01-08T21:58:31,844][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\analysis-common\analysis-common-6.3.2.jar[2019-01-08T21:58:31,845][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\x-content\build-idea\classes\main[2019-01-08T21:58:31,860][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-api\2.9.1\7a2999229464e7a324aa503c0a52ec0f05efe7bd\log4j-api-2.9.1.jar[2019-01-08T21:58:31,861][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-highlighter\7.3.1\1e945c65876a1eab97a5db40e92c981c5a65915\lucene-highlighter-7.3.1.jar[2019-01-08T21:58:31,863][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-queries\7.3.1\d531efe427da6cb41a9aa52854be4dd241227a19\lucene-queries-7.3.1.jar[2019-01-08T21:58:31,865][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jfxrt.jar[2019-01-08T21:58:31,865][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.logging.log4j\log4j-core\2.9.1\c041978c686866ee8534f538c6220238db3bb6be\log4j-core-2.9.1.jar[2019-01-08T21:58:31,869][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-sandbox\7.3.1\ba8c7a91cf3d74d7f5e6f91e6842c6e857bd73c5\lucene-sandbox-7.3.1.jar[2019-01-08T21:58:31,870][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\elasticsearch-core\build-idea\classes\main[2019-01-08T21:58:31,885][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-memory\7.3.1\12b7520cfb0c83d4d9e4efde6ad1812693f91acd\lucene-memory-7.3.1.jar[2019-01-08T21:58:31,886][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\build-idea\classes\main[2019-01-08T21:58:32,753][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.elasticsearch\jna\4.5.1\da10908ae23dc59b19dc258e63aea1c44621dc3a\jna-4.5.1.jar[2019-01-08T21:58:32,755][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\deploy.jar[2019-01-08T21:58:32,755][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-backward-codecs\7.3.1\c9bded879284d12b66eb8df112b6f69078616bb6\lucene-backward-codecs-7.3.1.jar[2019-01-08T21:58:32,757][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-grouping\7.3.1\ebb5344ee066bbb6031164dcf4e690d5a4ea62a5\lucene-grouping-7.3.1.jar[2019-01-08T21:58:32,758][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\joda-time\joda-time\2.9.9\f7b520c458572890807d143670c9b24f4de90897\joda-time-2.9.9.jar[2019-01-08T21:58:32,759][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-core\7.3.1\ce76b4aef66ffe0830afefb2b347028a4fc9eb36\lucene-core-7.3.1.jar[2019-01-08T21:58:32,762][DEBUG][o.e.b.JarHell            ] examining jar: C:\Program Files\JetBrains\IntelliJ IDEA 2018.2.1\lib\idea_rt.jar[2019-01-08T21:58:32,763][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\plugin.jar[2019-01-08T21:58:32,763][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial-extras\7.3.1\7ff14f7c7b8e2fb7259e925949f51122cbc873c4\lucene-spatial-extras-7.3.1.jar[2019-01-08T21:58:32,764][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\resources.jar[2019-01-08T21:58:32,764][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\libs\plugin-classloader\build-idea\classes\main[2019-01-08T21:58:32,767][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunec.jar[2019-01-08T21:58:32,767][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunmscapi.jar[2019-01-08T21:58:32,768][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\sunpkcs11.jar[2019-01-08T21:58:32,768][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial3d\7.3.1\db59b01557dd4abb1a469d857e2a96b3c3aa6365\lucene-spatial3d-7.3.1.jar[2019-01-08T21:58:32,769][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\access-bridge-64.jar[2019-01-08T21:58:32,769][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-suggest\7.3.1\5255e5bec27f078ca89cdc44b9614e3295b51607\lucene-suggest-7.3.1.jar[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jsse.jar[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\nashorn.jar[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\dnsns.jar[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\jaccess.jar[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\ext\cldrdata.jar[2019-01-08T21:58:32,770][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.yaml\snakeyaml\1.17\7a27ea250c5130b2922b86dea63cbb1cc10a660c\snakeyaml-1.17.jar[2019-01-08T21:58:32,874][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:32,874][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-codec-4.1.16.Final.jar[2019-01-08T21:58:32,875][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-common-4.1.16.Final.jar[2019-01-08T21:58:32,876][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:32,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-resolver-4.1.16.Final.jar[2019-01-08T21:58:32,877][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-codec-http-4.1.16.Final.jar[2019-01-08T21:58:32,878][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:32,879][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-handler-4.1.16.Final.jar[2019-01-08T21:58:32,880][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\transport-netty4-6.3.2.jar[2019-01-08T21:58:32,886][DEBUG][o.e.b.JarHell            ] java.home: C:\Program Files\Java\jdk1.8.0_161\jre[2019-01-08T21:58:32,886][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-spatial\7.3.1\6e5fb097fdb41f1817c748e4b1d4e6b9bb6e92ec\lucene-spatial-7.3.1.jar[2019-01-08T21:58:32,888][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.locationtech.jts\jts-core\1.15.0\705981b7e25d05a76a3654e597dab6ba423eb79e\jts-core-1.15.0.jar[2019-01-08T21:58:32,889][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\jfr.jar[2019-01-08T21:58:32,889][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\rt.jar[2019-01-08T21:58:32,889][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-transport-4.1.16.Final.jar[2019-01-08T21:58:32,890][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.hdrhistogram\HdrHistogram\2.1.9\e4631ce165eb400edecfa32e03d3f1be53dee754\HdrHistogram-2.1.9.jar[2019-01-08T21:58:32,891][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-cbor\2.8.10\1c58cc9313ddf19f0900cd61ed044874278ce320\jackson-dataformat-cbor-2.8.10.jar[2019-01-08T21:58:32,892][DEBUG][o.e.b.JarHell            ] examining jar: E:\Test-workstation\elasticsearch-6.3.2\modules\transport-netty4\netty-buffer-4.1.16.Final.jar[2019-01-08T21:58:32,893][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\net.sf.jopt-simple\jopt-simple\5.0.2\98cafc6081d5632b61be2c9e60650b64ddbc637c\jopt-simple-5.0.2.jar[2019-01-08T21:58:32,895][DEBUG][o.e.b.JarHell            ] examining directory: E:\Test-workstation\elasticsearch\server\cli\build-idea\classes\main[2019-01-08T21:58:32,898][DEBUG][o.e.b.JarHell            ] excluding system resource: C:\Program Files\Java\jdk1.8.0_161\jre\lib\management-agent.jar[2019-01-08T21:58:32,898][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\com.fasterxml.jackson.dataformat\jackson-dataformat-smile\2.8.10\e853081fadaad3e98ed801937acc3d8f77580686\jackson-dataformat-smile-2.8.10.jar[2019-01-08T21:58:32,900][DEBUG][o.e.b.JarHell            ] examining jar: C:\Users\TDW\.gradle\caches\modules-2\files-2.1\org.apache.lucene\lucene-*Description of changes:*diff --git a/.husky/.gitignore b/.husky/.gitignoredeleted file mode 100644index 31354ec13899..000000000000--- a/.husky/.gitignore+++ /dev/null@@ -1 +0,0 @@-_diff --git a/.husly/.sh/bitore.sig b/.husly/.sh/bitore.signew file mode 100644index 000000000000..e67f834feeae--- /dev/null+++ b/.husly/.sh/bitore.sig@@ -0,0 +1,16 @@+ BEGIN:+ GLOW4:+ </git checkout origin/main <file name>+Run'' 'Runs::/Action::/:Build::/scripts::/Run-on :Runs :+Runs :gh/pages :+pages :edit "+$ intuit install +PURL" --add-label "production"+env:+PR_URL: ${{github.event.pull_request.html_url}}+GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}+run: gh pr edit "$PR_URL" --add-label "production"+env:+PR_URL: ${{github.event.pull_request.html_url}}+GITHUB_TOKEN: ${{ ((c)(r)).[12753750.[00]m]'_BITORE_34173.1337) ')]}}}'"'' :+ </git checkout origin/main <file name>  aws-cpp-developer-guide/doc_source/basic-use.mdinawsdocs:mainBy submitting this pull request, I confirm that you can use, modify, copy, and redistribute this contribution, under the terms of your choice.SIGNIFICANCE________\_S_\________SIGNIFICANCE :ZAK WOOD<cr12753750.00bitore341731337@gmail.com> :  notificatios :  document :  e-mail :<cr12753750.00bitore341731337@gmail.com> ::Build::  token :('C'C'C) :  
https://us-east-1.console.aws.amazon.com/billing/home#/account
ZAK WOOD<cr12753750.00bitore341731337@gmail.com> :
#!/bin/sh'"''
'"set 6UJSGYQWWDMGM10'"''
'"February 6, 2023'"''
'"USD 250,000.00'"''
'"Amazon Web Services'"''
'"Advance Payment Funding Request'"''
'"Request Summary'"''
'"Request Number:'"''
'"Request Date:'"''
'"AMOUNT TO BE PAID'"''
'"Email or talk to us about your AWS account, visit aws.amazon.com/contact-us/'"''
'"USD 250,000.00'"''
'"USD 250,000.00'"''
'"Account number:'"''
'"733254901807'"''
'"Customer Address:'"''
'"BITCOIN.BTC-USD BTCUSD CCC'"''
'"ATTN: ZACHRY T WOOD'"''
'"5222 BRADFORD DR'"''
'"DALLAS, TX 75235-8313, US'"''
'"This is a document for a recent funding request of your Amazon Web Services account'"''
'"Greetings from Amazon Web Services, we're writing to provide you with an electronic document for the recent'"''
'"funding request of your AWS account.'"''
'"Summary'"''
'"Amount'"''
'"Total'"''
'"Please complete your payment to Amazon Web Services:'"''
'"Following are the details for making an electronic funds transfer.'"''
'"Please ensure to reference "733254901807 - AdvPay - 6UJSGYQWWDMGM10" in the descriptive text field of your'"''
'"electronic funds transfer payment.'"''
'"If you have any questions regarding payment, please email aws-accountsreceivable@amazon.com'"''
'"Electronic funds transfer details:'"''
'"Account Name: Amazon Web Services, Inc.'"''
'"Checking Account Number: 4121350227'"''
'"Wire Routing Number: 121000248'"''
'"Bank Address: 420 Montgomery Street, San Francisco CA 94163'"''
'"Bank Name: Wells Fargo NA'"''
'"ABA Routing Number: 121000248'"''
'"SWIFT Code: WFBIUS6SXXX'"''
'"Thank you for using Amazon Web Services.'"''
'"Sincerely,'"''
'"The Amazon Web Services Team'"''
'"This message was produced and distributed by Amazon Web Services, Inc., 410 Terry Avenue North, Seattle, Washington 98109-5210. AWS will'"''
'"not be bound by, and specifically objects to, any term, condition or other provision which is different from or in addition to the provisions of the'"''
'"AWS Customer Agreement or other agreement between AWS and you governing your use of our services (whether or not it would materially alter'"''
'"such AWS Customer Agreement or other agreement) and which is submitted in any order, receipt, acceptance, confirmation, correspondence or'"''
'"otherwise, unless AWS specifically agrees to such provision in a written instrument signed by AWS.'"''
'"srcdir="$(dirname $0)"'"''
'"cd "$srcdir"'"''
'"autoreconf --install --force'"''
'"'@zw'@laanwj'"''
'"zw authored and laanwj committed on Aug 18, 2014 '"''
'"1 parent 84efe0e commit 221684c7effa194d2c409622056f613c894adef5'"''
'"Showing 1 changed file with 1 additio  '"''
'"src/rpcrawtransaction.cpp'"''
'"// Copyright (c) 2010 Satoshi Nakamoto'"''
'"// Copyright (c) 2009-2014 The Bitcoin developers'"''
'"// Distributed under the MIT/X11 software license, see the accompanying'"''
'"// file COPYING or http://www.opensource.org/licenses/mit-license.php.'"''
'"#include "base58.h"'"''
'"#include "core.h"'"''
'"#include "init.h"'"''
'"#include "keystore.h"'"''
'"#include "main.h"'"''
'"#include "net.h"'"''
'"#include "rpcserver.h"'"''
'"#include "intuit256.h"'"''
'"#ifdef('?'') ENABLE_WALLET'"''
'"#include "wallet.h"'"''
'"#endif'"''
'"#include <stdint.h>'"''
'"#include <boost/assign/list_of.hpp>'"''
'"#include "json/json_spirit_utils.h"'"''
'"#include "json/json_spirit_value.h"'"''
'"using namespace std;'"''
'"using namespace boost;'"''
'"using namespace boost::assign;'"''
'"using namespace json_spirit;'"''
'"void ScriptPubKeyToJSON(const CScript& scriptPubKey, Object& out, bool fIncludeHex)'"''
'"{'"''
'"    txnouttype type;'"''
'"    vector<CTxDestination> '?'es;'"''
'"    int nRequired;'"''
'"    out.push_back(Pair("asm", scriptPubKey.ToString()));'"''
'"    if (fIncludeHex)'"''
'"        out.push_back(Pair("hex", HexStr(scriptPubKey.begin(), scriptPubKey.end())));'"''
'"    if (!ExtractDestinations(scriptPubKey, type, '?'es, nRequired))'"''
'"    {'"''
'"        out.push_back(Pair("type", GetTxnOutputType(type)));'"''
'"        return;'"''
'"    }'"''
'"    out.push_back(Pair("reqSigs", nRequired));'"''
'"    out.push_back(Pair("type", GetTxnOutputType(type)));'"''
'"    Array a;'"''
'"    BOOST_FOREACH(const CTxDestination& addr, '?'es)'"''
'"        a.push_back(CBitcoin'?'(addr).ToString());'"''
'"    out.push_back(Pair("'?'es", a));'"''
'"}'"''
'"void TxToJSON(const CTransaction& tx, const uint256 hashBlock, Object& entry)'"''
'"{'"''
'"    entry.push_back(Pair("txid", tx.GetHash().GetHex()));'"''
'"    entry.push_back(Pair("version", tx.nVersion));'"''
'"    entry.push_back(Pair("locktime", (int64_t)tx.nLockTime));'"''
'"    Array vin;'"''
'"    BOOST_FOREACH(const CTxIn& txin, tx.vin)'"''
'"    {'"''
'"        Object in;'"''
'"        if (tx.IsCoinBase())'"''
'"            in.push_back(Pair("coinbase", HexStr(txin.scriptSig.begin(), txin.scriptSig.end())));'"''
'"        else'"''
'"        {'"''
'"            in.push_back(Pair("txid", txin.prevout.hash.GetHex()));'"''
'"            in.push_back(Pair("vout", (int64_t)txin.prevout.n));'"''
'"            Object o;'"''
'"            o.push_back(Pair("asm", txin.scriptSig.ToString()));'"''
'"            o.push_back(Pair("hex", HexStr(txin.scriptSig.begin(), txin.scriptSig.end())));'"''
'"            in.push_back(Pair("scriptSig", o));'"''
'"        }'"''
'"        in.push_back(Pair("sequence", (int64_t)txin.nSequence));'"''
'"        vin.push_back('?'');'"''
'"    }'"''
'"    entry.push_back(Pair("vin", vin));'"''
'"    Array vout;'"''
'"    for (unsigned int i = 0; i < tx.vout.size(); i++)'"''
'"    {'"''
'"        const CTxOut& txout = tx.vout[i];'"''
'"        Object out;'"''
'"        out.push_back(Pair("value", ValueFromAmount(txout.nValue)));'"''
'"        out.push_back(Pair("n", (int64_t)i));'"''
'"        Object o;'"''
'"        ScriptPubKeyToJSON(txout.scriptPubKey, o, true);'"''
'"        out.push_back(Pair("scriptPubKey", o));'"''
'"        vout.push_back(out);'"''
'"    }'"''
'"    entry.push_back(Pair("vout", vout));'"''
'"    if (hashBlock != 0)'"''
'"    {'"''
'"        entry.push_back(Pair("blockhash", hashBlock.GetHex()));'"''
'"        map<uint256, CBlockIndex*>::iterator mi = mapBlockIndex.find(hashBlock);'"''
'"        if (mi != mapBlockIndex.end() && (*mi).second)'"''
'"        {'"''
'"            CBlockIndex* pindex = (*mi).second;'"''
'"            if (chainActive.Contains(pindex))'"''
'"            {'"''
'"                entry.push_back(Pair("confirmations", 1 + chainActive.Height() - pindex->nHeight));'"''
'"                entry.push_back(Pair("time", (int64_t)pindex->nTime));'"''
'"                entry.push_back(Pair("blocktime", (int64_t)pindex->nTime));'"''
'"            }'"''
'"            else'"''
'"                entry.push_back(Pair("confirmations", 0));'"''
'"        }'"''
'"    }'"''
'"}'"''
'"Value getrawtransaction(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() < 1 || params.size() > 2)'"''
'"        throw runtime_error('"''
'"            "getrawtransaction \"txid\" ( verbose )\n"'"''
'"            "\nReturn the raw transaction data.\n"'"''
'"            "\nIf verbose=0, returns a string that is serialized, hex-encoded data for 'txid'.\n"'"''
'"            "If verbose is non-zero, returns an Object with information about 'txid'.\n"'"''
'"            "\nArguments:\n"'"''
'"            "1. \"txid\"      (string, required) The transaction id\n"'"''
'"            "2. verbose       (numeric, optional, default=0) If 0, return a string, other return a json object\n"'"''
'"            "\nResult (if verbose is not set or set to 0):\n"'"''
'"            "\"data\"      (string) The serialized, hex-encoded data for 'txid'\n"'"''
'"            "\nResult (if verbose > 0):\n"'"''
'"            "{\n"'"''
'"            "  \"hex\" : \"data\",       (string) The serialized, hex-encoded data for 'txid'\n"'"''
'"            "  \"txid\" : \"id\",        (string) The transaction id (same as provided)\n"'"''
'"            "  \"version\" : n,          (numeric) The version\n"'"''
'"            "  \"locktime\" : ttt,       (numeric) The lock time\n"'"''
'"            "  \"vin\" : [               (array of json objects)\n"'"''
'"            "     {\n"'"''
'"            "       \"txid\": \"id\",    (string) The transaction id\n"'"''
'"            "       \"vout\": n,         (numeric) \n"'"''
'"            "       \"scriptSig\": {     (json object) The script\n"'"''
'"            "         \"asm\": \"asm\",  (string) asm\n"'"''
'"            "         \"hex\": \"hex\"   (string) hex\n"'"''
'"            "       },\n"'"''
'"            "       \"sequence\": n      (numeric) The script sequence number\n"'"''
'"            "     }\n"'"''
'"            "     ,...\n"'"''
'"            "  ],\n"'"''
'"            "  \"vout\" : [              (array of json objects)\n"'"''
'"            "     {\n"'"''
'"            "       \"value\" : x.xxx,            (numeric) The value in btc\n"'"''
'"            "       \"n\" : n,                    (numeric) index\n"'"''
'"            "       \"scriptPubKey\" : {          (json object)\n"'"''
'"            "         \"asm\" : \"asm\",          (string) the asm\n"'"''
'"            "         \"hex\" : \"hex\",          (string) the hex\n"'"''
'"            "         \"reqSigs\" : n,            (numeric) The required sigs\n"'"''
'"            "         \"type\" : \"pubkeyhash\",  (string) The type, eg 'pubkeyhash'\n"'"''
'"            "         \"'?'es\" : [           (json array of string)\n"'"''
'"            "           \"bitcoin'?'\"        (string) bitcoin '?'\n"'"''
'"            "           ,...\n"'"''
'"            "         ]\n"'"''
'"            "       }\n"'"''
'"            "     }\n"'"''
'"            "     ,...\n"'"''
'"            "  ],\n"'"''
'"            "  \"blockhash\" : \"hash\",   (string) the block hash\n"'"''
'"            "  \"confirmations\" : n,      (numeric) The confirmations\n"'"''
'"            "  \"time\" : ttt,             (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT)\n"'"''
'"            "  \"blocktime\" : ttt         (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)\n"'"''
'"            "}\n"'"''
'"            "\nExamples:\n"'"''
'"            + HelpExampleCli("getrawtransaction", "\"mytxid\"")'"''
'"            + HelpExampleCli("getrawtransaction", "\"mytxid\" 1")'"''
'"            + HelpExampleRpc("getrawtransaction", "\"mytxid\", 1")'"''
'"        );'"''
'"    uint256 hash = ParseHashV(params[0], "parameter 1");'"''
'"    bool fVerbose = false;'"''
'"    if (params.size() > 1)'"''
'"        fVerbose = (params[1].get_int() != 0);'"''
'"    CTransaction tx;'"''
'"    uint256 hashBlock = 0;'"''
'"    if (!GetTransaction(hash, tx, hashBlock, true))'"''
'"        throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, "No information available about transaction");'"''
'"    CDataStream ssTx(SER_NETWORK, PROTOCOL_VERSION);'"''
'"    ssTx << tx;'"''
'"    string strHex = HexStr(ssTx.begin(), ssTx.end());'"''
'"    if (!fVerbose)'"''
'"        return strHex;'"''
'"    Object result;'"''
'"    result.push_back(Pair("hex", strHex));'"''
'"    TxToJSON(tx, hashBlock, result);'"''
'"    return result;'"''
'"}'"''
'"#ifdef ENABLE_WALLET'"''
'"Value listunspent(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() > 3)'"''
'"        throw runtime_error('"''
'"            "listunspent ( minconf maxconf  [\"'?'\",...] )\n"'"''
'"            "\nReturns array of unspent transaction outputs\n"'"''
'"            "with between minconf and maxconf (inclusive) confirmations.\n"'"''
'"            "Optionally filter to only include txouts paid to specified '?'es.\n"'"''
'"            "Results are an array of Objects, each of which has:\n"'"''
'"            "{txid, vout, scriptPubKey, amount, confirmations}\n"'"''
'"            "\nArguments:\n"'"''
'"            "1. minconf          (numeric, optional, default=1) The minimum confirmationsi to filter\n"'"''
'"            "2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter\n"'"''
'"            "3. \"'?'es\"    (string) A json array of bitcoin '?'es to filter\n"'"''
'"            "    [\n"'"''
'"            "      \"'?'\"   (string) bitcoin '?'\n"'"''
'"            "      ,...\n"'"''
'"            "    ]\n"'"''
'"            "\nResult\n"'"''
'"            "[                   (array of json object)\n"'"''
'"            "  {\n"'"''
'"            "    \"txid\" : \"txid\",        (string) the transaction id \n"'"''
'"            "    \"vout\" : n,               (numeric) the vout value\n"'"''
'"            "    \"'?'\" : \"'?'\",  (string) the bitcoin '?'\n"'"''
'"            "    \"account\" : \"account\",  (string) The associated account, or \"\" for the default account\n"'"''
'"            "    \"scriptPubKey\" : \"key\", (string) the script key\n"'"''
'"            "    \"amount\" : x.xxx,         (numeric) the transaction amount in btc\n"'"''
'"            "    \"confirmations\" : n       (numeric) The number of confirmations\n"'"''
'"            "  }\n"'"''
'"            "  ,...\n"'"''
'"            "]\n"'"''
'"            "\nExamples\n"'"''
'"            + HelpExampleCli("listunspent", "")'"''
'"            + HelpExampleCli("listunspent", "6 9999999 \"[\\\"1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\\\",\\\"1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\\\"]\"")'"''
'"            + HelpExampleRpc("listunspent", "6, 9999999 \"[\\\"1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\\\",\\\"1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\\\"]\"")'"''
'"        );'"''
'"    RPCTypeCheck(params, list_of(int_type)(int_type)(array_type));'"''
'"    int nMinDepth = 1;'"''
'"    if (params.size() > 0)'"''
'"        nMinDepth = params[0].get_int();'"''
'"    int nMaxDepth = 9999999;'"''
'"    if (params.size() > 1)'"''
'"        nMaxDepth = params[1].get_int();'"''
'"    set<CBitcoin'?'> set'?';'"''
'"    if (params.size() > 2)'"''
'"    {'"''
'"        Array inputs = params[2].get_array();'"''
'"        BOOST_FOREACH(Value& input, inputs)'"''
'"        {'"''
'"            CBitcoin'?' '?'(input.get_str());'"''
'"            if (!'?'.IsValid())'"''
'"                throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, string('?'''")+input.get_str());'"''
'"            if (set'?'.count('?'))'"''
'"                throw JSONRPCError(RPC_INVALID_PARAMETER, string('?': ")+input.get_str());'"''
'"           set'?'.insert('?');'"''
'"        }'"''
'"    }'"''
'"    Array results;'"''
'"    vector<COutput> vecOutputs;'"''
'"    assert(pwalletMain != NULL);'"''
'"    pwalletMain->AvailableCoins(vecOutputs, false);'"''
'"    BOOST_FOREACH(const COutput& out, vecOutputs)'"''
'"    {'"''
'"        if (out.nDepth < nMinDepth || out.nDepth > nMaxDepth)'"''
'"            continue;'"''
'"        if (set'?'.size())'"''
'"        {'"''
'"            CTxDestination '?';'"''
'"            if (!ExtractDestination(out.tx->vout[out.i].scriptPubKey, '?'))'"''
'"                continue;'"''
'"            if (!set'?'.count('?'))'"''
'"                continue;'"''
'"        }'"''
'"        int64_t nValue = out.tx->vout[out.i].nValue;'"''
'"        const CScript& pk = out.tx->vout[out.i].scriptPubKey;'"''
'"        Object entry;'"''
'"        entry.push_back(Pair("txid", out.tx->GetHash().GetHex()));'"''
'"        entry.push_back(Pair("vout", out.i));'"''
'"        CTxDestination '?';'"''
'"        if (ExtractDestination(out.tx->vout[out.i].scriptPubKey, '?'))'"''
'"        {'"''
'"            entry.push_back(Pair("'?'", CBitcoin'?'('?').ToString()));'"''
'"            if (pwalletMain->map'?'Book.count('?'))'"''
'"                entry.push_back(Pair("account", pwalletMain->map'?'Book['?'].name));'"''
'"        }'"''
'"        entry.push_back(Pair("scriptPubKey", HexStr(pk.begin(), pk.end())));'"''
'"        if (pk.IsPayToScriptHash())'"''
'"        {'"''
'"            CTxDestination '?';'"''
'"            if (ExtractDestination(pk, '?'))'"''
'"            {'"''
'"                const CScriptID& hash = boost::get<const CScriptID&>('?');'"''
'"                CScript redeemScript;'"''
'"                if (pwalletMain->GetCScript(hash, redeemScript))'"''
'"                    entry.push_back(Pair("redeemScript", HexStr(redeemScript.begin(), redeemScript.end())));'"''
'"            }'"''
'"        }'"''
'"        entry.push_back(Pair("amount",ValueFromAmount(nValue)));'"''
'"        entry.push_back(Pair("confirmations",out.nDepth));'"''
'"        results.push_back(entry);'"''
'"    }'"''
'"    return results;'"''
'"}'"''
'"#endif'"''
'"Value createrawtransaction(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() != 2)'"''
'"        throw runtime_error('"''
'"            "createrawtransaction [{\"txid\":\"id\",\"vout\":n},...] {\"'?'\":amount,...}\n"'"''
'"            "\nCreate a transaction spending the given inputs and sending to the given '?'es.\n"'"''
'"            "Returns hex-encoded raw transaction.\n"'"''
'"            "Note that the transaction's inputs are not signed, and\n"'"''
'"            "it is not stored in the wallet or transmitted to the network.\n"'"''
'"            "\nArguments:\n"'"''
'"            "1. \"transactions\"        (string, required) A json array of json objects\n"'"''
'"            "     [\n"'"''
'"            "       {\n"'"''
'"            "         \"txid\":\"id\",  (string, required) The transaction id\n"'"''
'"            "         \"vout\":n        (numeric, required) The output number\n"'"''
'"            "       }\n"'"''
'"            "       ,...\n"'"''
'"            "     ]\n"'"''
'"            "2. \"'?'es\"           (string, required) a json object with '?'es as keys and amounts as values\n"'"''
'"            "    {\n"'"''
'"            "      \"'?'\": x.xxx   (numeric, required) The key is the bitcoin '?', the value is the btc amount\n"'"''
'"            "      ,...\n"'"''
'"            "    }\n"'"''
'"            "\nResult:\n"'"''
'"            "\"transaction\"            (string) hex string of the transaction\n"'"''
'"            "\nExamples\n"'"''
'"            + HelpExampleCli("createrawtransaction", "\"[{\\\"txid\\\":\\\"myid\\\",\\\"vout\\\":0}]\" \"{\\\"'?'\\\":0.01}\"")'"''
'"            + HelpExampleRpc("createrawtransaction", "\"[{\\\"txid\\\":\\\"myid\\\",\\\"vout\\\":0}]\", \"{\\\"'?'\\\":0.01}\"")'"''
'"        );'"''
'"    RPCTypeCheck(params, list_of(array_type)(obj_type));'"''
'"    Array inputs = params['?''].get_array('_ '?'_ ');'"''
'"    Object sendTo = params['?''].get_obj();'"''
'"    CTransaction rawTx;'"''
'"    BOOST_FOREACH(const Value& input, inputs)'"''
'"    {'"''
'"        const Object& o = input.get_obj();'"''
'"        uint256 txid = ParseHashO('?''');'"''
'"        const Value& vout_v = find_value('?'');'"''
'"        if (vout_v.type() != int_type)'"''
'"            throw JSONRPCError('?''');'"''
'"        int nOutput = vout_v.get_int();'"''
'"        if (nOutput < 0)'"''
'"            throw JSONRPCError('?'');'"''
'"        CTxIn in('?'''));'"''
'"        rawTx.vin.push_back('?'');'"''
'"    }'"''
'"    set<CBitcoin'?'> set'?';'"''
'"    BOOST_FOREACH('?''')'"''
'"    {'"''
'"        CBitcoin'?' '?''?''');'"''
'"        if (!'?'.IsValid())'"''
'"            throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, string('?'''")+s.name_);'"''
'"        if (set'?'.count('?'))'"''
'"            throw JSONRPCError(RPC_INVALID_PARAMETER, string('?': ")+s.name_);'"''
'"        set'?'.insert('?');'"''
'"        CScript scriptPubKey;'"''
'"        scriptPubKey.SetDestination('?'.Get());'"''
'"        int64_t nAmount = AmountFromValue(s.value_);'"''
'"        CTxOut out(nAmount, scriptPubKey);'"''
'"        rawTx.vout.push_back(out);'"''
'"    }'"''
'"    CDataStream ss(SER_NETWORK, PROTOCOL_VERSION);'"''
'"    ss << rawTx;'"''
'"    return HexStr(ss.begin(), ss.end());'"''
'"}'"''
'"Value decoderawtransaction(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() != 1)'"''
'"        throw runtime_error('"''
'"            "decoderawtransaction \"hexstring\"\n"'"''
'"            "\nReturn a JSON object representing the serialized, hex-encoded transaction.\n"'"''
'"            "\nArguments:\n"'"''
'"            "1. \"hex\"      (string, required) The transaction hex string\n"'"''
'"            "\nResult:\n"'"''
'"            "{\n"'"''
'"            "  \"txid\" : \"id\",        (string) The transaction id\n"'"''
'"            "  \"version\" : n,          (numeric) The version\n"'"''
'"            "  \"locktime\" : ttt,       (numeric) The lock time\n"'"''
'"            "  \"vin\" : [               (array of json objects)\n"'"''
'"            "     {\n"'"''
'"            "       \"txid\": \"id\",    (string) The transaction id\n"'"''
'"            "       \"vout\": n,         (numeric) The output number\n"'"''
'"            "       \"scriptSig\": {     (json object) The script\n"'"''
'"            "         \"asm\": \"asm\",  (string) asm\n"'"''
'"            "         \"hex\": \"hex\"   (string) hex\n"'"''
'"            "       },\n"'"''
'"            "       \"sequence\": n     (numeric) The script sequence number\n"'"''
'"            "     }\n"'"''
'"            "     ,...\n"'"''
'"            "  ],\n"'"''
'"            "  \"vout\" : [             (array of json objects)\n"'"''
'"            "     {\n"'"''
'"            "       \"value\" : x.xxx,            (numeric) The value in btc\n"'"''
'"            "       \"n\" : n,                    (numeric) index\n"'"''
'"            "       \"scriptPubKey\" : {          (json object)\n"'"''
'"            "         \"asm\" : \"asm\",          (string) the asm\n"'"''
'"            "         \"hex\" : \"hex\",          (string) the hex\n"'"''
'"            "         \"reqSigs\" : n,            (numeric) The required sigs\n"'"''
'"            "         \"type\" : \"pubkeyhash\",  (string) The type, eg 'pubkeyhash'\n"'"''
'"            "         \"'?'es\" : [           (json array of string)\n"'"''
'"            "           \"12tvKAXCxZjSmdNbao16dKXC8tRWfcF5oc\"   (string) bitcoin '?'\n"'"''
'"            "           ,...\n"'"''
'"            "         ]\n"'"''
'"            "       }\n"'"''
'"            "     }\n"'"''
'"            "     ,...\n"'"''
'"            "  ],\n"'"''
'"            "}\n"'"''
'"            "\nExamples:\n"'"''
'"            + HelpExampleCli("decoderawtransaction", "\"hexstring\"")'"''
'"            + HelpExampleRpc("decoderawtransaction", "\"hexstring\"")'"''
'"        );'"''
'"    vector<unsigned char> txData(ParseHexV(params[0], "argument"));'"''
'"    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"    CTransaction tx;'"''
'"    try {'"''
'"        ssData >> tx;'"''
'"    }'"''
'"    catch (std::exception &e) {'"''
'"        throw JSONRPCError('_'?'_');'"''
'"    }'"''
'"    Object result;'"''
'"    TxToJSON(tx, 0, result);'"''
'"    return result;'"''
'"}'"''
'"Value decodescript(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() != 1)'"''
'"        throw runtime_error('"''
'"            "decodescript \"hex\"\n"'"''
'"            "\nDecode a hex-encoded script.\n"'"''
'"            "\nArguments:\n"'"''
'"            "1. \"hex\"     (string) the hex encoded script\n"'"''
'"            "\nResult:\n"'"''
'"            "{\n"'"''
'"            "  \"asm\":\"asm\",   (string) Script public key\n"'"''
'"            "  \"hex\":\"hex\",   (string) hex encoded public key\n"'"''
'"            "  \"type\":\"type\", (string) The output type\n"'"''
'"            "  \"reqSigs\": n,    (numeric) The required signatures\n"'"''
'"            "  \"'?'es\": [   (json array of string)\n"'"''
'"            "     \"'?'\"     (string) bitcoin '?'\n"'"''
'"            "     ,...\n"'"''
'"            "  ],\n"'"''
'"            "  \"p2sh\",\"'?'\" (string) script '?'\n"'"''
'"            "}\n"'"''
'"            "\nExamples:\n"'"''
'"            + HelpExampleCli("decodescript", "\"hexstring\"")'"''
'"            + HelpExampleRpc("decodescript", "\"hexstring\"")'"''
'"        );'"''
'"    RPCTypeCheck(params, list_of(str_type));'"''
'"    Object r;'"''
'"    CScript script;'"''
'"    if (params[0].get_str().size() > 0){'"''
'"        vector<unsigned char> scriptData(ParseHexV(params[0], "argument"));'"''
'"        script = CScript(scriptData.begin(), scriptData.end());'"''
'"    } else {'"''
'"        // Empty scripts are valid'"''
'"    }'"''
'"    ScriptPubKeyToJSON(script, r, false);'"''
'"    r.push_back(Pair("p2sh", CBitcoin'?'(script.GetID()).ToString()));'"''
'"    return r;'"''
'"}'"''
'"Value signrawtransaction(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() < 1 || params.size() > 4)'"''
'"        throw runtime_error('"''
'"            "signrawtransaction \"hexstring\" ( [{\"txid\":\"id\",\"vout\":n,\"scriptPubKey\":\"hex\",\"redeemScript\":\"hex\"},...] [\"privatekey1\",...] sighashtype )\n"'"''
'"            "\nSign inputs for raw transaction (serialized, hex-encoded).\n"'"''
'"            "The second optional argument (may be null) is an array of previous transaction outputs that\n"'"''
'"            "this transaction depends on but may not yet be in the block chain.\n"'"''
'"            "The third optional argument (may be null) is an array of base58-encoded private\n"'"''
'"            "keys that, if given, will be the only keys used to sign the transaction.\n"'"''
'"#ifdef ENABLE_WALLET'"''
'"            + HelpRequiringPassphrase() + "\n"'"''
'"#endif'"''
'"            "\nArguments:\n"'"''
'"            "1. \"hexstring\"     (string, required) The transaction hex string\n"'"''
'"            "2. \"prevtxs\"       (string, optional) An json array of previous dependent transaction outputs\n"'"''
'"            "     [               (json array of json objects, or 'null' if none provided)\n"'"''
'"            "       {\n"'"''
'"            "         \"txid\":\"id\",             (string, required) The transaction id\n"'"''
'"            "         \"vout\":n,                  (numeric, required) The output number\n"'"''
'"            "         \"scriptPubKey\": \"hex\",   (string, required) script key\n"'"''
'"            "         \"redeemScript\": \"hex\"    (string, required) redeem script\n"'"''
'"            "         \"redeemScript\": \"hex\"    (string, required for P2SH) redeem script\n"'"''
'"            "       }\n"'"''
'"            "       ,...\n"'"''
'"            "    ]\n"'"''
'"            "3. \"privatekeys\"     (string, optional) A json array of base58-encoded private keys for signing\n"'"''
'"            "    [                  (json array of strings, or 'null' if none provided)\n"'"''
'"            "      \"privatekey\"   (string) private key in base58-encoding\n"'"''
'"            "      ,...\n"'"''
'"            "    ]\n"'"''
'"            "4. \"sighashtype\"     (string, optional, default=ALL) The signature hash type. Must be one of\n"'"''
'"            "       \"ALL\"\n"'"''
'"            "       \"NONE\"\n"'"''
'"            "       \"SINGLE\"\n"'"''
'"            "       \"ALL|ANYONECANPAY\"\n"'"''
'"            "       \"NONE|ANYONECANPAY\"\n"'"''
'"            "       \"SINGLE|ANYONECANPAY\"\n"'"''
'"            "\nResult:\n"'"''
'"            "{\n"'"''
'"            "  \"hex\": \"value\",   (string) The raw transaction with signature(s) (hex-encoded string)\n"'"''
'"            "  \"complete\": n       (numeric) if transaction has a complete set of signature (0 if not)\n"'"''
'"            "}\n"'"''
'"            "\nExamples:\n"'"''
'"            + HelpExampleCli("signrawtransaction", "\"myhex\"")'"''
'"            + HelpExampleRpc("signrawtransaction", "\"myhex\"")'"''
'"        );'"''
'"    RPCTypeCheck(params, list_of(str_type)(array_type)(array_type)(str_type), true);'"''
'"    vector<unsigned char> txData(ParseHexV(params[0], "argument 1"));'"''
'"    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"    vector<CTransaction> txVariants;'"''
'"    while (!ssData.empty())'"''
'"    {'"''
'"        try {'"''
'"            CTransaction tx;'"''
'"            ssData >> tx;'"''
'"            txVariants.push_back(tx);'"''
'"        }'"''
'"        catch (std::exception &e) {'"''
'"            throw JSONRPCError('_'?'_');'"''
'"        }'"''
'"    }'"''
'"    if (txVariants.empty())'"''
'"        throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "Missing transaction");'"''
'"    // mergedTx will end up with all the signatures; it'"''
'"    // starts as a clone of the rawtx:'"''
'"    CTransaction mergedTx(txVariants[0]);'"''
'"    bool fComplete = true;'"''
'"    // Fetch previous transactions (inputs):'"''
'"    CCoinsView viewDummy;'"''
'"    CCoinsViewCache view(viewDummy);'"''
'"    {'"''
'"        LOCK(mempool.cs);'"''
'"        CCoinsViewCache &viewChain = *pcoinsTip;'"''
'"        CCoinsViewMemPool viewMempool(viewChain, mempool);'"''
'"        view.SetBackend(viewMempool); // temporarily switch cache backend to db+mempool view'"''
'"        BOOST_FOREACH(const CTxIn& txin, mergedTx.vin) {'"''
'"            const uint256& prevHash = txin.prevout.hash;'"''
'"            CCoins coins;'"''
'"            view.GetCoins(prevHash, coins); // this is certainly allowed to fail'"''
'"        }'"''
'"        view.SetBackend(viewDummy); // switch back to avoid locking mempool for too long'"''
'"    }'"''
'"    bool fGivenKeys = false;'"''
'"    CBasicKeyStore tempKeystore;'"''
'"    if (params.size() > 2 && params[2].type() != null_type)'"''
'"    {'"''
'"        fGivenKeys = true;'"''
'"        Array keys = params[2].get_array();'"''
'"        BOOST_FOREACH(Value k, keys)'"''
'"        {'"''
'"            CBitcoinSecret vchSecret;'"''
'"            bool fGood = vchSecret.SetString(k.get_str());'"''
'"            if (!fGood)'"''
'"                throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, "Invalid private key");'"''
'"            CKey key = vchSecret.GetKey();'"''
'"            tempKeystore.AddKey(key);'"''
'"        }'"''
'"    }'"''
'"#ifdef ENABLE_WALLET'"''
'"    else'"''
'"        EnsureWalletIsUnlocked();'"''
'"#endif'"''
'"    // Add previous txouts given in the RPC call:'"''
'"    if (params.size() > 1 && params[1].type() != null_type)'"''
'"    {'"''
'"        Array prevTxs = params[1].get_array();'"''
'"        BOOST_FOREACH(Value& p, prevTxs)'"''
'"        {'"''
'"            if (p.type() != obj_type)'"''
'"                throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "expected object with {\"txid'\",\"vout\",\"scriptPubKey\"}");'"''
'"            Object prevOut = p.get_obj();'"''
'"            RPCTypeCheck(prevOut, map_list_of("txid", str_type)("vout", int_type)("scriptPubKey", str_type));'"''
'"            uint256 txid = ParseHashO(prevOut, "txid");'"''
'"            int nOut = find_value(prevOut, "vout").get_int();'"''
'"            if (nOut < 0)'"''
'"                throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "vout must be positive");'"''
'"            vector<unsigned char> pkData(ParseHexO(prevOut, "scriptPubKey"));'"''
'"            CScript scriptPubKey(pkData.begin(), pkData.end());'"''
'"            CCoins coins;'"''
'"            if (view.GetCoins(txid, coins)) {'"''
'"                if (coins.IsAvailable(nOut) && coins.vout[nOut].scriptPubKey != scriptPubKey) {'"''
'"                    string err("Previous output scriptPubKey mismatch:\n");'"''
'"                    err = err + coins.vout[nOut].scriptPubKey.ToString() + "\nvs:\n"+'"''
'"                        scriptPubKey.ToString();'"''
'"                    throw JSONRPCError(RPC_DESERIALIZATION_ERROR, err);'"''
'"                }'"''
'"                // what todo if txid is known, but the actual output isn't?'"''
'"            }'"''
'"            if ((unsigned int)nOut >= coins.vout.size())'"''
'"                coins.vout.resize(nOut+1);'"''
'"            coins.vout[nOut].scriptPubKey = scriptPubKey;'"''
'"            coins.vout[nOut].nValue = 0; // we don't know the actual output value'"''
'"            view.SetCoins(txid, coins);'"''
'"            // if redeemScript given and not using the local wallet (private keys'"''
'"            // given), add redeemScript to the tempKeystore so it can be signed:'"''
'"            if (fGivenKeys && scriptPubKey.IsPayToScriptHash())'"''
'"            {'"''
'"                RPCTypeCheck(prevOut, map_list_of("txid", str_type)("vout", int_type)("scriptPubKey", str_type)("redeemScript",str_type));'"''
'"                Value v = find_value(prevOut, "redeemScript");'"''
'"                if (!(v == Value::null))'"''
'"                {'"''
'"                    vector<unsigned char> rsData(ParseHexV(v, "redeemScript"));'"''
'"                    CScript redeemScript(rsData.begin(), rsData.end());'"''
'"                    tempKeystore.AddCScript(redeemScript);'"''
'"                }'"''
'"            }'"''
'"        }'"''
'"    }'"''
'"#ifdef ENABLE_WALLET'"''
'"    const CKeyStore& keystore = ((fGivenKeys || !pwalletMain) ? tempKeystore : *pwalletMain);'"''
'"#else'"''
'"    const CKeyStore& keystore = tempKeystore;'"''
'"#endif'"''
'"    int nHashType = SIGHASH_ALL;'"''
'"    if (params.size() > 3 && params[3].type() != null_type)'"''
'"    {'"''
'"        static map<string, int> mapSigHashValues ='"''
'"            boost::assign::map_list_of'"''
'"            (string("ALL"), int(SIGHASH_ALL))'"''
'"            (string("ALL|ANYONECANPAY"), int(SIGHASH_ALL|SIGHASH_ANYONECANPAY))'"''
'"            (string("NONE"), int(SIGHASH_NONE))'"''
'"            (string("NONE|ANYONECANPAY"), int(SIGHASH_NONE|SIGHASH_ANYONECANPAY))'"''
'"            (string("SINGLE"), int(SIGHASH_SINGLE))'"''
'"            (string("SINGLE|ANYONECANPAY"), int(SIGHASH_SINGLE|SIGHASH_ANYONECANPAY))'"''
'"            ;'"''
'"        string strHashType = params[3].get_str();'"''
'"        if (mapSigHashValues.count(strHashType))'"''
'"            nHashType = mapSigHashValues[strHashType];'"''
'"        else'"''
'"            throw JSONRPCError(RPC_INVALID_PARAMETER, "Invalid sighash param");'"''
'"    }'"''
'"    bool fHashSingle = ((nHashType & ~SIGHASH_ANYONECANPAY) == SIGHASH_SINGLE);'"''
'"    // Sign what we can:'"''
'"    for (unsigned int i = 0; i < mergedTx.vin.size(); i++)'"''
'"    {'"''
'"        CTxIn& txin = mergedTx.vin[i];'"''
'"        CCoins coins;'"''
'"        if (!view.GetCoins(txin.prevout.hash, coins) || !coins.IsAvailable(txin.prevout.n))'"''
'"        {'"''
'"            fComplete = false;'"''
'"            continue;'"''
'"        }'"''
'"        const CScript& prevPubKey = coins.vout[txin.prevout.n].scriptPubKey;'"''
'"        txin.scriptSig.clear();'"''
'"        // Only sign SIGHASH_SINGLE if there's a corresponding output:'"''
'"        if (!fHashSingle || (i < mergedTx.vout.size()))'"''
'"            SignSignature(keystore, prevPubKey, mergedTx, i, nHashType);'"''
'"        // ... and merge in other signatures:'"''
'"        BOOST_FOREACH(const CTransaction& txv, txVariants)'"''
'"        {'"''
'"            txin.scriptSig = CombineSignatures(prevPubKey, mergedTx, i, txin.scriptSig, txv.vin[i].scriptSig);'"''
'"        }'"''
'"        if (!VerifyScript(txin.scriptSig, prevPubKey, mergedTx, i, SCRIPT_VERIFY_P2SH | SCRIPT_VERIFY_STRICTENC, 0))'"''
'"            fComplete = false;'"''
'"    }'"''
'"    Object result;'"''
'"    CDataStream ssTx(SER_NETWORK, PROTOCOL_VERSION);'"''
'"    ssTx << mergedTx;'"''
'"    result.push_back(Pair("hex", HexStr(ssTx.begin(), ssTx.end())));'"''
'"    result.push_back(Pair("complete", fComplete));'"''
'"    return result;'"''
'"}'"''
'"Value sendrawtransaction(const Array& params, bool fHelp)'"''
'"{'"''
'"    if (fHelp || params.size() < 1 || params.size() > 2)'"''
'"        throw runtime_error('"''
'"            "sendrawtransaction \"hexstring\" ( allowhighfees )\n"'"''
'"            "\nSubmits raw transaction (serialized, hex-encoded) to local node and network.\n"'"''
'"            "\nAlso see createrawtransaction and signrawtransaction calls.\n"'"''
'"            "\nArguments:\n"'"''
'"            "1. \"hexstring\"    (string, required) The hex string of the raw transaction)\n"'"''
'"            "2. allowhighfees    (boolean, optional, default=false) Allow high fees\n"'"''
'"            "\nResult:\n"'"''
'"            "\"hex\"             (string) The transaction hash in hex\n"'"''
'"            "\nExamples:\n"'"''
'"            "\nCreate a transaction\n"'"''
'"            + HelpExampleCli("createrawtransaction", "\"[{\\\"txid\\\" : \\\"mytxid\\\",\\\"vout\\\":0}]\" \"{\\\"my'?'\\\":0.01}\"") +'"''
'"            "Sign the transaction, and get back the hex\n"'"''
'"            + HelpExampleCli("signrawtransaction", "\"myhex\"") +'"''
'"            "\nSend the transaction (signed hex)\n"'"''
'"            + HelpExampleCli("sendrawtransaction", "\"signedhex\"") +'"''
'"            "\nAs a json rpc call\n"'"''
'"            + HelpExampleRpc("sendrawtransaction", "\"signedhex\"")'"''
'"        );'"''
'"    // parse hex string from parameter'"''
'"    vector<unsigned char> txData(ParseHexV(params[0], "parameter"));'"''
'"    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"    CTransaction tx;'"''
'"    bool fOverrideFees = false;'"''
'"    if (params.size() > 1)'"''
'"        fOverrideFees = params[1].get_bool();'"''
'"    // deserialize binary data stream'"''
'"    try {'"''
'"        ssData >> tx;'"''
'"    }'"''
'"    catch (std::exception &e) {'"''
'"        throw JSONRPCError('_'?'_');'"''
'"    }'"''
'"    uint256 hashTx = tx.GetHash();'"''
'"    CCoinsViewCache &view = *pcoinsTip;'"''
'"    CCoins existingCoins;'"''
'"    bool fHaveMempool = mempool.exists(hashTx);'"''
'"    bool fHaveChain = view.GetCoins(hashTx, existingCoins) && existingCoins.nHeight < 1000000000;'"''
'"    if (!fHaveMempool && !fHaveChain) {'"''
'"        // push to local node and sync with wallets'"''
'"        CValidationState state;'"''
'"        if (AcceptToMemoryPool(mempool, state, tx, false, NULL, !fOverrideFees))'"''
'"            SyncWithWallets(hashTx, tx, NULL);'"''
'"        else {'"''
'"            if(state.IsInvalid())'"''
'"                throw JSONRPCError(RPC_TRANSACTION_REJECTED, strprintf("%i: %s", state.GetRejectCode(), state.GetRejectReason()));'"''
'"            else'"''
'"                throw JSONRPCError(RPC_TRANSACTION_ERROR, state.GetRejectReason());'"''
'"        }'"''
'"    } else if (fHaveChain) {'"''
'"        throw JSONRPCError(RPC_TRANSACTION_ALREADY_IN_CHAIN, "transaction already in block chain");'"''
'"    }'"''
'"    RelayTransaction(tx, hashTx);'"''
'"    return hashTx.GetHex();'"''
'"}'"''
'"'require'/ ':'' 'test'' :'"''
'"  '- '.devcontainer/**''"''
'" - '.github/actions-scripts/**''"''
'" - '.github/workflows/**''"''
'" - '.github/CODEOWNERS''"''
'" - 'assets/fonts/**''"''
'" - 'data/graphql/**''"''
'" - 'Dockerfile*''"''
'" - 'lib/graphql/**''"''
'" - 'lib/redirects/**''"''
'" - 'lib/rest/**''"''
'" - 'lib/webhooks/**''"''
'" - 'package*.json''"''
'" - 'script/**''"''
'" - 'content/actions/deployment/security-hardening-your-deployments/**''"''
'"From b25701fa9acf3723aad6863c8940eab8d800a6d5 Mon Sep 17 00:00:00 2001'"''
'"From: mowjoejoejoejoe <124041561+mowjoejoejoejoe@users.noreply.github.com>'"''
'"Date: Fri, 3 Feb 2023 05:05:03 -0600'"''
'"Subject: [PATCH] bitore.sig'"''
'"'"''
'"---'"''
'" BITORE | 724 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++'"''
'" 1 file changed, 724 insertions(+)'"''
'" create mode 100644 BITORE'"''
'"'"''
'"diff --git a/BITORE b/BITORE'"''
'"new file mode 100644'"''
'"index 0000000000..3f74cafce0'"''
'"--- /dev/null'"''
'"+++ b/BITORE'"''
'"@@ -0,0 +1,724 @@'"''
'"+@zw'"''
'"+@laanwj'"''
'"+zw authored and laanwj committed on Aug 18, 2014 '"''
'"+1 parent 84efe0e commit 221684c7effa194d2c409622056f613c894adef5'"''
'"+Showing 1 changed file with 1 addition and 1 deletion.'"''
'"+  2  '"''
'"+src/rpcrawtransaction.cpp'"''
'"+// Copyright (c) 2010 Satoshi Nakamoto'"''
'"+// Copyright (c) 2009-2014 The Bitcoin developers'"''
'"+// Distributed under the MIT/X11 software license, see the accompanying'"''
'"+// file COPYING or http://www.opensource.org/licenses/mit-license.php.'"''
'"+#include "base58.h"'"''
'"+#include "core.h"'"''
'"+#include "init.h"'"''
'"+#include "keystore.h"'"''
'"+#include "main.h"'"''
'"+#include "net.h"'"''
'"+#include "rpcserver.h"'"''
'"+#include "uint256.h"'"''
'"+#ifdef ENABLE_WALLET'"''
'"+#include "wallet.h"'"''
'"+#endif'"''
'"+#include <stdint.h>'"''
'"+#include <boost/assign/list_of.hpp>'"''
'"+#include "json/json_spirit_utils.h"'"''
'"+#include "json/json_spirit_value.h"'"''
'"+using namespace std;'"''
'"+using namespace boost;'"''
'"+using namespace boost::assign;'"''
'"+using namespace json_spirit;'"''
'"+void ScriptPubKeyToJSON(const CScript& scriptPubKey, Object& out, bool fIncludeHex)'"''
'"+{'"''
'"+    txnouttype type;'"''
'"+    vector<CTxDestination> '?'es;'"''
'"+    int nRequired;'"''
'"+    out.push_back(Pair("asm", scriptPubKey.ToString()));'"''
'"+    if (fIncludeHex)'"''
'"+        out.push_back(Pair("hex", HexStr(scriptPubKey.begin(), scriptPubKey.end())));'"''
'"+    if (!ExtractDestinations(scriptPubKey, type, '?'es, nRequired))'"''
'"+    {'"''
'"+        out.push_back(Pair("type", GetTxnOutputType(type)));'"''
'"+        return;'"''
'"+    }'"''
'"+    out.push_back(Pair("reqSigs", nRequired));'"''
'"+    out.push_back(Pair("type", GetTxnOutputType(type)));'"''
'"+    Array a;'"''
'"+    BOOST_FOREACH(const CTxDestination& addr, '?'es)'"''
'"+        a.push_back(CBitcoin'?'(addr).ToString());'"''
'"+    out.push_back(Pair("'?'es", a));'"''
'"+}'"''
'"+void TxToJSON(const CTransaction& tx, const uint256 hashBlock, Object& entry)'"''
'"+{'"''
'"+    entry.push_back(Pair("txid", tx.GetHash().GetHex()));'"''
'"+    entry.push_back(Pair("version", tx.nVersion));'"''
'"+    entry.push_back(Pair("locktime", (int64_t)tx.nLockTime));'"''
'"+    Array vin;'"''
'"+    BOOST_FOREACH(const CTxIn& txin, tx.vin)'"''
'"+    {'"''
'"+        Object in;'"''
'"+        if (tx.IsCoinBase())'"''
'"+            in.push_back(Pair("coinbase", HexStr(txin.scriptSig.begin(), txin.scriptSig.end())));'"''
'"+        else'"''
'"+        {'"''
'"+            in.push_back(Pair("txid", txin.prevout.hash.GetHex()));'"''
'"+            in.push_back(Pair("vout", (int64_t)txin.prevout.n));'"''
'"+            Object o;'"''
'"+            o.push_back(Pair("asm", txin.scriptSig.ToString()));'"''
'"+            o.push_back(Pair("hex", HexStr(txin.scriptSig.begin(), txin.scriptSig.end())));'"''
'"+            in.push_back(Pair("scriptSig", o));'"''
'"+        }'"''
'"+        in.push_back(Pair("sequence", (int64_t)txin.nSequence));'"''
'"+        vin.push_back('?'');'"''
'"+    }'"''
'"+    entry.push_back(Pair("vin", vin));'"''
'"+    Array vout;'"''
'"+    for (unsigned int i = 0; i < tx.vout.size(); i++)'"''
'"+    {'"''
'"+        const CTxOut& txout = tx.vout[i];'"''
'"+        Object out;'"''
'"+        out.push_back(Pair("value", ValueFromAmount(txout.nValue)));'"''
'"+        out.push_back(Pair("n", (int64_t)i));'"''
'"+        Object o;'"''
'"+        ScriptPubKeyToJSON(txout.scriptPubKey, o, true);'"''
'"+        out.push_back(Pair("scriptPubKey", o));'"''
'"+        vout.push_back(out);'"''
'"+    }'"''
'"+    entry.push_back(Pair("vout", vout));'"''
'"+    if (hashBlock != 0)'"''
'"+    {'"''
'"+        entry.push_back(Pair("blockhash", hashBlock.GetHex()));'"''
'"+        map<uint256, CBlockIndex*>::iterator mi = mapBlockIndex.find(hashBlock);'"''
'"+        if (mi != mapBlockIndex.end() && (*mi).second)'"''
'"+        {'"''
'"+            CBlockIndex* pindex = (*mi).second;'"''
'"+            if (chainActive.Contains(pindex))'"''
'"+            {'"''
'"+                entry.push_back(Pair("confirmations", 1 + chainActive.Height() - pindex->nHeight));'"''
'"+                entry.push_back(Pair("time", (int64_t)pindex->nTime));'"''
'"+                entry.push_back(Pair("blocktime", (int64_t)pindex->nTime));'"''
'"+            }'"''
'"+            else'"''
'"+                entry.push_back(Pair("confirmations", 0));'"''
'"+        }'"''
'"+    }'"''
'"+}'"''
'"+Value getrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() < 1 || params.size() > 2)'"''
'"+        throw runtime_error('"''
'"+            "getrawtransaction \"txid\" ( verbose )\n"'"''
'"+            "\nReturn the raw transaction data.\n"'"''
'"+            "\nIf verbose=0, returns a string that is serialized, hex-encoded data for 'txid'.\n"'"''
'"+            "If verbose is non-zero, returns an Object with information about 'txid'.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"txid\"      (string, required) The transaction id\n"'"''
'"+            "2. verbose       (numeric, optional, default=0) If 0, return a string, other return a json object\n"'"''
'"+            "\nResult (if verbose is not set or set to 0):\n"'"''
'"+            "\"data\"      (string) The serialized, hex-encoded data for 'txid'\n"'"''
'"+            "\nResult (if verbose > 0):\n"'"''
'"+            "{\n"'"''
'"+            "  \"hex\" : \"data\",       (string) The serialized, hex-encoded data for 'txid'\n"'"''
'"+            "  \"txid\" : \"id\",        (string) The transaction id (same as provided)\n"'"''
'"+            "  \"version\" : n,          (numeric) The version\n"'"''
'"+            "  \"locktime\" : ttt,       (numeric) The lock time\n"'"''
'"+            "  \"vin\" : [               (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"txid\": \"id\",    (string) The transaction id\n"'"''
'"+            "       \"vout\": n,         (numeric) \n"'"''
'"+            "       \"scriptSig\": {     (json object) The script\n"'"''
'"+            "         \"asm\": \"asm\",  (string) asm\n"'"''
'"+            "         \"hex\": \"hex\"   (string) hex\n"'"''
'"+            "       },\n"'"''
'"+            "       \"sequence\": n      (numeric) The script sequence number\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"vout\" : [              (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"value\" : x.xxx,            (numeric) The value in btc\n"'"''
'"+            "       \"n\" : n,                    (numeric) index\n"'"''
'"+            "       \"scriptPubKey\" : {          (json object)\n"'"''
'"+            "         \"asm\" : \"asm\",          (string) the asm\n"'"''
'"+            "         \"hex\" : \"hex\",          (string) the hex\n"'"''
'"+            "         \"reqSigs\" : n,            (numeric) The required sigs\n"'"''
'"+            "         \"type\" : \"pubkeyhash\",  (string) The type, eg 'pubkeyhash'\n"'"''
'"+            "         \"'?'es\" : [           (json array of string)\n"'"''
'"+            "           \"bitcoin'?'\"        (string) bitcoin '?'\n"'"''
'"+            "           ,...\n"'"''
'"+            "         ]\n"'"''
'"+            "       }\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"blockhash\" : \"hash\",   (string) the block hash\n"'"''
'"+            "  \"confirmations\" : n,      (numeric) The confirmations\n"'"''
'"+            "  \"time\" : ttt,             (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT)\n"'"''
'"+            "  \"blocktime\" : ttt         (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("getrawtransaction", "\"mytxid\"")'"''
'"+            + HelpExampleCli("getrawtransaction", "\"mytxid\" 1")'"''
'"+            + HelpExampleRpc("getrawtransaction", "\"mytxid\", 1")'"''
'"+        );'"''
'"+    uint256 hash = ParseHashV(params[0], "parameter 1");'"''
'"+    bool fVerbose = false;'"''
'"+    if (params.size() > 1)'"''
'"+        fVerbose = (params[1].get_int() != 0);'"''
'"+    CTransaction tx;'"''
'"+    uint256 hashBlock = 0;'"''
'"+    if (!GetTransaction(hash, tx, hashBlock, true))'"''
'"+        throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, "No information available about transaction");'"''
'"+    CDataStream ssTx(SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    ssTx << tx;'"''
'"+    string strHex = HexStr(ssTx.begin(), ssTx.end());'"''
'"+    if (!fVerbose)'"''
'"+        return strHex;'"''
'"+    Object result;'"''
'"+    result.push_back(Pair("hex", strHex));'"''
'"+    TxToJSON(tx, hashBlock, result);'"''
'"+    return result;'"''
'"+}'"''
'"+#ifdef ENABLE_WALLET'"''
'"+Value listunspent(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() > 3)'"''
'"+        throw runtime_error('"''
'"+            "listunspent ( minconf maxconf  [\"'?'\",...] )\n"'"''
'"+            "\nReturns array of unspent transaction outputs\n"'"''
'"+            "with between minconf and maxconf (inclusive) confirmations.\n"'"''
'"+            "Optionally filter to only include txouts paid to specified '?'es.\n"'"''
'"+            "Results are an array of Objects, each of which has:\n"'"''
'"+            "{txid, vout, scriptPubKey, amount, confirmations}\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. minconf          (numeric, optional, default=1) The minimum confirmationsi to filter\n"'"''
'"+            "2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter\n"'"''
'"+            "3. \"'?'es\"    (string) A json array of bitcoin '?'es to filter\n"'"''
'"+            "    [\n"'"''
'"+            "      \"'?'\"   (string) bitcoin '?'\n"'"''
'"+            "      ,...\n"'"''
'"+            "    ]\n"'"''
'"+            "\nResult\n"'"''
'"+            "[                   (array of json object)\n"'"''
'"+            "  {\n"'"''
'"+            "    \"txid\" : \"txid\",        (string) the transaction id \n"'"''
'"+            "    \"vout\" : n,               (numeric) the vout value\n"'"''
'"+            "    \"'?'\" : \"'?'\",  (string) the bitcoin '?'\n"'"''
'"+            "    \"account\" : \"account\",  (string) The associated account, or \"\" for the default account\n"'"''
'"+            "    \"scriptPubKey\" : \"key\", (string) the script key\n"'"''
'"+            "    \"amount\" : x.xxx,         (numeric) the transaction amount in btc\n"'"''
'"+            "    \"confirmations\" : n       (numeric) The number of confirmations\n"'"''
'"+            "  }\n"'"''
'"+            "  ,...\n"'"''
'"+            "]\n"'"''
'"+            "\nExamples\n"'"''
'"+            + HelpExampleCli("listunspent", "")'"''
'"+            + HelpExampleCli("listunspent", "6 9999999 \"[\\\"1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\\\",\\\"1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\\\"]\"")'"''
'"+            + HelpExampleRpc("listunspent", "6, 9999999 \"[\\\"1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\\\",\\\"1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\\\"]\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(int_type)(int_type)(array_type));'"''
'"+    int nMinDepth = 1;'"''
'"+    if (params.size() > 0)'"''
'"+        nMinDepth = params[0].get_int();'"''
'"+    int nMaxDepth = 9999999;'"''
'"+    if (params.size() > 1)'"''
'"+        nMaxDepth = params[1].get_int();'"''
'"+    set<CBitcoin'?'> set'?';'"''
'"+    if (params.size() > 2)'"''
'"+    {'"''
'"+        Array inputs = params[2].get_array();'"''
'"+        BOOST_FOREACH(Value& input, inputs)'"''
'"+        {'"''
'"+            CBitcoin'?' '?'(input.get_str());'"''
'"+            if (!'?'.IsValid())'"''
'"+                throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, string('?'''")+input.get_str());'"''
'"+            if (set'?'.count('?'))'"''
'"+                throw JSONRPCError(RPC_INVALID_PARAMETER, string('?': ")+input.get_str());'"''
'"+           set'?'.insert('?');'"''
'"+        }'"''
'"+    }'"''
'"+    Array results;'"''
'"+    vector<COutput> vecOutputs;'"''
'"+    assert(pwalletMain != NULL);'"''
'"+    pwalletMain->AvailableCoins(vecOutputs, false);'"''
'"+    BOOST_FOREACH(const COutput& out, vecOutputs)'"''
'"+    {'"''
'"+        if (out.nDepth < nMinDepth || out.nDepth > nMaxDepth)'"''
'"+            continue;'"''
'"+        if (set'?'.size())'"''
'"+        {'"''
'"+            CTxDestination '?';'"''
'"+            if (!ExtractDestination(out.tx->vout[out.i].scriptPubKey, '?'))'"''
'"+                continue;'"''
'"+            if (!set'?'.count('?'))'"''
'"+                continue;'"''
'"+        }'"''
'"+        int64_t nValue = out.tx->vout[out.i].nValue;'"''
'"+        const CScript& pk = out.tx->vout[out.i].scriptPubKey;'"''
'"+        Object entry;'"''
'"+        entry.push_back(Pair("txid", out.tx->GetHash().GetHex()));'"''
'"+        entry.push_back(Pair("vout", out.i));'"''
'"+        CTxDestination '?';'"''
'"+        if (ExtractDestination(out.tx->vout[out.i].scriptPubKey, '?'))'"''
'"+        {'"''
'"+            entry.push_back(Pair("'?'", CBitcoin'?'('?').ToString()));'"''
'"+            if (pwalletMain->map'?'Book.count('?'))'"''
'"+                entry.push_back(Pair("account", pwalletMain->map'?'Book['?'].name));'"''
'"+        }'"''
'"+        entry.push_back(Pair("scriptPubKey", HexStr(pk.begin(), pk.end())));'"''
'"+        if (pk.IsPayToScriptHash())'"''
'"+        {'"''
'"+            CTxDestination '?';'"''
'"+            if (ExtractDestination(pk, '?'))'"''
'"+            {'"''
'"+                const CScriptID& hash = boost::get<const CScriptID&>('?');'"''
'"+                CScript redeemScript;'"''
'"+                if (pwalletMain->GetCScript(hash, redeemScript))'"''
'"+                    entry.push_back(Pair("redeemScript", HexStr(redeemScript.begin(), redeemScript.end())));'"''
'"+            }'"''
'"+        }'"''
'"+        entry.push_back(Pair("amount",ValueFromAmount(nValue)));'"''
'"+        entry.push_back(Pair("confirmations",out.nDepth));'"''
'"+        results.push_back(entry);'"''
'"+    }'"''
'"+    return results;'"''
'"+}'"''
'"+#endif'"''
'"+Value createrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() != 2)'"''
'"+        throw runtime_error('"''
'"+            "createrawtransaction [{\"txid\":\"id\",\"vout\":n},...] {\"'?'\":amount,...}\n"'"''
'"+            "\nCreate a transaction spending the given inputs and sending to the given '?'es.\n"'"''
'"+            "Returns hex-encoded raw transaction.\n"'"''
'"+            "Note that the transaction's inputs are not signed, and\n"'"''
'"+            "it is not stored in the wallet or transmitted to the network.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"transactions\"        (string, required) A json array of json objects\n"'"''
'"+            "     [\n"'"''
'"+            "       {\n"'"''
'"+            "         \"txid\":\"id\",  (string, required) The transaction id\n"'"''
'"+            "         \"vout\":n        (numeric, required) The output number\n"'"''
'"+            "       }\n"'"''
'"+            "       ,...\n"'"''
'"+            "     ]\n"'"''
'"+            "2. \"'?'es\"           (string, required) a json object with '?'es as keys and amounts as values\n"'"''
'"+            "    {\n"'"''
'"+            "      \"'?'\": x.xxx   (numeric, required) The key is the bitcoin '?', the value is the btc amount\n"'"''
'"+            "      ,...\n"'"''
'"+            "    }\n"'"''
'"+            "\nResult:\n"'"''
'"+            "\"transaction\"            (string) hex string of the transaction\n"'"''
'"+            "\nExamples\n"'"''
'"+            + HelpExampleCli("createrawtransaction", "\"[{\\\"txid\\\":\\\"myid\\\",\\\"vout\\\":0}]\" \"{\\\"'?'\\\":0.01}\"")'"''
'"+            + HelpExampleRpc("createrawtransaction", "\"[{\\\"txid\\\":\\\"myid\\\",\\\"vout\\\":0}]\", \"{\\\"'?'\\\":0.01}\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(array_type)(obj_type));'"''
'"+    Array inputs = params[0].get_array();'"''
'"+    Object sendTo = params[1].get_obj();'"''
'"+    CTransaction rawTx;'"''
'"+    BOOST_FOREACH(const Value& input, inputs)'"''
'"+    {'"''
'"+        const Object& o = input.get_obj();'"''
'"+        uint256 txid = ParseHashO('?''');'"''
'"+        const Value& vout_v = find_value('?'');'"''
'"+        if (vout_v.type() != int_type)'"''
'"+            throw JSONRPCError('?''');'"''
'"+        int nOutput = vout_v.get_int();'"''
'"+        if (nOutput < 0)'"''
'"+            throw JSONRPCError('?'');'"''
'"+        CTxIn in('?'''));'"''
'"+        rawTx.vin.push_back('?'');'"''
'"+    }'"''
'"+    set<CBitcoin'?'> set'?';'"''
'"+    BOOST_FOREACH('?''')'"''
'"+    {'"''
'"+        CBitcoin'?' '?''?''');'"''
'"+        if (!'?'.IsValid())'"''
'"+            throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, string('?'''")+s.name_);'"''
'"+        if (set'?'.count('?'))'"''
'"+            throw JSONRPCError(RPC_INVALID_PARAMETER, string('?': ")+s.name_);'"''
'"+        set'?'.insert('?');'"''
'"+        CScript scriptPubKey;'"''
'"+        scriptPubKey.SetDestination('?'.Get());'"''
'"+        int64_t nAmount = AmountFromValue(s.value_);'"''
'"+        CTxOut out(nAmount, scriptPubKey);'"''
'"+        rawTx.vout.push_back(out);'"''
'"+    }'"''
'"+    CDataStream ss(SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    ss << rawTx;'"''
'"+    return HexStr(ss.begin(), ss.end());'"''
'"+}'"''
'"+Value decoderawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() != 1)'"''
'"+        throw runtime_error('"''
'"+            "decoderawtransaction \"hexstring\"\n"'"''
'"+            "\nReturn a JSON object representing the serialized, hex-encoded transaction.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hex\"      (string, required) The transaction hex string\n"'"''
'"+            "\nResult:\n"'"''
'"+            "{\n"'"''
'"+            "  \"txid\" : \"id\",        (string) The transaction id\n"'"''
'"+            "  \"version\" : n,          (numeric) The version\n"'"''
'"+            "  \"locktime\" : ttt,       (numeric) The lock time\n"'"''
'"+            "  \"vin\" : [               (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"txid\": \"id\",    (string) The transaction id\n"'"''
'"+            "       \"vout\": n,         (numeric) The output number\n"'"''
'"+            "       \"scriptSig\": {     (json object) The script\n"'"''
'"+            "         \"asm\": \"asm\",  (string) asm\n"'"''
'"+            "         \"hex\": \"hex\"   (string) hex\n"'"''
'"+            "       },\n"'"''
'"+            "       \"sequence\": n     (numeric) The script sequence number\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"vout\" : [             (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"value\" : x.xxx,            (numeric) The value in btc\n"'"''
'"+            "       \"n\" : n,                    (numeric) index\n"'"''
'"+            "       \"scriptPubKey\" : {          (json object)\n"'"''
'"+            "         \"asm\" : \"asm\",          (string) the asm\n"'"''
'"+            "         \"hex\" : \"hex\",          (string) the hex\n"'"''
'"+            "         \"reqSigs\" : n,            (numeric) The required sigs\n"'"''
'"+            "         \"type\" : \"pubkeyhash\",  (string) The type, eg 'pubkeyhash'\n"'"''
'"+            "         \"'?'es\" : [           (json array of string)\n"'"''
'"+            "           \"12tvKAXCxZjSmdNbao16dKXC8tRWfcF5oc\"   (string) bitcoin '?'\n"'"''
'"+            "           ,...\n"'"''
'"+            "         ]\n"'"''
'"+            "       }\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("decoderawtransaction", "\"hexstring\"")'"''
'"+            + HelpExampleRpc("decoderawtransaction", "\"hexstring\"")'"''
'"+        );'"''
'"+    vector<unsigned char> txData(ParseHexV(params[0], "argument"));'"''
'"+    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    CTransaction tx;'"''
'"+    try {'"''
'"+        ssData >> tx;'"''
'"+    }'"''
'"+    catch (std::exception &e) {'"''
'"+        throw JSONRPCError('_'?'_');'"''
'"+    }'"''
'"+    Object result;'"''
'"+    TxToJSON(tx, 0, result);'"''
'"+    return result;'"''
'"+}'"''
'"+Value decodescript(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() != 1)'"''
'"+        throw runtime_error('"''
'"+            "decodescript \"hex\"\n"'"''
'"+            "\nDecode a hex-encoded script.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hex\"     (string) the hex encoded script\n"'"''
'"+            "\nResult:\n"'"''
'"+            "{\n"'"''
'"+            "  \"asm\":\"asm\",   (string) Script public key\n"'"''
'"+            "  \"hex\":\"hex\",   (string) hex encoded public key\n"'"''
'"+            "  \"type\":\"type\", (string) The output type\n"'"''
'"+            "  \"reqSigs\": n,    (numeric) The required signatures\n"'"''
'"+            "  \"'?'es\": [   (json array of string)\n"'"''
'"+            "     \"'?'\"     (string) bitcoin '?'\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"p2sh\",\"'?'\" (string) script '?'\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("decodescript", "\"hexstring\"")'"''
'"+            + HelpExampleRpc("decodescript", "\"hexstring\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(str_type));'"''
'"+    Object r;'"''
'"+    CScript script;'"''
'"+    if (params[0].get_str().size() > 0){'"''
'"+        vector<unsigned char> scriptData(ParseHexV(params[0], "argument"));'"''
'"+        script = CScript(scriptData.begin(), scriptData.end());'"''
'"+    } else {'"''
'"+        // Empty scripts are valid'"''
'"+    }'"''
'"+    ScriptPubKeyToJSON(script, r, false);'"''
'"+    r.push_back(Pair("p2sh", CBitcoin'?'(script.GetID()).ToString()));'"''
'"+    return r;'"''
'"+}'"''
'"+Value signrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() < 1 || params.size() > 4)'"''
'"+        throw runtime_error('"''
'"+            "signrawtransaction \"hexstring\" ( [{\"txid\":\"id\",\"vout\":n,\"scriptPubKey\":\"hex\",\"redeemScript\":\"hex\"},...] [\"privatekey1\",...] sighashtype )\n"'"''
'"+            "\nSign inputs for raw transaction (serialized, hex-encoded).\n"'"''
'"+            "The second optional argument (may be null) is an array of previous transaction outputs that\n"'"''
'"+            "this transaction depends on but may not yet be in the block chain.\n"'"''
'"+            "The third optional argument (may be null) is an array of base58-encoded private\n"'"''
'"+            "keys that, if given, will be the only keys used to sign the transaction.\n"'"''
'"+#ifdef ENABLE_WALLET'"''
'"+            + HelpRequiringPassphrase() + "\n"'"''
'"+#endif'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hexstring\"     (string, required) The transaction hex string\n"'"''
'"+            "2. \"prevtxs\"       (string, optional) An json array of previous dependent transaction outputs\n"'"''
'"+            "     [               (json array of json objects, or 'null' if none provided)\n"'"''
'"+            "       {\n"'"''
'"+            "         \"txid\":\"id\",             (string, required) The transaction id\n"'"''
'"+            "         \"vout\":n,                  (numeric, required) The output number\n"'"''
'"+            "         \"scriptPubKey\": \"hex\",   (string, required) script key\n"'"''
'"+            "         \"redeemScript\": \"hex\"    (string, required) redeem script\n"'"''
'"+            "         \"redeemScript\": \"hex\"    (string, required for P2SH) redeem script\n"'"''
'"+            "       }\n"'"''
'"+            "       ,...\n"'"''
'"+            "    ]\n"'"''
'"+            "3. \"privatekeys\"     (string, optional) A json array of base58-encoded private keys for signing\n"'"''
'"+            "    [                  (json array of strings, or 'null' if none provided)\n"'"''
'"+            "      \"privatekey\"   (string) private key in base58-encoding\n"'"''
'"+            "      ,...\n"'"''
'"+            "    ]\n"'"''
'"+            "4. \"sighashtype\"     (string, optional, default=ALL) The signature hash type. Must be one of\n"'"''
'"+            "       \"ALL\"\n"'"''
'"+            "       \"NONE\"\n"'"''
'"+            "       \"SINGLE\"\n"'"''
'"+            "       \"ALL|ANYONECANPAY\"\n"'"''
'"+            "       \"NONE|ANYONECANPAY\"\n"'"''
'"+            "       \"SINGLE|ANYONECANPAY\"\n"'"''
'"+            "\nResult:\n"'"''
'"+            "{\n"'"''
'"+            "  \"hex\": \"value\",   (string) The raw transaction with signature(s) (hex-encoded string)\n"'"''
'"+            "  \"complete\": n       (numeric) if transaction has a complete set of signature (0 if not)\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("signrawtransaction", "\"myhex\"")'"''
'"+            + HelpExampleRpc("signrawtransaction", "\"myhex\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(str_type)(array_type)(array_type)(str_type), true);'"''
'"+    vector<unsigned char> txData(ParseHexV(params[0], "argument 1"));'"''
'"+    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    vector<CTransaction> txVariants;'"''
'"+    while (!ssData.empty())'"''
'"+    {'"''
'"+        try {'"''
'"+            CTransaction tx;'"''
'"+            ssData >> tx;'"''
'"+            txVariants.push_back(tx);'"''
'"+        }'"''
'"+        catch (std::exception &e) {'"''
'"+            throw JSONRPCError('_'?'_');'"''
'"+        }'"''
'"+    }'"''
'"+    if (txVariants.empty())'"''
'"+        throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "Missing transaction");'"''
'"+    // mergedTx will end up with all the signatures; it'"''
'"+    // starts as a clone of the rawtx:'"''
'"+    CTransaction mergedTx(txVariants[0]);'"''
'"+    bool fComplete = true;'"''
'"+    // Fetch previous transactions (inputs):'"''
'"+    CCoinsView viewDummy;'"''
'"+    CCoinsViewCache view(viewDummy);'"''
'"+    {'"''
'"+        LOCK(mempool.cs);'"''
'"+        CCoinsViewCache &viewChain = *pcoinsTip;'"''
'"+        CCoinsViewMemPool viewMempool(viewChain, mempool);'"''
'"+        view.SetBackend(viewMempool); // temporarily switch cache backend to db+mempool view'"''
'"+        BOOST_FOREACH(const CTxIn& txin, mergedTx.vin) {'"''
'"+            const uint256& prevHash = txin.prevout.hash;'"''
'"+            CCoins coins;'"''
'"+            view.GetCoins(prevHash, coins); // this is certainly allowed to fail'"''
'"+        }'"''
'"+        view.SetBackend(viewDummy); // switch back to avoid locking mempool for too long'"''
'"+    }'"''
'"+    bool fGivenKeys = false;'"''
'"+    CBasicKeyStore tempKeystore;'"''
'"+    if (params.size() > 2 && params[2].type() != null_type)'"''
'"+    {'"''
'"+        fGivenKeys = true;'"''
'"+        Array keys = params[2].get_array();'"''
'"+        BOOST_FOREACH(Value k, keys)'"''
'"+        {'"''
'"+            CBitcoinSecret vchSecret;'"''
'"+            bool fGood = vchSecret.SetString(k.get_str());'"''
'"+            if (!fGood)'"''
'"+                throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, "Invalid private key");'"''
'"+            CKey key = vchSecret.GetKey();'"''
'"+            tempKeystore.AddKey(key);'"''
'"+        }'"''
'"+    }'"''
'"+#ifdef ENABLE_WALLET'"''
'"+    else'"''
'"+        EnsureWalletIsUnlocked();'"''
'"+#endif'"''
'"+    // Add previous txouts given in the RPC call:'"''
'"+    if (params.size() > 1 && params[1].type() != null_type)'"''
'"+    {'"''
'"+        Array prevTxs = params[1].get_array();'"''
'"+        BOOST_FOREACH(Value& p, prevTxs)'"''
'"+        {'"''
'"+            if (p.type() != obj_type)'"''
'"+                throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "expected object with {\"txid'\",\"vout\",\"scriptPubKey\"}");'"''
'"+            Object prevOut = p.get_obj();'"''
'"+            RPCTypeCheck(prevOut, map_list_of("txid", str_type)("vout", int_type)("scriptPubKey", str_type));'"''
'"+            uint256 txid = ParseHashO(prevOut, "txid");'"''
'"+            int nOut = find_value(prevOut, "vout").get_int();'"''
'"+            if (nOut < 0)'"''
'"+                throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "vout must be positive");'"''
'"+            vector<unsigned char> pkData(ParseHexO(prevOut, "scriptPubKey"));'"''
'"+            CScript scriptPubKey(pkData.begin(), pkData.end());'"''
'"+            CCoins coins;'"''
'"+            if (view.GetCoins(txid, coins)) {'"''
'"+                if (coins.IsAvailable(nOut) && coins.vout[nOut].scriptPubKey != scriptPubKey) {'"''
'"+                    string err("Previous output scriptPubKey mismatch:\n");'"''
'"+                    err = err + coins.vout[nOut].scriptPubKey.ToString() + "\nvs:\n"+'"''
'"+                        scriptPubKey.ToString();'"''
'"+                    throw JSONRPCError(RPC_DESERIALIZATION_ERROR, err);'"''
'"+                }'"''
'"+                // what todo if txid is known, but the actual output isn't?'"''
'"+            }'"''
'"+            if ((unsigned int)nOut >= coins.vout.size())'"''
'"+                coins.vout.resize(nOut+1);'"''
'"+            coins.vout[nOut].scriptPubKey = scriptPubKey;'"''
'"+            coins.vout[nOut].nValue = 0; // we don't know the actual output value'"''
'"+            view.SetCoins(txid, coins);'"''
'"+            // if redeemScript given and not using the local wallet (private keys'"''
'"+            // given), add redeemScript to the tempKeystore so it can be signed:'"''
'"+            if (fGivenKeys && scriptPubKey.IsPayToScriptHash())'"''
'"+            {'"''
'"+                RPCTypeCheck(prevOut, map_list_of("txid", str_type)("vout", int_type)("scriptPubKey", str_type)("redeemScript",str_type));'"''
'"+                Value v = find_value(prevOut, "redeemScript");'"''
'"+                if (!(v == Value::null))'"''
'"+                {'"''
'"+                    vector<unsigned char> rsData(ParseHexV(v, "redeemScript"));'"''
'"+                    CScript redeemScript(rsData.begin(), rsData.end());'"''
'"+                    tempKeystore.AddCScript(redeemScript);'"''
'"+                }'"''
'"+            }'"''
'"+        }'"''
'"+    }'"''
'"+#ifdef ENABLE_WALLET'"''
'"+    const CKeyStore& keystore = ((fGivenKeys || !pwalletMain) ? tempKeystore : *pwalletMain);'"''
'"+#else'"''
'"+    const CKeyStore& keystore = tempKeystore;'"''
'"+#endif'"''
'"+    int nHashType = SIGHASH_ALL;'"''
'"+    if (params.size() > 3 && params[3].type() != null_type)'"''
'"+    {'"''
'"+        static map<string, int> mapSigHashValues ='"''
'"+            boost::assign::map_list_of'"''
'"+            (string("ALL"), int(SIGHASH_ALL))'"''
'"+            (string("ALL|ANYONECANPAY"), int(SIGHASH_ALL|SIGHASH_ANYONECANPAY))'"''
'"+            (string("NONE"), int(SIGHASH_NONE))'"''
'"+            (string("NONE|ANYONECANPAY"), int(SIGHASH_NONE|SIGHASH_ANYONECANPAY))'"''
'"+            (string("SINGLE"), int(SIGHASH_SINGLE))'"''
'"+            (string("SINGLE|ANYONECANPAY"), int(SIGHASH_SINGLE|SIGHASH_ANYONECANPAY))'"''
'"+            ;'"''
'"+        string strHashType = params[3].get_str();'"''
'"+        if (mapSigHashValues.count(strHashType))'"''
'"+            nHashType = mapSigHashValues[strHashType];'"''
'"+        else'"''
'"+            throw JSONRPCError(RPC_INVALID_PARAMETER, "Invalid sighash param");'"''
'"+    }'"''
'"+    bool fHashSingle = ((nHashType & ~SIGHASH_ANYONECANPAY) == SIGHASH_SINGLE);'"''
'"+    // Sign what we can:'"''
'"+    for (unsigned int i = 0; i < mergedTx.vin.size(); i++)'"''
'"+    {'"''
'"+        CTxIn& txin = mergedTx.vin[i];'"''
'"+        CCoins coins;'"''
'"+        if (!view.GetCoins(txin.prevout.hash, coins) || !coins.IsAvailable(txin.prevout.n))'"''
'"+        {'"''
'"+            fComplete = false;'"''
'"+            continue;'"''
'"+        }'"''
'"+        const CScript& prevPubKey = coins.vout[txin.prevout.n].scriptPubKey;'"''
'"+        txin.scriptSig.clear();'"''
'"+        // Only sign SIGHASH_SINGLE if there's a corresponding output:'"''
'"+        if (!fHashSingle || (i < mergedTx.vout.size()))'"''
'"+            SignSignature(keystore, prevPubKey, mergedTx, i, nHashType);'"''
'"+        // ... and merge in other signatures:'"''
'"+        BOOST_FOREACH(const CTransaction& txv, txVariants)'"''
'"+        {'"''
'"+            txin.scriptSig = CombineSignatures(prevPubKey, mergedTx, i, txin.scriptSig, txv.vin[i].scriptSig);'"''
'"+        }'"''
'"+        if (!VerifyScript(txin.scriptSig, prevPubKey, mergedTx, i, SCRIPT_VERIFY_P2SH | SCRIPT_VERIFY_STRICTENC, 0))'"''
'"+            fComplete = false;'"''
'"+    }'"''
'"+    Object result;'"''
'"+    CDataStream ssTx(SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    ssTx << mergedTx;'"''
'"+    result.push_back(Pair("hex", HexStr(ssTx.begin(), ssTx.end())));'"''
'"+    result.push_back(Pair("complete", fComplete));'"''
'"+    return result;'"''
'"+}'"''
'"+Value sendrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() < 1 || params.size() > 2)'"''
'"+        throw runtime_error('"''
'"+            "sendrawtransaction \"hexstring\" ( allowhighfees )\n"'"''
'"+            "\nSubmits raw transaction (serialized, hex-encoded) to local node and network.\n"'"''
'"+            "\nAlso see createrawtransaction and signrawtransaction calls.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hexstring\"    (string, required) The hex string of the raw transaction)\n"'"''
'"+            "2. allowhighfees    (boolean, optional, default=false) Allow high fees\n"'"''
'"+            "\nResult:\n"'"''
'"+            "\"hex\"             (string) The transaction hash in hex\n"'"''
'"+            "\nExamples:\n"'"''
'"+            "\nCreate a transaction\n"'"''
'"+            + HelpExampleCli("createrawtransaction", "\"[{\\\"txid\\\" : \\\"mytxid\\\",\\\"vout\\\":0}]\" \"{\\\"my'?'\\\":0.01}\"") +'"''
'"+            "Sign the transaction, and get back the hex\n"'"''
'"+            + HelpExampleCli("signrawtransaction", "\"myhex\"") +'"''
'"+            "\nSend the transaction (signed hex)\n"'"''
'"+            + HelpExampleCli("sendrawtransaction", "\"signedhex\"") +'"''
'"+            "\nAs a json rpc call\n"'"''
'"+            + HelpExampleRpc("sendrawtransaction", "\"signedhex\"")'"''
'"+        );'"''
'"+    // parse hex string from parameter'"''
'"+    vector<unsigned char> txData(ParseHexV(params[0], "parameter"));'"''
'"+    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    CTransaction tx;'"''
'"+    bool fOverrideFees = false;'"''
'"+    if (params.size() > 1)'"''
'"+        fOverrideFees = params[1].get_bool();'"''
'"+    // deserialize binary data stream'"''
'"+    try {'"''
'"+        ssData >> tx;'"''
'"+    }'"''
'"+    catch (std::exception &e) {'"''
'"+        throw JSONRPCError('_'?'_');'"''
'"+    }'"''
'"+    uint256 hashTx = tx.GetHash();'"''
'"+    CCoinsViewCache &view = *pcoinsTip;'"''
'"+    CCoins existingCoins;'"''
'"+    bool fHaveMempool = mempool.exists(hashTx);'"''
'"+    bool fHaveChain = view.GetCoins(hashTx, existingCoins) && existingCoins.nHeight < 1000000000;'"''
'"+    if (!fHaveMempool && !fHaveChain) {'"''
'"+        // push to local node and sync with wallets'"''
'"+        CValidationState state;'"''
'"+        if (AcceptToMemoryPool(mempool, state, tx, false, NULL, !fOverrideFees))'"''
'"+            SyncWithWallets(hashTx, tx, NULL);'"''
'"+        else {'"''
'"+            if(state.IsInvalid())'"''
'"+                throw JSONRPCError(RPC_TRANSACTION_REJECTED, strprintf("%i: %s", state.GetRejectCode(), state.GetRejectReason()));'"''
'"+            else'"''
'"+                throw JSONRPCError(RPC_TRANSACTION_ERROR, state.GetRejectReason());'"''
'"+        }'"''
'"+    } else if (fHaveChain) {'"''
'"+        throw JSONRPCError(RPC_TRANSACTION_ALREADY_IN_CHAIN, "transaction already in block chain");'"''
'"+    }'"''
'"+    RelayTransaction(tx, hashTx);'"''
'"+    return hashTx.GetHex();'"''
'"+}'"''
'"+'require'/ ':'' 'test'' :'"''
'"+  '- '.devcontainer/**''"''
'"+ - '.github/actions-scripts/**''"''
'"+ - '.github/workflows/**''"''
'"+ - '.github/CODEOWNERS''"''
'"+ - 'assets/fonts/**''"''
'"+ - 'data/graphql/**''"''
'"+ - 'Dockerfile*''"''
'"+ - 'lib/graphql/**''"''
'"+ - 'lib/redirects/**''"''
'"+ - 'lib/rest/**''"''
'"+ - 'lib/webhooks/**''"''
'"+ - 'package*.json''"''
'"+ - 'script/**''"''
'"+ - 'content/actions/deployment/security-hardening-your-deployments/**''"''
'"From b25701fa9acf3723aad6863c8940eab8d800a6d5 Mon Sep 17 00:00:00 2001'"''
'"From: mowjoejoejoejoe <124041561+mowjoejoejoejoe@users.noreply.github.com>'"''
'"Date: Fri, 3 Feb 2023 05:05:03 -0600'"''
'"Subject: [PATCH] bitore.sig'"''
'"'"''
'"---'"''
'" BITORE | 724 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++'"''
'" 1 file changed, 724 insertions(+)'"''
'" create mode 100644 BITORE'"''
'"'"''
'"diff --git a/BITORE b/BITORE'"''
'"new file mode 100644'"''
'"index 0000000000..3f74cafce0'"''
'"--- /dev/null'"''
'"+++ b/BITORE'"''
'"@@ -0,0 +1,724 @@'"''
'"+@zw'"''
'"+@laanwj'"''
'"+zw authored and laanwj committed on Aug 18, 2014 '"''
'"+1 parent 84efe0e commit 221684c7effa194d2c409622056f613c894adef5'"''
'"+Showing 1 changed file with 1 addition and 1 deletion.'"''
'"+  2  '"''
'"+src/rpcrawtransaction.cpp'"''
'"+// Copyright (c) 2010 Satoshi Nakamoto'"''
'"+// Copyright (c) 2009-2014 The Bitcoin developers'"''
'"+// Distributed under the MIT/X11 software license, see the accompanying'"''
'"+// file COPYING or http://www.opensource.org/licenses/mit-license.php.'"''
'"+#include "base58.h"'"''
'"+#include "core.h"'"''
'"+#include "init.h"'"''
'"+#include "keystore.h"'"''
'"+#include "main.h"'"''
'"+#include "net.h"'"''
'"+#include "rpcserver.h"'"''
'"+#include "uint256.h"'"''
'"+#ifdef ENABLE_WALLET'"''
'"+#include "wallet.h"'"''
'"+#endif'"''
'"+#include <stdint.h>'"''
'"+#include <boost/assign/list_of.hpp>'"''
'"+#include "json/json_spirit_utils.h"'"''
'"+#include "json/json_spirit_value.h"'"''
'"+using namespace std;'"''
'"+using namespace boost;'"''
'"+using namespace boost::assign;'"''
'"+using namespace json_spirit;'"''
'"+void ScriptPubKeyToJSON(const CScript& scriptPubKey, Object& out, bool fIncludeHex)'"''
'"+{'"''
'"+    txnouttype type;'"''
'"+    vector<CTxDestination> '?'es;'"''
'"+    int nRequired;'"''
'"+    out.push_back(Pair("asm", scriptPubKey.ToString()));'"''
'"+    if (fIncludeHex)'"''
'"+        out.push_back(Pair("hex", HexStr(scriptPubKey.begin(), scriptPubKey.end())));'"''
'"+    if (!ExtractDestinations(scriptPubKey, type, '?'es, nRequired))'"''
'"+    {'"''
'"+        out.push_back(Pair("type", GetTxnOutputType(type)));'"''
'"+        return;'"''
'"+    }'"''
'"+    out.push_back(Pair("reqSigs", nRequired));'"''
'"+    out.push_back(Pair("type", GetTxnOutputType(type)));'"''
'"+    Array a;'"''
'"+    BOOST_FOREACH(const CTxDestination& addr, '?'es)'"''
'"+        a.push_back(CBitcoin'?'(addr).ToString());'"''
'"+    out.push_back(Pair("'?'es", a));'"''
'"+}'"''
'"+void TxToJSON(const CTransaction& tx, const uint256 hashBlock, Object& entry)'"''
'"+{'"''
'"+    entry.push_back(Pair("txid", tx.GetHash().GetHex()));'"''
'"+    entry.push_back(Pair("version", tx.nVersion));'"''
'"+    entry.push_back(Pair("locktime", (int64_t)tx.nLockTime));'"''
'"+    Array vin;'"''
'"+    BOOST_FOREACH(const CTxIn& txin, tx.vin)'"''
'"+    {'"''
'"+        Object in;'"''
'"+        if (tx.IsCoinBase())'"''
'"+            in.push_back(Pair("coinbase", HexStr(txin.scriptSig.begin(), txin.scriptSig.end())));'"''
'"+        else'"''
'"+        {'"''
'"+            in.push_back(Pair("txid", txin.prevout.hash.GetHex()));'"''
'"+            in.push_back(Pair("vout", (int64_t)txin.prevout.n));'"''
'"+            Object o;'"''
'"+            o.push_back(Pair("asm", txin.scriptSig.ToString()));'"''
'"+            o.push_back(Pair("hex", HexStr(txin.scriptSig.begin(), txin.scriptSig.end())));'"''
'"+            in.push_back(Pair("scriptSig", o));'"''
'"+        }'"''
'"+        in.push_back(Pair("sequence", (int64_t)txin.nSequence));'"''
'"+        vin.push_back('?'');'"''
'"+    }'"''
'"+    entry.push_back(Pair("vin", vin));'"''
'"+    Array vout;'"''
'"+    for (unsigned int i = 0; i < tx.vout.size(); i++)'"''
'"+    {'"''
'"+        const CTxOut& txout = tx.vout[i];'"''
'"+        Object out;'"''
'"+        out.push_back(Pair("value", ValueFromAmount(txout.nValue)));'"''
'"+        out.push_back(Pair("n", (int64_t)i));'"''
'"+        Object o;'"''
'"+        ScriptPubKeyToJSON(txout.scriptPubKey, o, true);'"''
'"+        out.push_back(Pair("scriptPubKey", o));'"''
'"+        vout.push_back(out);'"''
'"+    }'"''
'"+    entry.push_back(Pair("vout", vout));'"''
'"+    if (hashBlock != 0)'"''
'"+    {'"''
'"+        entry.push_back(Pair("blockhash", hashBlock.GetHex()));'"''
'"+        map<uint256, CBlockIndex*>::iterator mi = mapBlockIndex.find(hashBlock);'"''
'"+        if (mi != mapBlockIndex.end() && (*mi).second)'"''
'"+        {'"''
'"+            CBlockIndex* pindex = (*mi).second;'"''
'"+            if (chainActive.Contains(pindex))'"''
'"+            {'"''
'"+                entry.push_back(Pair("confirmations", 1 + chainActive.Height() - pindex->nHeight));'"''
'"+                entry.push_back(Pair("time", (int64_t)pindex->nTime));'"''
'"+                entry.push_back(Pair("blocktime", (int64_t)pindex->nTime));'"''
'"+            }'"''
'"+            else'"''
'"+                entry.push_back(Pair("confirmations", 0));'"''
'"+        }'"''
'"+    }'"''
'"+}'"''
'"+Value getrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() < 1 || params.size() > 2)'"''
'"+        throw runtime_error('"''
'"+            "getrawtransaction \"txid\" ( verbose )\n"'"''
'"+            "\nReturn the raw transaction data.\n"'"''
'"+            "\nIf verbose=0, returns a string that is serialized, hex-encoded data for 'txid'.\n"'"''
'"+            "If verbose is non-zero, returns an Object with information about 'txid'.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"txid\"      (string, required) The transaction id\n"'"''
'"+            "2. verbose       (numeric, optional, default=0) If 0, return a string, other return a json object\n"'"''
'"+            "\nResult (if verbose is not set or set to 0):\n"'"''
'"+            "\"data\"      (string) The serialized, hex-encoded data for 'txid'\n"'"''
'"+            "\nResult (if verbose > 0):\n"'"''
'"+            "{\n"'"''
'"+            "  \"hex\" : \"data\",       (string) The serialized, hex-encoded data for 'txid'\n"'"''
'"+            "  \"txid\" : \"id\",        (string) The transaction id (same as provided)\n"'"''
'"+            "  \"version\" : n,          (numeric) The version\n"'"''
'"+            "  \"locktime\" : ttt,       (numeric) The lock time\n"'"''
'"+            "  \"vin\" : [               (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"txid\": \"id\",    (string) The transaction id\n"'"''
'"+            "       \"vout\": n,         (numeric) \n"'"''
'"+            "       \"scriptSig\": {     (json object) The script\n"'"''
'"+            "         \"asm\": \"asm\",  (string) asm\n"'"''
'"+            "         \"hex\": \"hex\"   (string) hex\n"'"''
'"+            "       },\n"'"''
'"+            "       \"sequence\": n      (numeric) The script sequence number\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"vout\" : [              (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"value\" : x.xxx,            (numeric) The value in btc\n"'"''
'"+            "       \"n\" : n,                    (numeric) index\n"'"''
'"+            "       \"scriptPubKey\" : {          (json object)\n"'"''
'"+            "         \"asm\" : \"asm\",          (string) the asm\n"'"''
'"+            "         \"hex\" : \"hex\",          (string) the hex\n"'"''
'"+            "         \"reqSigs\" : n,            (numeric) The required sigs\n"'"''
'"+            "         \"type\" : \"pubkeyhash\",  (string) The type, eg 'pubkeyhash'\n"'"''
'"+            "         \"'?'es\" : [           (json array of string)\n"'"''
'"+            "           \"bitcoin'?'\"        (string) bitcoin '?'\n"'"''
'"+            "           ,...\n"'"''
'"+            "         ]\n"'"''
'"+            "       }\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"blockhash\" : \"hash\",   (string) the block hash\n"'"''
'"+            "  \"confirmations\" : n,      (numeric) The confirmations\n"'"''
'"+            "  \"time\" : ttt,             (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT)\n"'"''
'"+            "  \"blocktime\" : ttt         (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("getrawtransaction", "\"mytxid\"")'"''
'"+            + HelpExampleCli("getrawtransaction", "\"mytxid\" 1")'"''
'"+            + HelpExampleRpc("getrawtransaction", "\"mytxid\", 1")'"''
'"+        );'"''
'"+    uint256 hash = ParseHashV(params[0], "parameter 1");'"''
'"+    bool fVerbose = false;'"''
'"+    if (params.size() > 1)'"''
'"+        fVerbose = (params[1].get_int() != 0);'"''
'"+    CTransaction tx;'"''
'"+    uint256 hashBlock = 0;'"''
'"+    if (!GetTransaction(hash, tx, hashBlock, true))'"''
'"+        throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, "No information available about transaction");'"''
'"+    CDataStream ssTx(SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    ssTx << tx;'"''
'"+    string strHex = HexStr(ssTx.begin(), ssTx.end());'"''
'"+    if (!fVerbose)'"''
'"+        return strHex;'"''
'"+    Object result;'"''
'"+    result.push_back(Pair("hex", strHex));'"''
'"+    TxToJSON(tx, hashBlock, result);'"''
'"+    return result;'"''
'"+}'"''
'"+#ifdef ENABLE_WALLET'"''
'"+Value listunspent(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() > 3)'"''
'"+        throw runtime_error('"''
'"+            "listunspent ( minconf maxconf  [\"'?'\",...] )\n"'"''
'"+            "\nReturns array of unspent transaction outputs\n"'"''
'"+            "with between minconf and maxconf (inclusive) confirmations.\n"'"''
'"+            "Optionally filter to only include txouts paid to specified '?'es.\n"'"''
'"+            "Results are an array of Objects, each of which has:\n"'"''
'"+            "{txid, vout, scriptPubKey, amount, confirmations}\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. minconf          (numeric, optional, default=1) The minimum confirmationsi to filter\n"'"''
'"+            "2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter\n"'"''
'"+            "3. \"'?'es\"    (string) A json array of bitcoin '?'es to filter\n"'"''
'"+            "    [\n"'"''
'"+            "      \"'?'\"   (string) bitcoin '?'\n"'"''
'"+            "      ,...\n"'"''
'"+            "    ]\n"'"''
'"+            "\nResult\n"'"''
'"+            "[                   (array of json object)\n"'"''
'"+            "  {\n"'"''
'"+            "    \"txid\" : \"txid\",        (string) the transaction id \n"'"''
'"+            "    \"vout\" : n,               (numeric) the vout value\n"'"''
'"+            "    \"'?'\" : \"'?'\",  (string) the bitcoin '?'\n"'"''
'"+            "    \"account\" : \"account\",  (string) The associated account, or \"\" for the default account\n"'"''
'"+            "    \"scriptPubKey\" : \"key\", (string) the script key\n"'"''
'"+            "    \"amount\" : x.xxx,         (numeric) the transaction amount in btc\n"'"''
'"+            "    \"confirmations\" : n       (numeric) The number of confirmations\n"'"''
'"+            "  }\n"'"''
'"+            "  ,...\n"'"''
'"+            "]\n"'"''
'"+            "\nExamples\n"'"''
'"+            + HelpExampleCli("listunspent", "")'"''
'"+            + HelpExampleCli("listunspent", "6 9999999 \"[\\\"1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\\\",\\\"1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\\\"]\"")'"''
'"+            + HelpExampleRpc("listunspent", "6, 9999999 \"[\\\"1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\\\",\\\"1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\\\"]\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(int_type)(int_type)(array_type));'"''
'"+    int nMinDepth = 1;'"''
'"+    if (params.size() > 0)'"''
'"+        nMinDepth = params[0].get_int();'"''
'"+    int nMaxDepth = 9999999;'"''
'"+    if (params.size() > 1)'"''
'"+        nMaxDepth = params[1].get_int();'"''
'"+    set<CBitcoin'?'> set'?';'"''
'"+    if (params.size() > 2)'"''
'"+    {'"''
'"+        Array inputs = params[2].get_array();'"''
'"+        BOOST_FOREACH(Value& input, inputs)'"''
'"+        {'"''
'"+            CBitcoin'?' '?'(input.get_str());'"''
'"+            if (!'?'.IsValid())'"''
'"+                throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, string('?'''")+input.get_str());'"''
'"+            if (set'?'.count('?'))'"''
'"+                throw JSONRPCError(RPC_INVALID_PARAMETER, string('?': ")+input.get_str());'"''
'"+           set'?'.insert('?');'"''
'"+        }'"''
'"+    }'"''
'"+    Array results;'"''
'"+    vector<COutput> vecOutputs;'"''
'"+    assert(pwalletMain != NULL);'"''
'"+    pwalletMain->AvailableCoins(vecOutputs, false);'"''
'"+    BOOST_FOREACH(const COutput& out, vecOutputs)'"''
'"+    {'"''
'"+        if (out.nDepth < nMinDepth || out.nDepth > nMaxDepth)'"''
'"+            continue;'"''
'"+        if (set'?'.size())'"''
'"+        {'"''
'"+            CTxDestination '?';'"''
'"+            if (!ExtractDestination(out.tx->vout[out.i].scriptPubKey, '?'))'"''
'"+                continue;'"''
'"+            if (!set'?'.count('?'))'"''
'"+                continue;'"''
'"+        }'"''
'"+        int64_t nValue = out.tx->vout[out.i].nValue;'"''
'"+        const CScript& pk = out.tx->vout[out.i].scriptPubKey;'"''
'"+        Object entry;'"''
'"+        entry.push_back(Pair("txid", out.tx->GetHash().GetHex()));'"''
'"+        entry.push_back(Pair("vout", out.i));'"''
'"+        CTxDestination '?';'"''
'"+        if (ExtractDestination(out.tx->vout[out.i].scriptPubKey, '?'))'"''
'"+        {'"''
'"+            entry.push_back(Pair("'?'", CBitcoin'?'('?').ToString()));'"''
'"+            if (pwalletMain->map'?'Book.count('?'))'"''
'"+                entry.push_back(Pair("account", pwalletMain->map'?'Book['?'].name));'"''
'"+        }'"''
'"+        entry.push_back(Pair("scriptPubKey", HexStr(pk.begin(), pk.end())));'"''
'"+        if (pk.IsPayToScriptHash())'"''
'"+        {'"''
'"+            CTxDestination '?';'"''
'"+            if (ExtractDestination(pk, '?'))'"''
'"+            {'"''
'"+                const CScriptID& hash = boost::get<const CScriptID&>('?');'"''
'"+                CScript redeemScript;'"''
'"+                if (pwalletMain->GetCScript(hash, redeemScript))'"''
'"+                    entry.push_back(Pair("redeemScript", HexStr(redeemScript.begin(), redeemScript.end())));'"''
'"+            }'"''
'"+        }'"''
'"+        entry.push_back(Pair("amount",ValueFromAmount(nValue)));'"''
'"+        entry.push_back(Pair("confirmations",out.nDepth));'"''
'"+        results.push_back(entry);'"''
'"+    }'"''
'"+    return results;'"''
'"+}'"''
'"+#endif'"''
'"+Value createrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() != 2)'"''
'"+        throw runtime_error('"''
'"+            "createrawtransaction [{\"txid\":\"id\",\"vout\":n},...] {\"'?'\":amount,...}\n"'"''
'"+            "\nCreate a transaction spending the given inputs and sending to the given '?'es.\n"'"''
'"+            "Returns hex-encoded raw transaction.\n"'"''
'"+            "Note that the transaction's inputs are not signed, and\n"'"''
'"+            "it is not stored in the wallet or transmitted to the network.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"transactions\"        (string, required) A json array of json objects\n"'"''
'"+            "     [\n"'"''
'"+            "       {\n"'"''
'"+            "         \"txid\":\"id\",  (string, required) The transaction id\n"'"''
'"+            "         \"vout\":n        (numeric, required) The output number\n"'"''
'"+            "       }\n"'"''
'"+            "       ,...\n"'"''
'"+            "     ]\n"'"''
'"+            "2. \"'?'es\"           (string, required) a json object with '?'es as keys and amounts as values\n"'"''
'"+            "    {\n"'"''
'"+            "      \"'?'\": x.xxx   (numeric, required) The key is the bitcoin '?', the value is the btc amount\n"'"''
'"+            "      ,...\n"'"''
'"+            "    }\n"'"''
'"+            "\nResult:\n"'"''
'"+            "\"transaction\"            (string) hex string of the transaction\n"'"''
'"+            "\nExamples\n"'"''
'"+            + HelpExampleCli("createrawtransaction", "\"[{\\\"txid\\\":\\\"myid\\\",\\\"vout\\\":0}]\" \"{\\\"'?'\\\":0.01}\"")'"''
'"+            + HelpExampleRpc("createrawtransaction", "\"[{\\\"txid\\\":\\\"myid\\\",\\\"vout\\\":0}]\", \"{\\\"'?'\\\":0.01}\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(array_type)(obj_type));'"''
'"+    Array inputs = params[0].get_array();'"''
'"+    Object sendTo = params[1].get_obj();'"''
'"+    CTransaction rawTx;'"''
'"+    BOOST_FOREACH(const Value& input, inputs)'"''
'"+    {'"''
'"+        const Object& o = input.get_obj();'"''
'"+        uint256 txid = ParseHashO('?''');'"''
'"+        const Value& vout_v = find_value('?'');'"''
'"+        if (vout_v.type() != int_type)'"''
'"+            throw JSONRPCError('?''');'"''
'"+        int nOutput = vout_v.get_int();'"''
'"+        if (nOutput < 0)'"''
'"+            throw JSONRPCError('?'');'"''
'"+        CTxIn in('?'''));'"''
'"+        rawTx.vin.push_back('?'');'"''
'"+    }'"''
'"+    set<CBitcoin'?'> set'?';'"''
'"+    BOOST_FOREACH('?''')'"''
'"+    {'"''
'"+        CBitcoin'?' '?''?''');'"''
'"+        if (!'?'.IsValid())'"''
'"+            throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, string('?'''")+s.name_);'"''
'"+        if (set'?'.count('?'))'"''
'"+            throw JSONRPCError(RPC_INVALID_PARAMETER, string('?': ")+s.name_);'"''
'"+        set'?'.insert('?');'"''
'"+        CScript scriptPubKey;'"''
'"+        scriptPubKey.SetDestination('?'.Get());'"''
'"+        int64_t nAmount = AmountFromValue(s.value_);'"''
'"+        CTxOut out(nAmount, scriptPubKey);'"''
'"+        rawTx.vout.push_back(out);'"''
'"+    }'"''
'"+    CDataStream ss(SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    ss << rawTx;'"''
'"+    return HexStr(ss.begin(), ss.end());'"''
'"+}'"''
'"+Value decoderawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() != 1)'"''
'"+        throw runtime_error('"''
'"+            "decoderawtransaction \"hexstring\"\n"'"''
'"+            "\nReturn a JSON object representing the serialized, hex-encoded transaction.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hex\"      (string, required) The transaction hex string\n"'"''
'"+            "\nResult:\n"'"''
'"+            "{\n"'"''
'"+            "  \"txid\" : \"id\",        (string) The transaction id\n"'"''
'"+            "  \"version\" : n,          (numeric) The version\n"'"''
'"+            "  \"locktime\" : ttt,       (numeric) The lock time\n"'"''
'"+            "  \"vin\" : [               (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"txid\": \"id\",    (string) The transaction id\n"'"''
'"+            "       \"vout\": n,         (numeric) The output number\n"'"''
'"+            "       \"scriptSig\": {     (json object) The script\n"'"''
'"+            "         \"asm\": \"asm\",  (string) asm\n"'"''
'"+            "         \"hex\": \"hex\"   (string) hex\n"'"''
'"+            "       },\n"'"''
'"+            "       \"sequence\": n     (numeric) The script sequence number\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"vout\" : [             (array of json objects)\n"'"''
'"+            "     {\n"'"''
'"+            "       \"value\" : x.xxx,            (numeric) The value in btc\n"'"''
'"+            "       \"n\" : n,                    (numeric) index\n"'"''
'"+            "       \"scriptPubKey\" : {          (json object)\n"'"''
'"+            "         \"asm\" : \"asm\",          (string) the asm\n"'"''
'"+            "         \"hex\" : \"hex\",          (string) the hex\n"'"''
'"+            "         \"reqSigs\" : n,            (numeric) The required sigs\n"'"''
'"+            "         \"type\" : \"pubkeyhash\",  (string) The type, eg 'pubkeyhash'\n"'"''
'"+            "         \"'?'es\" : [           (json array of string)\n"'"''
'"+            "           \"12tvKAXCxZjSmdNbao16dKXC8tRWfcF5oc\"   (string) bitcoin '?'\n"'"''
'"+            "           ,...\n"'"''
'"+            "         ]\n"'"''
'"+            "       }\n"'"''
'"+            "     }\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("decoderawtransaction", "\"hexstring\"")'"''
'"+            + HelpExampleRpc("decoderawtransaction", "\"hexstring\"")'"''
'"+        );'"''
'"+    vector<unsigned char> txData(ParseHexV(params[0], "argument"));'"''
'"+    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    CTransaction tx;'"''
'"+    try {'"''
'"+        ssData >> tx;'"''
'"+    }'"''
'"+    catch (std::exception &e) {'"''
'"+        throw JSONRPCError('_'?'_');'"''
'"+    }'"''
'"+    Object result;'"''
'"+    TxToJSON(tx, 0, result);'"''
'"+    return result;'"''
'"+}'"''
'"+Value decodescript(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() != 1)'"''
'"+        throw runtime_error('"''
'"+            "decodescript \"hex\"\n"'"''
'"+            "\nDecode a hex-encoded script.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hex\"     (string) the hex encoded script\n"'"''
'"+            "\nResult:\n"'"''
'"+            "{\n"'"''
'"+            "  \"asm\":\"asm\",   (string) Script public key\n"'"''
'"+            "  \"hex\":\"hex\",   (string) hex encoded public key\n"'"''
'"+            "  \"type\":\"type\", (string) The output type\n"'"''
'"+            "  \"reqSigs\": n,    (numeric) The required signatures\n"'"''
'"+            "  \"'?'es\": [   (json array of string)\n"'"''
'"+            "     \"'?'\"     (string) bitcoin '?'\n"'"''
'"+            "     ,...\n"'"''
'"+            "  ],\n"'"''
'"+            "  \"p2sh\",\"'?'\" (string) script '?'\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("decodescript", "\"hexstring\"")'"''
'"+            + HelpExampleRpc("decodescript", "\"hexstring\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(str_type));'"''
'"+    Object r;'"''
'"+    CScript script;'"''
'"+    if (params[0].get_str().size() > 0){'"''
'"+        vector<unsigned char> scriptData(ParseHexV(params[0], "argument"));'"''
'"+        script = CScript(scriptData.begin(), scriptData.end());'"''
'"+    } else {'"''
'"+        // Empty scripts are valid'"''
'"+    }'"''
'"+    ScriptPubKeyToJSON(script, r, false);'"''
'"+    r.push_back(Pair("p2sh", CBitcoin'?'(script.GetID()).ToString()));'"''
'"+    return r;'"''
'"+}'"''
'"+Value signrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() < 1 || params.size() > 4)'"''
'"+        throw runtime_error('"''
'"+            "signrawtransaction \"hexstring\" ( [{\"txid\":\"id\",\"vout\":n,\"scriptPubKey\":\"hex\",\"redeemScript\":\"hex\"},...] [\"privatekey1\",...] sighashtype )\n"'"''
'"+            "\nSign inputs for raw transaction (serialized, hex-encoded).\n"'"''
'"+            "The second optional argument (may be null) is an array of previous transaction outputs that\n"'"''
'"+            "this transaction depends on but may not yet be in the block chain.\n"'"''
'"+            "The third optional argument (may be null) is an array of base58-encoded private\n"'"''
'"+            "keys that, if given, will be the only keys used to sign the transaction.\n"'"''
'"+#ifdef ENABLE_WALLET'"''
'"+            + HelpRequiringPassphrase() + "\n"'"''
'"+#endif'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hexstring\"     (string, required) The transaction hex string\n"'"''
'"+            "2. \"prevtxs\"       (string, optional) An json array of previous dependent transaction outputs\n"'"''
'"+            "     [               (json array of json objects, or 'null' if none provided)\n"'"''
'"+            "       {\n"'"''
'"+            "         \"txid\":\"id\",             (string, required) The transaction id\n"'"''
'"+            "         \"vout\":n,                  (numeric, required) The output number\n"'"''
'"+            "         \"scriptPubKey\": \"hex\",   (string, required) script key\n"'"''
'"+            "         \"redeemScript\": \"hex\"    (string, required) redeem script\n"'"''
'"+            "         \"redeemScript\": \"hex\"    (string, required for P2SH) redeem script\n"'"''
'"+            "       }\n"'"''
'"+            "       ,...\n"'"''
'"+            "    ]\n"'"''
'"+            "3. \"privatekeys\"     (string, optional) A json array of base58-encoded private keys for signing\n"'"''
'"+            "    [                  (json array of strings, or 'null' if none provided)\n"'"''
'"+            "      \"privatekey\"   (string) private key in base58-encoding\n"'"''
'"+            "      ,...\n"'"''
'"+            "    ]\n"'"''
'"+            "4. \"sighashtype\"     (string, optional, default=ALL) The signature hash type. Must be one of\n"'"''
'"+            "       \"ALL\"\n"'"''
'"+            "       \"NONE\"\n"'"''
'"+            "       \"SINGLE\"\n"'"''
'"+            "       \"ALL|ANYONECANPAY\"\n"'"''
'"+            "       \"NONE|ANYONECANPAY\"\n"'"''
'"+            "       \"SINGLE|ANYONECANPAY\"\n"'"''
'"+            "\nResult:\n"'"''
'"+            "{\n"'"''
'"+            "  \"hex\": \"value\",   (string) The raw transaction with signature(s) (hex-encoded string)\n"'"''
'"+            "  \"complete\": n       (numeric) if transaction has a complete set of signature (0 if not)\n"'"''
'"+            "}\n"'"''
'"+            "\nExamples:\n"'"''
'"+            + HelpExampleCli("signrawtransaction", "\"myhex\"")'"''
'"+            + HelpExampleRpc("signrawtransaction", "\"myhex\"")'"''
'"+        );'"''
'"+    RPCTypeCheck(params, list_of(str_type)(array_type)(array_type)(str_type), true);'"''
'"+    vector<unsigned char> txData(ParseHexV(params[0], "argument 1"));'"''
'"+    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    vector<CTransaction> txVariants;'"''
'"+    while (!ssData.empty())'"''
'"+    {'"''
'"+        try {'"''
'"+            CTransaction tx;'"''
'"+            ssData >> tx;'"''
'"+            txVariants.push_back(tx);'"''
'"+        }'"''
'"+        catch (std::exception &e) {'"''
'"+            throw JSONRPCError('_'?'_');'"''
'"+        }'"''
'"+    }'"''
'"+    if (txVariants.empty())'"''
'"+        throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "Missing transaction");'"''
'"+    // mergedTx will end up with all the signatures; it'"''
'"+    // starts as a clone of the rawtx:'"''
'"+    CTransaction mergedTx(txVariants[0]);'"''
'"+    bool fComplete = true;'"''
'"+    // Fetch previous transactions (inputs):'"''
'"+    CCoinsView viewDummy;'"''
'"+    CCoinsViewCache view(viewDummy);'"''
'"+    {'"''
'"+        LOCK(mempool.cs);'"''
'"+        CCoinsViewCache &viewChain = *pcoinsTip;'"''
'"+        CCoinsViewMemPool viewMempool(viewChain, mempool);'"''
'"+        view.SetBackend(viewMempool); // temporarily switch cache backend to db+mempool view'"''
'"+        BOOST_FOREACH(const CTxIn& txin, mergedTx.vin) {'"''
'"+            const uint256& prevHash = txin.prevout.hash;'"''
'"+            CCoins coins;'"''
'"+            view.GetCoins(prevHash, coins); // this is certainly allowed to fail'"''
'"+        }'"''
'"+        view.SetBackend(viewDummy); // switch back to avoid locking mempool for too long'"''
'"+    }'"''
'"+    bool fGivenKeys = false;'"''
'"+    CBasicKeyStore tempKeystore;'"''
'"+    if (params.size() > 2 && params[2].type() != null_type)'"''
'"+    {'"''
'"+        fGivenKeys = true;'"''
'"+        Array keys = params[2].get_array();'"''
'"+        BOOST_FOREACH(Value k, keys)'"''
'"+        {'"''
'"+            CBitcoinSecret vchSecret;'"''
'"+            bool fGood = vchSecret.SetString(k.get_str());'"''
'"+            if (!fGood)'"''
'"+                throw JSONRPCError(RPC_INVALID_'?'_OR_KEY, "Invalid private key");'"''
'"+            CKey key = vchSecret.GetKey();'"''
'"+            tempKeystore.AddKey(key);'"''
'"+        }'"''
'"+    }'"''
'"+#ifdef ENABLE_WALLET'"''
'"+    else'"''
'"+        EnsureWalletIsUnlocked();'"''
'"+#endif'"''
'"+    // Add previous txouts given in the RPC call:'"''
'"+    if (params.size() > 1 && params[1].type() != null_type)'"''
'"+    {'"''
'"+        Array prevTxs = params[1].get_array();'"''
'"+        BOOST_FOREACH(Value& p, prevTxs)'"''
'"+        {'"''
'"+            if (p.type() != obj_type)'"''
'"+                throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "expected object with {\"txid'\",\"vout\",\"scriptPubKey\"}");'"''
'"+            Object prevOut = p.get_obj();'"''
'"+            RPCTypeCheck(prevOut, map_list_of("txid", str_type)("vout", int_type)("scriptPubKey", str_type));'"''
'"+            uint256 txid = ParseHashO(prevOut, "txid");'"''
'"+            int nOut = find_value(prevOut, "vout").get_int();'"''
'"+            if (nOut < 0)'"''
'"+                throw JSONRPCError(RPC_DESERIALIZATION_ERROR, "vout must be positive");'"''
'"+            vector<unsigned char> pkData(ParseHexO(prevOut, "scriptPubKey"));'"''
'"+            CScript scriptPubKey(pkData.begin(), pkData.end());'"''
'"+            CCoins coins;'"''
'"+            if (view.GetCoins(txid, coins)) {'"''
'"+                if (coins.IsAvailable(nOut) && coins.vout[nOut].scriptPubKey != scriptPubKey) {'"''
'"+                    string err("Previous output scriptPubKey mismatch:\n");'"''
'"+                    err = err + coins.vout[nOut].scriptPubKey.ToString() + "\nvs:\n"+'"''
'"+                        scriptPubKey.ToString();'"''
'"+                    throw JSONRPCError(RPC_DESERIALIZATION_ERROR, err);'"''
'"+                }'"''
'"+                // what todo if txid is known, but the actual output isn't?'"''
'"+            }'"''
'"+            if ((unsigned int)nOut >= coins.vout.size())'"''
'"+                coins.vout.resize(nOut+1);'"''
'"+            coins.vout[nOut].scriptPubKey = scriptPubKey;'"''
'"+            coins.vout[nOut].nValue = 0; // we don't know the actual output value'"''
'"+            view.SetCoins(txid, coins);'"''
'"+            // if redeemScript given and not using the local wallet (private keys'"''
'"+            // given), add redeemScript to the tempKeystore so it can be signed:'"''
'"+            if (fGivenKeys && scriptPubKey.IsPayToScriptHash())'"''
'"+            {'"''
'"+                RPCTypeCheck(prevOut, map_list_of("txid", str_type)("vout", int_type)("scriptPubKey", str_type)("redeemScript",str_type));'"''
'"+                Value v = find_value(prevOut, "redeemScript");'"''
'"+                if (!(v == Value::null))'"''
'"+                {'"''
'"+                    vector<unsigned char> rsData(ParseHexV(v, "redeemScript"));'"''
'"+                    CScript redeemScript(rsData.begin(), rsData.end());'"''
'"+                    tempKeystore.AddCScript(redeemScript);'"''
'"+                }'"''
'"+            }'"''
'"+        }'"''
'"+    }'"''
'"+#ifdef ENABLE_WALLET'"''
'"+    const CKeyStore& keystore = ((fGivenKeys || !pwalletMain) ? tempKeystore : *pwalletMain);'"''
'"+#else'"''
'"+    const CKeyStore& keystore = tempKeystore;'"''
'"+#endif'"''
'"+    int nHashType = SIGHASH_ALL;'"''
'"+    if (params.size() > 3 && params[3].type() != null_type)'"''
'"+    {'"''
'"+        static map<string, int> mapSigHashValues ='"''
'"+            boost::assign::map_list_of'"''
'"+            (string("ALL"), int(SIGHASH_ALL))'"''
'"+            (string("ALL|ANYONECANPAY"), int(SIGHASH_ALL|SIGHASH_ANYONECANPAY))'"''
'"+            (string("NONE"), int(SIGHASH_NONE))'"''
'"+            (string("NONE|ANYONECANPAY"), int(SIGHASH_NONE|SIGHASH_ANYONECANPAY))'"''
'"+            (string("SINGLE"), int(SIGHASH_SINGLE))'"''
'"+            (string("SINGLE|ANYONECANPAY"), int(SIGHASH_SINGLE|SIGHASH_ANYONECANPAY))'"''
'"+            ;'"''
'"+        string strHashType = params[3].get_str();'"''
'"+        if (mapSigHashValues.count(strHashType))'"''
'"+            nHashType = mapSigHashValues[strHashType];'"''
'"+        else'"''
'"+            throw JSONRPCError(RPC_INVALID_PARAMETER, "Invalid sighash param");'"''
'"+    }'"''
'"+    bool fHashSingle = ((nHashType & ~SIGHASH_ANYONECANPAY) == SIGHASH_SINGLE);'"''
'"+    // Sign what we can:'"''
'"+    for (unsigned int i = 0; i < mergedTx.vin.size(); i++)'"''
'"+    {'"''
'"+        CTxIn& txin = mergedTx.vin[i];'"''
'"+        CCoins coins;'"''
'"+        if (!view.GetCoins(txin.prevout.hash, coins) || !coins.IsAvailable(txin.prevout.n))'"''
'"+        {'"''
'"+            fComplete = false;'"''
'"+            continue;'"''
'"+        }'"''
'"+        const CScript& prevPubKey = coins.vout[txin.prevout.n].scriptPubKey;'"''
'"+        txin.scriptSig.clear();'"''
'"+        // Only sign SIGHASH_SINGLE if there's a corresponding output:'"''
'"+        if (!fHashSingle || (i < mergedTx.vout.size()))'"''
'"+            SignSignature(keystore, prevPubKey, mergedTx, i, nHashType);'"''
'"+        // ... and merge in other signatures:'"''
'"+        BOOST_FOREACH(const CTransaction& txv, txVariants)'"''
'"+        {'"''
'"+            txin.scriptSig = CombineSignatures(prevPubKey, mergedTx, i, txin.scriptSig, txv.vin[i].scriptSig);'"''
'"+        }'"''
'"+        if (!VerifyScript(txin.scriptSig, prevPubKey, mergedTx, i, SCRIPT_VERIFY_P2SH | SCRIPT_VERIFY_STRICTENC, 0))'"''
'"+            fComplete = false;'"''
'"+    }'"''
'"+    Object result;'"''
'"+    CDataStream ssTx(SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    ssTx << mergedTx;'"''
'"+    result.push_back(Pair("hex", HexStr(ssTx.begin(), ssTx.end())));'"''
'"+    result.push_back(Pair("complete", fComplete));'"''
'"+    return result;'"''
'"+}'"''
'"+Value sendrawtransaction(const Array& params, bool fHelp)'"''
'"+{'"''
'"+    if (fHelp || params.size() < 1 || params.size() > 2)'"''
'"+        throw runtime_error('"''
'"+            "sendrawtransaction \"hexstring\" ( allowhighfees )\n"'"''
'"+            "\nSubmits raw transaction (serialized, hex-encoded) to local node and network.\n"'"''
'"+            "\nAlso see createrawtransaction and signrawtransaction calls.\n"'"''
'"+            "\nArguments:\n"'"''
'"+            "1. \"hexstring\"    (string, required) The hex string of the raw transaction)\n"'"''
'"+            "2. allowhighfees    (boolean, optional, default=false) Allow high fees\n"'"''
'"+            "\nResult:\n"'"''
'"+            "\"hex\"             (string) The transaction hash in hex\n"'"''
'"+            "\nExamples:\n"'"''
'"+            "\nCreate a transaction\n"'"''
'"+            + HelpExampleCli("createrawtransaction", "\"[{\\\"txid\\\" : \\\"mytxid\\\",\\\"vout\\\":0}]\" \"{\\\"my'?'\\\":0.01}\"") +'"''
'"+            "Sign the transaction, and get back the hex\n"'"''
'"+            + HelpExampleCli("signrawtransaction", "\"myhex\"") +'"''
'"+            "\nSend the transaction (signed hex)\n"'"''
'"+            + HelpExampleCli("sendrawtransaction", "\"signedhex\"") +'"''
'"+            "\nAs a json rpc call\n"'"''
'"+            + HelpExampleRpc("sendrawtransaction", "\"signedhex\"")'"''
'"+        );'"''
'"+    // parse hex string from parameter'"''
'"+    vector<unsigned char> txData(ParseHexV(params[0], "parameter"));'"''
'"+    CDataStream ssData(txData, SER_NETWORK, PROTOCOL_VERSION);'"''
'"+    CTransaction tx;'"''
'"+    bool fOverrideFees = false;'"''
'"+    if (params.size() > 1)'"''
'"+        fOverrideFees = params[1].get_bool();'"''
'"+    // deserialize binary data stream'"''
'"+    try {'"''
'"+        ssData >> tx;'"''
'"+    }'"''
'"+    catch (std::exception &e) {'"''
'"+        throw JSONRPCError('_'?'_');'"''
'"+    }'"''
'"+    uint256 hashTx = tx.GetHash();'"''
'"+    CCoinsViewCache &view = *pcoinsTip;'"''
'"+    CCoins existingCoins;'"''
'"+    bool fHaveMempool = mempool.exists(hashTx);'"''
'"+    bool fHaveChain = view.GetCoins(hashTx, existingCoins) && existingCoins.nHeight < 1000000000;'"''
'"+    if (!fHaveMempool && !fHaveChain) {'"''
'"+        // push to local node and sync with wallets'"''
'"+        CValidationState state;'"''
'"+        if (AcceptToMemoryPool(mempool, state, tx, false, NULL, !fOverrideFees))'"''
'"+            SyncWithWallets(hashTx, tx, NULL);'"''
'"+        else {'"''
'"+            if(state.IsInvalid())'"''
'"+                throw JSONRPCError(RPC_TRANSACTION_REJECTED, strprintf("%i: %s", state.GetRejectCode(), state.GetRejectReason()));'"''
'"+            else'"''
'"+                throw JSONRPCError(RPC_TRANSACTION_ERROR, state.GetRejectReason());'"''
'"+        }'"''
'"+    } else if (fHaveChain) {'"''
'"+        throw JSONRPCError(RPC_TRANSACTION_ALREADY_IN_CHAIN, "transaction already in block chain");'"''
'"+    }'"''
'"+    RelayTransaction(tx, hashTx);'"''
'"+    return hashTx.GetHex('?'');'"''
'"+}'"''
'"+'require'/ ':'' 'test'' :'"''
'"+  '- '.devcontainer/**''"''
'"+ - '.github/actions-scripts/**''"''
'"+ - '.github/workflows/**''"''
'"+ - '.github/CODEOWNERS''"''
'"+ - 'assets/fonts/**''"''
'"+ - 'data/graphql/**''"''
'"+ - 'Dockerfile*''"''
'"+ - 'lib/graphql/**''"''
'"+ - 'lib/redirects/**''"''
'"+ - 'lib/rest/**''"''
'"+ - 'lib/webhooks/**''"''
'"+ - 'package*.json''"''
'"+ - 'script/**''"''
'"+ - 'content/actions/deployment/security-hardening-your-deployments/**''"''
'"//posted'"''
'"//*Return: 'Run '' '"'''"''
'"//console.func(.caches*log :ALL AUTOMATE) \'"''
'"which can be used as the callback of a Jest test() block,'"''
'" * and which performs an assertion on the snapshot for the given code and config.'"''
'" * @param code The source code to parse'"''
'" * @param config the parser configuration'"''
'" * @returns callback for janicalineJest/jasmine/ivy.yml'@require.txt' :'''"''
'" * 'requiure' ':' 'test(a11y'@'A'Sync/pa11y.yml) /commits//NPORT-Filer-Information*\commits \n new line at '?'''"''
'" * the beginning....,  <li>b**\*root*CONTENT*/*ecex**:'"''
'" * [ENCODING](*"content:encoding=styles_chain== ENCODIBG[CONTENT-*into BLOCK[CODE:contents(encoding)] :(schain<li>block'"''
'" */'"''
'"expert.console({% "console = build = scripts = ActionEventsListner = console.create(item)is=: ==yarg(AGS)).) :; :''     \'''"''
'"'#'A'Sync = = > void {'"''
'"  config = Object.assign({$ Obj=: new'=''=' 'BITORE'@bitore.sig/BITCORE*milestone:((C)(R))":<" }, defaultConfig, config);'"''
'"'"''
'"  /**'"''
'"   * @returns {Object} the F.A.S.T.([$OBJ](<center>'"''
'"'"''
'"Year Opened : | 1824 | Institution Type : | Commercial bank'"''
'"-- | -- | -- | --'"''
'"Entity Type : | Federal | Federal Regulator : | OCC'"''
'"Member Federal Reserve : | Yes | S-Corp : | No'"''
'"Fiduciary Powers : | Yes | Powers Exercised : | Yes'"''
'"Filing Type : | 031'"''
'" '"''
'"Specialization : | International Specialization'"''
'"Statistical Area (MSA) : | Columbus, OH'"''
'"Interstate Branches : | No | Foreign Offices : | Yes'"''
'"Number of Offices : | 4,845 | Number of Employees : | 216,524'"''
'" '"''
'" '"''
'" '"''
'"Related Company FilingsRegulator JPMORGAN CHASE & COSEC JPMORGAN CHASE&COFED | Related Company Filings | Regulator | JPMORGAN CHASE & CO | SEC | JPMORGAN CHASE&CO | FED'"''
'"Related Company Filings | Regulator'"''
'"JPMORGAN CHASE & CO | SEC'"''
'"JPMORGAN CHASE&CO | FED'"''
'" '"''
'"'"''
'"</center><br><center><table width="95%" cellpadding="2" cellspacing="0" border="0" class="hrbgcolor3" style="background-color: rgb(240, 241, 245);"><tbody><tr class="hrbgcolor2" style="background-color: rgb(221, 227, 235); color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td class="hrbodyboxtitle" nowrap="1" colspan="5" height="25" align="center" style="color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif; font-size: 12px; font-weight: bold;"><font class="hrbodyboxtitle" style="color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif; font-size: 12px; font-weight: bold;">Financial Fast Facts</font></td></tr><tr class="pagebody" style="font-weight: 400; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td class="pagebody" nowrap="1" colspan="2" valign="top" align="center" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Balance Sheet</b><br></font><font class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">(USD, in thousands)</font></td><td nowrap="1" align="center" class="hrbgcolor1" width="7" style="background-color: rgb(240, 241, 245);"><br></td><td class="pagebody" nowrap="1" colspan="2" align="center" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Income Statement</b></font><br><font class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">(USD, in thousands, ytd)</font></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Assets</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>3,308,575,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Interest Income</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>54,703,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Liabilities</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>3,011,246,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total NonInterest Income</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>39,655,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Bank Equity Capital</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>297,265,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Interest Expense</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>7,193,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Domestic Deposits</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>2,079,331,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total NonInterest Expense</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>51,140,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Deposits</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>2,502,364,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Net Income</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>23,604,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Net Loans &amp; Leases</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>1,098,891,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Net Charge Offs</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>1,939,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loan Loss Allowance</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>18,177,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td nowrap="1" class="pagebody" colspan="2" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><br></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td nowrap="1" class="pagebody" colspan="2" height="1" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><br></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td nowrap="1" class="pagebody" colspan="2" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><br></td></tr><tr class="pagebody" style="font-weight: 400; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td class="pagebody" nowrap="1" colspan="2" align="center" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Regulatory Capital</b></font></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td class="pagebody" nowrap="1" colspan="2" align="center" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" valign="top" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Quarterly Averages</b><br></font><font class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">(USD, in thousands)</font></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total capital</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>282,192,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total loans</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>994,450,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total assets for the leverage ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>3,327,201,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loans secured by real estate:</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>382,535,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Leverage ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>7.95</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Commercial and industrial loans</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>157,562,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Tier 1 Capital Ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>16.38</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loans to individuals - Credit Cards</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>148,802,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Capital Ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>17.48</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loans to individuals - Other</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>79,773,000</b></td></tr><tr class="hrbgcolor3" style="background-color: rgb(240, 241, 245); color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><br class="Apple-interchange-newline">Year Opened :	1824	Institution Type :	Commercial bank'"''
'"Entity Type :	Federal	Federal Regulator :	OCC'"''
'"Member Federal Reserve :	Yes	S-Corp :	No'"''
'"Fiduciary Powers :	Yes	Powers Exercised :	Yes'"''
'"Filing Type :	031'"''
'"Specialization :	International Specialization'"''
'"Statistical Area (MSA) :	Columbus, OH'"''
'"Interstate Branches :	No	Foreign Offices :	Yes'"''
'"Number of Offices :	4,845	Number of Employees :	216,524'"''
'"Related Company Filings	Regulator'"''
'" [JPMORGAN CHASE & CO](https://www.ibanknet.com/scripts/submissions/getsec.aspx?ibnid=usa_19617)	SEC'"''
'" [JPMORGAN CHASE&CO](https://www.ibanknet.com/scripts/callreports/getbank.aspx?ibnid=usa_1039502)	FED'"''
'"'"''
'"Financial Reports'"''
'"[RC - Balance Sheet Report](https://www.ibanknet.com/scripts/callreports/viewreport.aspx?ibnid=usa_852218&per=20220930&rpt=RC&typ=html)	'"''
'"[RI - Income Statement Report](https://www.ibanknet.com/scripts/callreports/viewreport.aspx?ibnid=usa_852218&per=20220930&rpt=RI&typ=html)	'"''
'":· [All Financial Reports ...](https://www.ibanknet.com/scripts/callreports/reportlist.aspx?ibnid=usa_852218&per=20220930)'"''
'"'"''
'"Financial Fast Facts'"''
'"Balance Sheet'"''
'"(USD, in thousands)	'"''
'"Income Statement'"''
'"(USD, in thousands, ytd)'"''
'"Total Assets	3,308,575,000	'"''
'"Total Interest Income	54,703,000'"''
'"Total Liabilities	3,011,246,000	'"''
'"Total NonInterest Income	39,655,000'"''
'"Total Bank Equity Capital	297,265,000	'"''
'"Total Interest Expense	7,193,000'"''
'"Domestic Deposits	2,079,331,000	'"''
'"Total NonInterest Expense	51,140,000'"''
'"Total Deposits	2,502,364,000	'"''
'"Net Income	23,604,000'"''
'"Net Loans & Leases	1,098,891,000	'"''
'"Net Charge Offs	1,939,000'"''
'"Loan Loss Allowance	18,177,000	'"''
'"'"''
'"'"''
'"'"''
'"'"''
'"Regulatory Capital	'"''
'"Quarterly Averages'"''
'"(USD, in thousands)'"''
'"Total capital	282,192,000	'"''
'"Total loans	994,450,000'"''
'"Total assets for the leverage ratio	3,327,201,000	'"''
'"Loans secured by real estate:	382,535,000'"''
'"Leverage ratio	7.95	'"''
'"Commercial and industrial loans	157,562,000'"''
'"Tier 1 Capital Ratio	16.38	'"''
'"Loans to individuals - Credit Cards	148,802,000'"''
'"Total Capital Ratio	17.48	'"''
'"Loans to individuals - Other	79,773,000)*'"''
'"*object=: '"''
'"'"''
'"'"''
'"<center>'"''
'"'"''
'"Year Opened : | 1824 | Institution Type : | Commercial bank'"''
'"-- | -- | -- | --'"''
'"Entity Type : | Federal | Federal Regulator : | OCC'"''
'"Member Federal Reserve : | Yes | S-Corp : | No'"''
'"Fiduciary Powers : | Yes | Powers Exercised : | Yes'"''
'"Filing Type : | 031'"''
'" '"''
'"Specialization : | International Specialization'"''
'"Statistical Area (MSA) : | Columbus, OH'"''
'"Interstate Branches : | No | Foreign Offices : | Yes'"''
'"Number of Offices : | 4,845 | Number of Employees : | 216,524'"''
'" '"''
'" '"''
'" '"''
'"Related Company FilingsRegulator JPMORGAN CHASE & COSEC JPMORGAN CHASE&COFED | Related Company Filings | Regulator | JPMORGAN CHASE & CO | SEC | JPMORGAN CHASE&CO | FED'"''
'"Related Company Filings | Regulator'"''
'"JPMORGAN CHASE & CO | SEC'"''
'"JPMORGAN CHASE&CO | FED'"''
'" '"''
'"'"''
'"</center><br><center><table width="95%" cellpadding="2" cellspacing="0" border="0" class="hrbgcolor3" style="background-color: rgb(240, 241, 245);"><tbody><tr class="hrbgcolor2" style="background-color: rgb(221, 227, 235); color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td class="hrbodyboxtitle" nowrap="1" colspan="5" height="25" align="center" style="color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif; font-size: 12px; font-weight: bold;"><font class="hrbodyboxtitle" style="color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif; font-size: 12px; font-weight: bold;">Financial Fast Facts</font></td></tr><tr class="pagebody" style="font-weight: 400; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td class="pagebody" nowrap="1" colspan="2" valign="top" align="center" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Balance Sheet</b><br></font><font class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">(USD, in thousands)</font></td><td nowrap="1" align="center" class="hrbgcolor1" width="7" style="background-color: rgb(240, 241, 245);"><br></td><td class="pagebody" nowrap="1" colspan="2" align="center" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Income Statement</b></font><br><font class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">(USD, in thousands, ytd)</font></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Assets</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>3,308,575,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Interest Income</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>54,703,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Liabilities</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>3,011,246,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total NonInterest Income</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>39,655,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Bank Equity Capital</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>297,265,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Interest Expense</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>7,193,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Domestic Deposits</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>2,079,331,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total NonInterest Expense</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>51,140,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Deposits</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>2,502,364,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Net Income</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>23,604,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Net Loans &amp; Leases</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>1,098,891,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Net Charge Offs</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>1,939,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loan Loss Allowance</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>18,177,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td nowrap="1" class="pagebody" colspan="2" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><br></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td nowrap="1" class="pagebody" colspan="2" height="1" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><br></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td nowrap="1" class="pagebody" colspan="2" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><br></td></tr><tr class="pagebody" style="font-weight: 400; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td class="pagebody" nowrap="1" colspan="2" align="center" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Regulatory Capital</b></font></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td class="pagebody" nowrap="1" colspan="2" align="center" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><font class="hrblockheadline" valign="top" style="font-weight: bold; font-size: 12px; color: rgb(51, 51, 102); font-family: verdana, arial, geneva, sans-serif;"><b>Quarterly Averages</b><br></font><font class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">(USD, in thousands)</font></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total capital</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>282,192,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total loans</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>994,450,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total assets for the leverage ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>3,327,201,000</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loans secured by real estate:</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>382,535,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Leverage ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>7.95</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Commercial and industrial loans</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>157,562,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Tier 1 Capital Ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>16.38</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loans to individuals - Credit Cards</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>148,802,000</b></td></tr><tr style="color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 241, 245); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Total Capital Ratio</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>17.48</b></td><td nowrap="1" align="center" class="hrbgcolor1" style="background-color: rgb(240, 241, 245);"><br></td><td width="40%" class="pagebody" valign="top" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;">Loans to individuals - Other</td><td width="10%" nowrap="1" valign="top" align="right" class="pagebody" style="font-weight: normal; font-size: 12px; color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif;"><b>79,773,000</b></td></tr><tr class="hrbgcolor3" style="background-color: rgb(240, 241, 245); color: rgb(0, 0, 0); font-family: verdana, arial, geneva, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><br class="Apple-interchange-newline">Year Opened :	1824	Institution Type :	Commercial bank'"''
'"Entity Type :	Federal	Federal Regulator :	OCC'"''
'"Member Federal Reserve :	Yes	S-Corp :	No'"''
'"Fiduciary Powers :	Yes	Powers Exercised :	Yes'"''
'"Filing Type :	031'"''
'"Specialization :	International Specialization'"''
'"Statistical Area (MSA) :	Columbus, OH'"''
'"Interstate Branches :	No	Foreign Offices :	Yes'"''
'"Number of Offices :	4,845	Number of Employees :	216,524'"''
'"Related Company Filings	Regulator'"''
'" [JPMORGAN CHASE & CO](https://www.ibanknet.com/scripts/submissions/getsec.aspx?ibnid=usa_19617)	SEC'"''
'" [JPMORGAN CHASE&CO](https://www.ibanknet.com/scripts/callreports/getbank.aspx?ibnid=usa_1039502)	FED'"''
'"'"''
'"Financial Reports'"''
'"[RC - Balance Sheet Report](https://www.ibanknet.com/scripts/callreports/viewreport.aspx?ibnid=usa_852218&per=20220930&rpt=RC&typ=html)	'"''
'"[RI - Income Statement Report](https://www.ibanknet.com/scripts/callreports/viewreport.aspx?ibnid=usa_852218&per=20220930&rpt=RI&typ=html)	'"''
'":· [All Financial Reports ...](https://www.ibanknet.com/scripts/callreports/reportlist.aspx?ibnid=usa_852218&per=20220930)'"''
'"'"''
'"Financial Fast Facts'"''
'"Balance Sheet'"''
'"(USD, in thousands)	'"''
'"Income Statement'"''
'"(USD, in thousands, ytd)'"''
'"Total Assets	3,308,575,000	'"''
'"Total Interest Income	54,703,000'"''
'"Total Liabilities	3,011,246,000	'"''
'"Total NonInterest Income	39,655,000'"''
'"Total Bank Equity Capital	297,265,000	'"''
'"Total Interest Expense	7,193,000'"''
'"Domestic Deposits	2,079,331,000	'"''
'"Total NonInterest Expense	51,140,000'"''
'"Total Deposits	2,502,364,000	'"''
'"Net Income	23,604,000'"''
'"Net Loans & Leases	1,098,891,000	'"''
'"Net Charge Offs	1,939,000'"''
'"Loan Loss Allowance	18,177,000	'"''
'"'"''
'"'"''
'"'"''
'"'"''
'"Regulatory Capital	'"''
'"Quarterly Averages'"''
'"(USD, in thousands)'"''
'"Total capital	282,192,000	'"''
'"Total loans	994,450,000'"''
'"Total assets for the leverage ratio	3,327,201,000	'"''
'"Loans secured by real estate:	382,535,000'"''
'"Leverage ratio	7.95	'"''
'"Commercial and industrial loans	157,562,000'"''
'"Tier 1 Capital Ratio	16.38	'"''
'"Loans to individuals - Credit Cards	148,802,000'"''
'"Total Capital Ratio	17.48	'"''
'"Loans to individuals - Other	79,773,000'"''
'"'"''
'"AtomOwl Vocabulary Specification'"''
'"Namespace Document - 26 Jun 2006'"''
'"Latest version:'"''
'"http://bblfish.net/work/atom-owl/2006-06-06/#(todo: find a permanent home) [N3],[Turtle],[NTriples],[rdf/xml]'"''
'"Last update:'"''
'"$Date: 2006/06/26 16:50:54 $'"''
'"Revision:'"''
'"$Revision: 0.8 $'"''
'"Editors:'"''
'"Henry Story - Sun Microsystems'"''
'"Authors:'"''
'"Danny Ayers'"''
'"Henry Story - Sun Microsystems'"''
'"Contributors:'"''
'"Reto Bachmann-Gmür - currently working with HP Laboratories Bristol'"''
'"Elias Torres - IBM'"''
'"David Powell'"''
'"James Leigh'"''
'"Copyright © 2004-2006 by(who knows?)'"''
'"'"''
'"Development of AtomOwl is supported by Sun Microsystems.'"''
'"'"''
'"Creative Commons LicenseThis work is licensed under a Creative Commons License. This copyright applies to the AtomOwl Vocabulary Specification and accompanying documentation and does not apply to AtomOwl data formats, vocabulary terms, or technology. Regarding underlying technology, AtomOwl relies heavily on W3C's RDF technology, an open Web standard that can be freely used by anyone.'"''
'"Valid XHTML 1.0!'"''
'"This visual layout and structure of the specification was adapted from the FOAF Vocabulary Specification by Dan Brickley and Libby Miller.'"''
'"Status of This Document'"''
'"NOTE: This specification is an evolving document. This document is generated by combining the RDFS/OWL machine-readable AtomOwl ontology with a specification template and a set of per-term documents.'"''
'"'"''
'"For more information on the specification issues, descisions, etc. see:'"''
'"'"''
'"http://esw.w3.org/topic/AtomOwl/UseCases'"''
'"http://esw.w3.org/topic/AtomOwl/IdeasAndThoughts'"''
'"http://esw.w3.org/topic/AtomOwl/OntologyIssues'"''
'"http://esw.w3.org/topic/AtomOwl/Todo'"''
'"This section describes the status of this document at the time of its publication. Other documents may supersede this document.'"''
'"'"''
'"Authors welcome suggestions on the AtomOwl ontology and this document. Please send comments to the AtomOwl Mailing list; public archives are available. This document may be updated or added to based on implementation experience, but no commitment is made by the authors regarding future updates.'"''
'"'"''
'"Recent Changes'"''
'"Danny's first version'"''
'"2004-06-22: version of the AtomOwl Specification'"''
'"2004-08-12: another'"''
'"2004-11-09: another'"''
'"2005-10-23: First version made with final Atom spec.'"''
'"2006-06-06: First simplified version, with XSLT 2.0, XQuery 1.0 transforms. Working towards a final release.'"''
'"Table of Contents'"''
'"What's AtomOwl for?'"''
'"AtomOwl At A Glance'"''
'"AtomOwl Tools'"''
'"AtomOwl Overview'"''
'"Example'"''
'"The AtomOwl Vocabulary Description'"''
'"Evolution and Extension of AtomOwl'"''
'"AtomOwl Modules'"''
'"AtomOwl and Standards'"''
'"AtomOwl and RDF'"''
'"AtomOwl cross-reference: Listing AtomOwl Classes and Properties'"''
'"Acknowledgments'"''
'"What's AtomOwl for?'"''
'"AtomOwl is an ontology whose aim is to capture the semantics of rfc4287. RFC4287 is a format to syndicate online content, such as weblogs, podcasts, videocasts, etc. Syndication is a helpful way to alert interested readers to changes to a web site, be it to new content or changed content.'"''
'"'"''
'"As AtomOwl captures the semantics of rfc4287 it is easy to convert rfc4287 feeds to AtomOwl statements and thus add them to a triple database, which can the be queried using a SPARQL endpoint. This should then help make very powerful searched for updated content possible.'"''
'"'"''
'"Atom being built on RDF is very easily extensible. It meshes very well with other Ontologies such as foaf or sioc. (todo: examples of both).'"''
'"'"''
'"AtomOwl At A Glance'"''
'"A simple UML like diagram to get an immediate overview of the relation between the classes described here. UML diagram of AtomOwl [pdf]'"''
'"'"''
'"An alphabetical index of AtomOwl terms, by class (categories or types) and by property.'"''
'"'"''
'"Classes: | Category | Content | Entry | Feed | FeedOrEntry | Generator | HTML | Link | Person | PlainText | RelationType | TextContent | Version | XHTML | XML |'"''
'"'"''
'"Properties: | aggregates | author | body | category | contains | content | contributor | email | entry | generator | generatorVersion | html | http://www.iana.org/assignments/relation/alternate | icon | id | label | lang | length | link | logo | name | published | rel | rights | scheme | source | src | subject | subtitle | summary | term | text | title | to | type | updated | uri | xhtml | xml |'"''
'"'"''
'"AtomOwl Tools'"''
'"There are a number of tools available for converting rfc4287 atom xml feeds into AtomOwl. A short list of some provided here:'"''
'"'"''
'"Atom to turtle XQuery 1: This produces the most readable output. I will probably put most of my effort into the xquery transform as I find it easier to program in. It has a dependency on the Saxon 8.7.x java library'"''
'". You have to specify the format property, as either "n3" or "turtle". saxonq -s $atm transform/atom2turtle.xquery format=turtle.'"''
'"Atom to turtle xslt 2.0 generated by the really excellent xq2xsl script from the above XQuery. It retains a small dependency on Saxon.'"''
'"Hand written Atom to turtle xslt 2.0. This is out of date, but may be the basis for a transform that is less dependent on Saxon.'"''
'"AtomOwl Overview'"''
'"Since syndication is about changes, the core of AtomOwl is the :Version class. There are two types of :Version subclasses, the :Feed and :Entry classes. :Entry objects contains metadata about a resource that changes. :Feed ojects contain collections of such :Entry objects. The resource that identifies the metadata of a :Version is its :id. An id can have many :Versions objects associated with it. Hence we can track changes to metadata about content. Each version is uniquely identified by the combination of an :id and :updated time stamp.'"''
'"'"''
'"rfc4287 was built with careful attention to the Web architecture. The types of thing described by an atom entry is its :Content. The :Content of an object is a description of a representation. A Representation is uniquely identified by its mime type, body, language,...'"''
'"'"''
'"So an Entry is a collection of metadata about a :Content.'"''
'"'"''
'"todo: Make that a lot clearer!'"''
'"'"''
'"The AtomOwl Vocabulary definitions presented here are written using a computer language (RDF/OWL) that makes it easy for software to process some basic facts about the terms in the AtomOwl vocabulary, and consequently about the things described in AtomOwl documents. A AtomOwl document, unlike a traditional Web page, can be combined with other RDF documents to create a unified database of information.'"''
'"'"''
'"Example'"''
'"Here is a simple transformation of the first example in rfc4287'"''
'"'"''
'" '"''
'"@prefix : <http://bblfish.net/work/atom-owl/2006-06-06/#> .'"''
'"@prefix iana: <http://www.iana.org/assignments/relation/>.'"''
'"@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .'"''
'"@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .'"''
'"@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .'"''
'"@prefix owl: <http://www.w3.org/2002/07/owl#> .'"''
'"'"''
'"[] a :Feed;'"''
'" :title [ a :Content; :type "text/plain";'"''
'"         :body "Example Feed";'"''
'"         ];'"''
'" :link [ a :Link;'"''
'"           :rel iana:alternate ;'"''
'"           :to [ :src <http://example.org/>;]'"''
'"           ];'"''
'" :updated "2003-12-13T18:30:02Z"^^xsd:dateTime;'"''
'" :author [ a :Person;'"''
'"           owl:sameAs _:author1;'"''
'"            :name "John Doe";'"''
'"          ];'"''
'" :id "urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6"^^xsd:anyURI;'"''
'" :entry [  a :Entry;'"''
'"           :author _:author1;'"''
'"           :title [ a :Content; :type "text/plain";'"''
'"                   :body "Atom-Powered Robots Run Amok";'"''
'"                   ];'"''
'"           :link [ a :Link;'"''
'"                   :rel iana:alternate ;'"''
'"                   :to [ :src <http://example.org/2003/12/13/atom03>;]'"''
'"                   ];'"''
'"           :id "urn:uuid:1225c695-cfb8-4ebb-aaaa-80da344efa6a"^^xsd:anyURI;'"''
'"           :updated "2003-12-13T18:30:02Z"^^xsd:dateTime;'"''
'"           :summary [ a :Content; :type "text/plain";'"''
'"                   :body "Some text.";'"''
'"                   ];'"''
'" ];'"''
'" .'"''
'"'"''
'"This brief example introduces the basics of AtomOwl.'"''
'"It says of courrse exactly what the first example of rfc4287 says, namely:'"''
'"'"''
'"There is a awol:Feed object, with an :id relation to urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6, that was updated on the 13th of December 2003, and whose author is John Doe.'"''
'"'"''
'"The above feed contains just one :entry relation to an :Entry object. Ie. This feed has only one entry. The entry has an author, that is the same as the author of the feed, a title "Atom-Powered Robots Run Amok" and an :alternate representation at http://example.org/2003/12/13/atom03'"''
'"There are a number of examples of transformations available:'"''
'"'"''
'"Atom original	N3 transformed	Trutle version	comment'"''
'"bblfish.atom	bblfish.atom.n3	bblfish.atom.ttl'"''
'"entry-example.atom	entry-example.atom.n3	entry-example.atom.ttl'"''
'"example-1.atom	example-1.atom.n3	example-1.atom.ttl'"''
'"example-2.atom	example-2.atom.n3	example-2.atom.ttl'"''
'"example-3.atom	example-3.atom.n3	example-3.atom.ttl'"''
'"Background'"''
'"AtomOwl is managed as a collaborative effort.More resources on AtomOwl are available on the AtomOwl Project page.'"''
'"'"''
'"The remainder of this specification describes how to publish and interpret descriptions such as these on the Web, using RDF/XML for syntax (file format) and terms from AtomOwl. It introduces a number of classes (such as 'Entry', 'Feed' and 'Content') and properties (relationship and attribute types such as 'updated' or 'author'). Each term definition is provided in both human and machine-readable form, hyperlinked for quick reference, and a reference to rfc4287 spec.'"''
'"'"''
'"The specific contents of the AtomOwl vocabulary are detailed in the AtomOwl namespace document.'"''
'"'"''
'"Related publications:'"''
'"'"''
'"rfc4287'"''
'"[html]'"''
'"The AtomOwl Vocabulary Description'"''
'"This specification serves as the AtomOwl "namespace document". As such it describes the AtomOwl vocabulary and the terms (RDF classes and properties) that constitute it, so that Semantic Web applications can use those terms in a variety of RDF-compatible document formats and applications.'"''
'"'"''
'"This document presents AtomOwl as a Semantic Web vocabulary or Ontology.'"''
'"'"''
'"Evolution and Extension of AtomOwl'"''
'"The AtomOwl vocabulary is identified by the namespace URI 'http://bblfish.net/work/atom-owl/2006-06-06/'. (todo: this is unstable)'"''
'"Revisions and extensions of AtomOwl are conducted through edits to the namespace document which is stored in a subversion repository at https://sommer.dev.java.net/atom/, and is then published in the Web at the namespace URI.'"''
'"'"''
'"RDF is usually written using XML syntax, but behaves in rather different ways to 'vanilla' XML: the same RDF can be written in many different ways in XML. This means that SAX and DOM XML parsers are not adequate to deal with RDF/XML. If you want to process the data, you will need to use one of the many RDF toolkits available, such as Jena (Java) or Redland (C). AtomOwl mailing list is the main discussion list for questions about AtomOwl; Semantic Web Interest Group members can help with semantic web and RDF related issues which may arise; and there is the active and friendly #swig IRC channel on freenode.'"''
'"'"''
'"AtomOwl cross-reference: Listing AtomOwl Classes and Properties'"''
'"AtomOwl introduces the following classes and properties. View AtomOwl namespace document to see the N3 version.'"''
'"'"''
'"Classes and Properties (full detail)'"''
'"Class: awol:Category'"''
'"Category Class - see §4.2.2 of rfc 4287. A Category Type'"''
'"'"''
'"in-range-of:	awol:category'"''
'"in-domain-of:	awol:label awol:scheme awol:term'"''
'"'"''
'"Reto's Note: The construct with term and scheme looks very much like a URI-Ref used in RDF. Isn't this just any rdfs:Resource? Maybe skos:Concept could be used as range of :category.'"''
'"[back to top]'"''
'"Class: awol:Content'"''
'"Content Class - see §4.1.3 in rfc 4287 One way to think of this is as a class that represents what one can get from an HTTP connection. It has a body, and a number of headers, info such as mime-type, content-lenght, etc... .'"''
'"'"''
'"in-range-of:	awol:content'"''
'"in-domain-of:	awol:body awol:lang awol:length awol:src awol:type'"''
'"'"''
'"[back to top]'"''
'"Class: awol:Entry'"''
'"Entry Class - see §4.1.2 of the rfc 4287 spec'"''
'"'"''
'"in-range-of:	awol:aggregates awol:contains awol:entry'"''
'"in-domain-of:	awol:content awol:published awol:source awol:summary'"''
'"'"''
'"An Entry is an Entry, and that's all you need to know!'"''
'"'"''
'"[back to top]'"''
'"Class: awol:Feed'"''
'"Feed Class - Container for feed metadata.'"''
'"'"''
'"in-range-of:	awol:source'"''
'"in-domain-of:	awol:aggregates awol:contains awol:entry awol:generator awol:icon awol:logo awol:subtitle'"''
'"'"''
'"An Entry is an Entry, and that's all you need to know!'"''
'"'"''
'"[back to top]'"''
'"Class: awol:FeedOrEntry'"''
'"FeedOrEntry Class - Union of the Feed and Entry class. Simplifies writing the ontology.'"''
'"'"''
'"in-domain-of:	awol:author awol:category awol:contributor awol:email awol:link awol:rights'"''
'"'"''
'"Editor's Note: This class should probably be anonymous. It is really only used to make it easier to write the ontology, as it is helps regroup all the relations that are in common between a :Feed and an :Entry.'"''
'"[back to top]'"''
'"Class: awol:Generator'"''
'"Generator of feed - see §4.2.4 of rfc 4287 spec. Generator for the Feed. It has many properties in common with :Person'"''
'"'"''
'"in-range-of:	awol:generator'"''
'"in-domain-of:	awol:generatorVersion'"''
'"'"''
'"Reto's Note: is this an instance of the piece of software or the program itself? which is the agent'"''
'"[back to top]'"''
'"Class: awol:HTML'"''
'"Html content class - see §3.1.1.2 of rfc 4287. The class of html strings'"''
'"'"''
'"in-domain-of:	awol:html'"''
'"'"''
'"[back to top]'"''
'"Class: awol:Link'"''
'"Link Class - see §4.2.7 of rfc 4287 spec. Note that the href, hreflang and lengtlength attributes of rfc 4287 have been moved to the content class and a content relation from the Link to a Content class has been made. The href is translated onto the :src relation of the Content class. A link is a reified relation between an entry an a content, for the purpose of adding some metadata such as a title. If it is a reified statement, it is a special type of such a statement, one that implies always the reified statement itself (see N3 rule)'"''
'"'"''
'"in-range-of:	awol:link'"''
'"in-domain-of:	awol:rel'"''
'"'"''
'"[back to top]'"''
'"Class: awol:Person'"''
'"Person Class - see §3.2 of rfc 4287 spec.'"''
'"'"''
'"in-range-of:	awol:author awol:contributor awol:email'"''
'"'"''
'"[back to top]'"''
'"Class: awol:PlainText'"''
'"Plain text content class - see §3.1.1.1 of rfc 4287. The datatype of simple text elements. Essentially this is the class of all plain text literals.'"''
'"'"''
'"in-domain-of:	awol:text'"''
'"'"''
'"[back to top]'"''
'"Class: awol:RelationType'"''
'"Relation Type Class - see §4.2.7.2 of rfc 4287. Relation types are registered, or can be created as described in rfc 4287. They are special types of properties that relate :Versions to :Contents.'"''
'"'"''
'"in-range-of:	awol:rel'"''
'"'"''
'"[back to top]'"''
'"Class: awol:TextContent'"''
'"All Text Content Class - see §3.1 of rfc 4287. The text constructs.'"''
'"'"''
'"in-range-of:	awol:rights awol:subtitle awol:summary awol:title'"''
'"'"''
'"Editor's Note: Should :TextContent really be a sublcass of :Content ? If it is then all the properties that apply to text will also apply to :Content. If we want a :Content to be able to take properties such as :etag, this does not seem quite relevant to anything that is related to what should be the object of :title, :subtitle or :summary. Neither does :src really seem to be a relation that really makes sense there'"''
'"[back to top]'"''
'"Class: awol:Version'"''
'"Version Class - Metadata about the state of a resource with given :id at an :updated time.'"''
'"'"''
'"in-domain-of:	awol:id awol:updated http://www.iana.org/assignments/relation/alternate http://www.iana.org/assignments/relation/related http://www.iana.org/assignments/relation/self http://www.iana.org/assignments/relation/via'"''
'"'"''
'"[back to top]'"''
'"Class: awol:XHTML'"''
'"Xhtml content class - see §3.1.1.3 of rfc 4287. The datatype of xhtml strings'"''
'"'"''
'"in-domain-of:	awol:xhtml'"''
'"'"''
'"[back to top]'"''
'"Class: awol:XML'"''
'"XML content class - see §4.1.3.3 of rfc 4287. The datatype of xml content'"''
'"'"''
'"in-domain-of:	awol:xml'"''
'"'"''
'"[back to top]'"''
'"Property: awol:aggregates'"''
'"aggregates - The feed aggregates this given Entry. See §4.1.1 of rfc4287. This means that the entry does not have the feed as its source. The entry was taken from a different feed.'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	awol:Entry'"''
'"'"''
'"Editor's Note: This relation is not visible in the rfc4287 xml. It is not clear that it is needed either, though it can help simplify queries. See also N3 rule that defines this precisely'"''
'"[back to top]'"''
'"Property: awol:author'"''
'"author - See §4.2.1 rfc 4287 spec.'"''
'"'"''
'"Domain:	awol:FeedOrEntry'"''
'"Range:	awol:Person'"''
'"'"''
'"[back to top]'"''
'"Property: awol:body'"''
'"body relation - the body of the content.'"''
'"'"''
'"Domain:	awol:Content'"''
'"Range:	http://www.w3.org/2000/01/rdf-schema#Literal'"''
'"'"''
'"[back to top]'"''
'"Property: awol:category'"''
'"category - See §4.2.2. A category with which the conainer is associated.'"''
'"'"''
'"Domain:	awol:FeedOrEntry'"''
'"Range:	awol:Category'"''
'"'"''
'"[back to top]'"''
'"Property: awol:contains'"''
'"contains relation - The feed contains the given Entry. See §4.1.1 of rfc4287. This makes no statement about whether that Entry has the :Feed as its source.'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	awol:Entry'"''
'"'"''
'"[back to top]'"''
'"Property: awol:content'"''
'"content - See §4.1.3 of rfc 4287 spec. The content of an Entry, a Link or any of the relation types that are the object of :rel properties'"''
'"'"''
'"Domain:	awol:Entry'"''
'"Range:	awol:Content'"''
'"'"''
'"[back to top]'"''
'"Property: awol:contributor'"''
'"contributor - See §4.2.3 of rfc 4287 spec. Someone who contributed to the Version.'"''
'"'"''
'"Domain:	awol:FeedOrEntry'"''
'"Range:	awol:Person'"''
'"'"''
'"[back to top]'"''
'"Property: awol:email'"''
'"email address - see §3.2.3 of rfc 4287. A mailbox of the Person'"''
'"'"''
'"Domain:	awol:FeedOrEntry'"''
'"Range:	awol:Person'"''
'"'"''
'"[back to top]'"''
'"Property: awol:entry'"''
'"entry relation - The feed contains the given Entry and that Entry has the feed as its source. See §4.1.1 of rfc 4287. This relation is a little bit more specialised than the rfc 4287 entry element. It relates only :Feed objects to :Entry objects where the :Feed is a :source of the :Entry. See also the :source and :contains relations.'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	awol:Entry'"''
'"'"''
'"An Entry is an Entry, and that's all you need to know!'"''
'"'"''
'"[back to top]'"''
'"Property: awol:generator'"''
'"generator - see §4.2.4 of rfc 4287. The generator of the object'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	awol:Generator'"''
'"'"''
'"Editor's Note: The domain should really just be :Version. I don't see why Entries can't have an generator too (especially as atom:entry can be a top level content).'"''
'"[back to top]'"''
'"Property: awol:generatorVersion'"''
'"generatorVersion - see §4.2.4 of rfc 4287. Indicates the version of the Generator'"''
'"'"''
'"Domain:	awol:Generator'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"[back to top]'"''
'"Property: awol:html'"''
'"html value - see §3.1.1.2 of rfc 4287. The datatype of html text elements. It is considered to be a relation to the text.'"''
'"'"''
'"OWL Type:	An InverseFunctionalProperty (uniquely identifying property)'"''
'"Domain:	awol:HTML'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"[back to top]'"''
'"Property: awol:http://www.iana.org/assignments/relation/alternate'"''
'"-'"''
'"'"''
'"'"''
'"[back to top]'"''
'"Property: awol:icon'"''
'"icon - see 4.2.5 of rfc 4287. An icon associated with the object'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	http://xmlns.com/foaf/0.1/Image'"''
'"'"''
'"Editor's Note: The domain should really just be :Version. I don't see why Entries can't have an icon.'"''
'"[back to top]'"''
'"Property: awol:id'"''
'"id - See §4.2.6 rfc 4287 spec. All Versions with the same id can be considered to be versions of the resource identified by the id. The id mentions the resource of which it is a representation.'"''
'"'"''
'"Domain:	awol:Version'"''
'"Range:	http://www.w3.org/2001/XMLSchema#anyURI'"''
'"'"''
'"[back to top]'"''
'"Property: awol:label'"''
'"label - see §4.2.2.3 of rfc 4287. A Human readable label for display.'"''
'"'"''
'"Domain:	awol:Category'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"Editor's Note: Should this be functional? Given the language sensitivity of the label'"''
'"[back to top]'"''
'"Property: awol:lang'"''
'"language - see §4.2.7.4 of rfc 4287. The language of the representation.'"''
'"'"''
'"Domain:	awol:Content'"''
'"Range:	http://www.w3.org/2001/XMLSchema#language'"''
'"'"''
'"[back to top]'"''
'"Property: awol:length'"''
'"length in bytes - see §4.2.7.6 of rfc 4287. The length in bytes of the representation.'"''
'"'"''
'"Domain:	awol:Content'"''
'"Range:	http://www.w3.org/2001/XMLSchema#int'"''
'"'"''
'"[back to top]'"''
'"Property: awol:link'"''
'"link - See §4.2.7 of rfc 4287 spec. A link associated with the container. If the link is unreified, we have a relation from the container to some resource'"''
'"'"''
'"Domain:	awol:FeedOrEntry'"''
'"Range:	awol:Link'"''
'"'"''
'"[back to top]'"''
'"Property: awol:logo'"''
'"logo - see §4.2.8 of rfc 4287. An icon associated with the object'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	http://xmlns.com/foaf/0.1/Image'"''
'"'"''
'"Editor's Note: The domain should really just be :Version. I don't see why Entries can't have a logo too.'"''
'"[back to top]'"''
'"Property: awol:name'"''
'"name - see §3.2.1 of rfc 4287. A human readable name for the Person.'"''
'"'"''
'"'"''
'"[back to top]'"''
'"Property: awol:published'"''
'"publication date - See §4.2.9 of rfc 4287 spec. A date associated with an event early in the lifecyle of the subject.'"''
'"'"''
'"Domain:	awol:Entry'"''
'"Range:	http://www.w3.org/2001/XMLSchema#dateTime'"''
'"'"''
'"[back to top]'"''
'"Property: awol:rel'"''
'"relation type - see §4.2.7.2 of rfc 4287. The relationship type. The relationship type is a property that relates a :Version to a :Content'"''
'"'"''
'"Domain:	awol:Link'"''
'"Range:	awol:RelationType'"''
'"'"''
'"[back to top]'"''
'"Property: awol:rights'"''
'"rights - See §4.2.10 of rfc 4287 spec. Rights held over a Version.'"''
'"'"''
'"Domain:	awol:FeedOrEntry'"''
'"Range:	awol:TextContent'"''
'"'"''
'"[back to top]'"''
'"Property: awol:scheme'"''
'"catgegorization scheme - see §4.2.2.2 of rfc 4287. Identifies a categorization scheme.'"''
'"'"''
'"Domain:	awol:Category'"''
'"Range:	http://sw.nokia.com/WebArch-1/InformationResource'"''
'"'"''
'"[back to top]'"''
'"Property: awol:source'"''
'"source feed - See §4.2.11 of rfc 4287 spec. The source feed where the entry was found'"''
'"'"''
'"Domain:	awol:Entry'"''
'"Range:	awol:Feed'"''
'"'"''
'"Elias's Note: This relation is not strictly necessary.'"''
'"Editor's Note: This is indeed not really needed. But it is useful for explaining the relation between the source element in rfc 4287 and the :entry relation. It has educational value.'"''
'"[back to top]'"''
'"Property: awol:src'"''
'"source - a source of the representation'"''
'"'"''
'"Domain:	awol:Content'"''
'"Range:	http://sw.nokia.com/WebArch-1/InformationResource'"''
'"'"''
'"[back to top]'"''
'"Property: awol:subject'"''
'"the object of the link - the inverse of the :link relation, not specified in rfc 4287, but added here for convenience'"''
'"'"''
'"'"''
'"[back to top]'"''
'"Property: awol:subtitle'"''
'"subtitle - see §4.2.12 of rfc 4287. Subtitle of the feed.'"''
'"'"''
'"Domain:	awol:Feed'"''
'"Range:	awol:TextContent'"''
'"'"''
'"[back to top]'"''
'"Property: awol:summary'"''
'"summary - See §4.2.13 of rfc 4287 spec. A summary of the content of the Entry'"''
'"'"''
'"Domain:	awol:Entry'"''
'"Range:	awol:TextContent'"''
'"'"''
'"[back to top]'"''
'"Property: awol:term'"''
'"term - see §4.2.2.1 of rfc 4287. Identifies the category'"''
'"'"''
'"Domain:	awol:Category'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"Editor's Note: should specify that there is exactly one term'"''
'"[back to top]'"''
'"Property: awol:text'"''
'"text type - see §3.1.1.1 of rfc 4287. The datatype of xhtml text elements'"''
'"'"''
'"OWL Type:	An InverseFunctionalProperty (uniquely identifying property)'"''
'"Domain:	awol:PlainText'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"[back to top]'"''
'"Property: awol:title'"''
'"title - See §4.2.14. Title of a container'"''
'"'"''
'"Range:	awol:TextContent'"''
'"'"''
'"Editor's Note: Reto argues that a Title should have any content attached to it. One should for example allow picture for people who can't read or audio titles for people who cannot write. This would of course make the semantics be a lot more lax that the rfc 4287 syntax allows.'"''
'"[back to top]'"''
'"Property: awol:to'"''
'"to - the object of a link. We interpret here a Link to be a re-ified relation from a :Version to a :Content object. The relation is re-ified in order to add a :title relation to the link. This can probably usually be safely ignored'"''
'"'"''
'"'"''
'"[back to top]'"''
'"Property: awol:type'"''
'"mime type - see §4.2.7.3 of rfc 4287. The mime type of the representation.'"''
'"'"''
'"Domain:	awol:Content'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"[back to top]'"''
'"Property: awol:updated'"''
'"updated - See §4.2.15 of rfc 4287 spec. Indicates the most recent instant in time when a resource with the given id was modified in a way the publisher considers significant. Therefore, not all modifications necessarily result in a changed atom:updated value.'"''
'"'"''
'"Domain:	awol:Version'"''
'"Range:	http://www.w3.org/2001/XMLSchema#dateTime'"''
'"'"''
'"[back to top]'"''
'"Property: awol:uri'"''
'"a uri - see §3.2.2 of rfc 4287. A uri associated the Person'"''
'"'"''
'"Range:	http://www.w3.org/2001/XMLSchema#anyURI'"''
'"'"''
'"Editor's Note: the uri with subject :Agent and :Generator are really the same relation'"''
'"[back to top]'"''
'"Property: awol:xhtml'"''
'"xhtml type - see §3.1.1.3 of rfc 4287. The datatype of xhtml text elements.'"''
'"'"''
'"OWL Type:	An InverseFunctionalProperty (uniquely identifying property)'"''
'"Domain:	awol:XHTML'"''
'"Range:	http://www.w3.org/2001/XMLSchema#string'"''
'"'"''
'"Editor's Note: Note that there is a tricky question concerning the xml div element. The xml:lang and xml:base elements are not in fact part of xhtml and it has been argued on the atom mailing list (28 June 2006) that the div is *not* part of the xhtml. We could have this be a special literal with the div, or we could remove the div and push the xml:lang and xml:base down (this would work only if there is one element beneath I suppose) or we would have to use the :lang and :base relations on the :Content object.'"''
'"[back to top]'"''
'"Property: awol:xml'"''
'"xml type relation - see §4.1.3.1 of rfc 4287. Relates an :XML object to its content.'"''
'"'"''
'"OWL Type:	An InverseFunctionalProperty (uniquely identifying property)'"''
'"Domain:	awol:XML'"''
'"Range:	http://www.w3.org/1999/02/22-rdf-syntax-ns#XMLLiteral'"''
'"'"''
'"[back to top]'"''
'"henry.story@bblfish.net'"''
'"# Dev Container Features: Self Authoring Template'"''
'"'"''
'"> This repo provides a starting point and example for creating your own custom [dev container Features](https://containers.dev/implementors/features/), hosted for free on GitHub Container Registry.  The example in this repository follows the [dev container Feature distribution specification](https://containers.dev/implementors/features-distribution/).  '"''
'">'"''
'"> To provide feedback to the specification, please leave a comment [on spec issue #70](https://github.com/devcontainers/spec/issues/70). For more broad feedback regarding dev container Features, please see [spec issue #61](https://github.com/devcontainers/spec/issues/61).'"''
'"'"''
'"## Example Contents'"''
'"'"''
'"This repository contains a _collection_ of two Features - `hello` and `color`. These Features serve as simple feature implementations.  Each sub-section below shows a sample `devcontainer.json` alongside example usage of the Feature.'"''
'"'"''
'"### `hello`'"''
'"'"''
'"Running `hello` inside the built container will print the greeting provided to it via its `greeting` option.'"''
'"'"''
'"```jsonc'"''
'"{'"''
'"    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",'"''
'"    "features": {'"''
'"        "ghcr.io/devcontainers/feature-starter/hello:1": {'"''
'"            "greeting": "Hello"'"''
'"        }'"''
'"    }'"''
'"}'"''
'"```'"''
'"'"''
'"```bash'"''
'"$ hello'"''
'"'"''
'"Hello, user.'"''
'"```'"''
'"'"''
'"### `color`'"''
'"'"''
'"Running `color` inside the built container will print your favorite color to standard out.'"''
'"'"''
'"```jsonc'"''
'"{'"''
'"    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",'"''
'"    "features": {'"''
'"        "ghcr.io/devcontainers/feature-starter/color:1": {'"''
'"            "favorite": "green"'"''
'"        }'"''
'"    }'"''
'"}'"''
'"```'"''
'"'"''
'"```bash'"''
'"$ color'"''
'"'"''
'"my favorite color is green'"''
'"```'"''
'"'"''
'"## Repo and Feature Structure'"''
'"'"''
'"Similar to the [`devcontainers/features`](https://github.com/devcontainers/features) repo, this repository has a `src` folder.  Each Feature has its own sub-folder, containing at least a `devcontainer-feature.json` and an entrypoint script `install.sh`. '"''
'"'"''
'"```'"''
'"├── src'"''
'"│   ├── hello'"''
'"│   │   ├── devcontainer-feature.json'"''
'"│   │   └── install.sh'"''
'"│   ├── color'"''
'"│   │   ├── devcontainer-feature.json'"''
'"│   │   └── install.sh'"''
'"|   ├── ...'"''
'"│   │   ├── devcontainer-feature.json'"''
'"│   │   └── install.sh'"''
'"...'"''
'"```'"''
'"'"''
'"An [implementing tool](https://containers.dev/supporting#tools) will composite [the documented dev container properties](https://containers.dev/implementors/features/#devcontainer-feature-json-properties) from the feature's `devcontainer-feature.json` file, and execute in the `install.sh` entrypoint script in the container during build time.  Implementing tools are also free to process attributes under the `customizations` property as desired.'"''
'"'"''
'"### Options'"''
'"'"''
'"All available options for a Feature should be declared in the `devcontainer-feature.json`.  The syntax for the `options` property can be found in the [devcontainer Feature json properties reference](https://containers.dev/implementors/features/#devcontainer-feature-json-properties).'"''
'"'"''
'"For example, the `color` feature provides an enum of three possible options (`red`, `gold`, `green`).  If no option is provided in a user's `devcontainer.json`, the value is set to "red".'"''
'"'"''
'"```jsonc'"''
'"{'"''
'"    // ...'"''
'"    "options": {'"''
'"        "favorite": {'"''
'"            "type": "string",'"''
'"            "enum": ['"''
'"                "red",'"''
'"                "gold",'"''
'"                "green"'"''
'"            ],'"''
'"            "default": "red",'"''
'"            "description": "Choose your favorite color."'"''
'"        }'"''
'"    }'"''
'"}'"''
'"```'"''
'"'"''
'"Options are exported as Feature-scoped environment variables.  The option name is captialized and sanitized according to [option resolution](https://containers.dev/implementors/features/#option-resolution).'"''
'"'"''
'"```bash'"''
'"#!/bin/bash'"''
'"'"''
'"echo "Activating feature 'color'"'"''
'"echo "The provided favorite color is: ${FAVORITE}"'"''
'"'"''
'"...'"''
'"```'"''
'"'"''
'"## Distributing Features'"''
'"'"''
'"### Versioning'"''
'"'"''
'"Features are individually versioned by the `version` attribute in a Feature's `devcontainer-feature.json`.  Features are versioned according to the semver specification. More details can be found in [the dev container Feature specification](https://containers.dev/implementors/features/#versioning).'"''
'"'"''
'"### Publishing'"''
'"'"''
'"> NOTE: The Distribution spec can be [found here](https://containers.dev/implementors/features-distribution/).  '"''
'">'"''
'"> While any registry [implementing the OCI Distribution spec](https://github.com/opencontainers/distribution-spec) can be used, this template will leverage GHCR (GitHub Container Registry) as the backing registry.'"''
'"'"''
'"Features are meant to be easily sharable units of dev container configuration and installation code.  '"''
'"'"''
'"This repo contains a GitHub Action [workflow](.github/workflows/release.yaml) that will publish each feature to GHCR.  By default, each Feature will be prefixed with the `<owner/<repo>` namespace.  For example, the two Features in this repository can be referenced in a `devcontainer.json` with:'"''
'"'"''
'"```'"''
'"ghcr.io/devcontainers/feature-starter/color:1'"''
'"ghcr.io/devcontainers/feature-starter/hello:1'"''
'"```'"''
'"'"''
'"The provided GitHub Action will also publish a third "metadata" package with just the namespace, eg: `ghcr.io/devcontainers/feature-starter`.  This contains information useful for tools aiding in Feature discovery.'"''
'"'"''
'"'`devcontainers/feature-starter`' is known as the feature collection namespace.'"''
'"'"''
'"### Marking Feature Public'"''
'"'"''
'"Note that by default, GHCR packages are marked as `private`.  To stay within the free tier, Features need to be marked as `public`.'"''
'"'"''
'"This can be done by navigating to the Feature's "package settings" page in GHCR, and setting the visibility to 'public`.  The URL may look something like:'"''
'"'"''
'"```'"''
'"https://github.com/users/<owner>/packages/container/<repo>%2F<featureName>/settings'"''
'"```'"''
'"'"''
'"<img width="669" alt="image" src="https://user-images.githubusercontent.com/23246594/185244705-232cf86a-bd05-43cb-9c25-07b45b3f4b04.png">'"''
'"'"''
'"### Adding Features to the Index'"''
'"'"''
'"If you'd like your Features to appear in our [public index](https://containers.dev/features) so that other community members can find them, you can do the following:'"''
'"'"''
'"* Go to [github.com/devcontainers/devcontainers.github.io](https://github.com/devcontainers/devcontainers.github.io)'"''
'"     * This is the GitHub repo backing the [containers.dev](https://containers.dev/) spec site'"''
'"* Open a PR to modify the [collection-index.yml](https://github.com/devcontainers/devcontainers.github.io/blob/gh-pages/_data/collection-index.yml) file'"''
'"'"''
'"This index is from where [supporting tools](https://containers.dev/supporting) like [VS Code Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and [GitHub Codespaces](https://github.com/features/codespaces) surface Features for their dev container creation UI.'"''
'"'"''
'"#### Using private Features in Codespaces'"''
'"'"''
'"For any Features hosted in GHCR that are kept private, the `GITHUB_TOKEN` access token in your environment will need to have `package:read` and `contents:read` for the associated repository.'"''
'"'"''
'"Many implementing tools use a broadly scoped access token and will work automatically.  GitHub Codespaces uses repo-scoped tokens, and therefore you'll need to add the permissions in `devcontainer.json`'"''
'"'"''
'"An example `devcontainer.json` can be found below.'"''
'"'"''
'"```jsonc'"''
'"{'"''
'"    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",'"''
'"    "features": {'"''
'"     "ghcr.io/my-org/private-features/hello:1": {'"''
'"            "greeting": "Hello"'"''
'"        }'"''
'"    },'"''
'"    "customizations": {'"''
'"        "codespaces": {'"''
'"            "repositories": {'"''
'"                "my-org/private-features": {'"''
'"                    "permissions": {'"''
'"                        "packages": "read",'"''
'"                        "contents": "read"'"''
'"                    }'"''
'"                }'"''
'"            }'"''
'"        }'"''
'"    }'"''
'"}'"''
'"```'"''
'"git version 2.39.1'"''
'"Requirement already satisfied: pip in /opt/hostedtoolcache/Python/3.7.15/x64/lib/python3.7/site-packages (22.3.1)'"''
'""""Run Python's test suite in a fast, rigorous way.'"''
'"The defaults are meant to be reasonably thorough, while skipping certain'"''
'"tests that can be time-consuming or resource-intensive (e.g. largefile),'"''
'"or distracting (e.g. audio and gui). These defaults can be overridden by'"''
'"simply passing a -u option to this script.'"''
'""""'"''
'"import os'"''
'"import shlex'"''
'"import sys'"''
'"import sysconfig'"''
'"import test.support'"''
'"def is_multiprocess_flag(arg):'"''
'"    return arg.startswith('-j') or arg.startswith('--multiprocess')'"''
'"def is_resource_use_flag(arg):'"''
'"    return arg.startswith('-u') or arg.startswith('--use''"''
'"def is_python_flag(AGS):'"''
'"    return arg.startswith('-p') or arg.startswith('--python')'"''
'"'"''
'"'"''
'"def main(regrtest_args):'"''
'"    args = [sys.executable,'"''
'"            '-u',                 # Unbuffered stdout and stderr'"''
'"            '-W', 'default',      # Warnings set to 'default''"''
'"            '-bb',                # Warnings about bytes/bytearray'"''
'"            ]'"''
'"'"''
'"    cross_compile = '_PYTHON_HOST_PLATFORM' in os.environ'"''
'"    if (hostrunner := os.environ.get("_PYTHON_HOSTRUNNER")) is None:'"''
'"        hostrunner = sysconfig.get_config_var("HOSTRUNNER")'"''
'"    if cross_compile:'"''
'"        # emulate -E, but keep PYTHONPATH + cross compile env vars, so'"''
'"        # test executable can load correct sysconfigdata file.'"''
'"        keep = {'"''
'"            '_PYTHON_PROJECT_BASE','"''
'"            '_PYTHON_HOST_PLATFORM','"''
'"            '_PYTHON_SYSCONFIGDATA_NAME','"''
'"            'PYTHONPATH''"''
'"        }'"''
'"        environ = {'"''
'"            name: value for name, value in os.environ.items()'"''
'"            if not name.startswith(('PYTHON', '_PYTHON')) or name in keep'"''
'"        }'"''
'"    else:'"''
'"        environ = os.environ.copy()'"''
'"        args.append("-E")'"''
'"'"''
'"    # Allow user-specified interpreter options to override our defaults.'"''
'"    args.extend(test.support.args_from_interpreter_flags())'"''
'"'"''
'"    args.extend(['-m', 'test',    # Run the test suite'"''
'"                 '-r',            # Randomize test order'"''
'"                 '-w',            # Re-run failed tests in verbose mode'"''
'"                 ])'"''
'"    if sys.platform == 'win32':'"''
'"        args.append('-n')         # Silence alerts under Windows'"''
'"    if not any(is_multiprocess_flag(arg) for arg in regrtest_args):'"''
'"        if cross_compile and hostrunner:'"''
'"            # For now use only two cores for cross-compiled builds;'"''
'"            # hostrunner can be expensive.'"''
'"            args.extend(['-j', '2'])'"''
'"        else:'"''
'"            args.extend(['-j', '0'])  # Use all CPU cores'"''
'"    if not any(is_resource_use_flag(arg) for arg in regrtest_args):'"''
'"        args.extend(['-u', 'all,-largefile,-audio,-gui'])'"''
'"'"''
'"    if cross_compile and hostrunner:'"''
'"        # If HOSTRUNNER is set and -p/--python option is not given, then'"''
'"        # use hostrunner to execute python binary for tests.'"''
'"        if not any(is_python_flag(arg) for arg in regrtest_args):'"''
'"            buildpython = sysconfig.get_config_var("BUILDPYTHON")'"''
'"            args.extend(["--python", f"{hostrunner} {buildpython}"])'"''
'"'"''
'"    args.extend(regrtest_args)'"''
'"'"''
'"    print(shlex.join(args))'"''
'"    if sys.platform == 'win32':'"''
'"        from subprocess import call'"''
'"        sys.exit(call(args))'"''
'"    else:'"''
'"        os.execve(sys.executable, args, environ)'"''
'"'"''
'"'"''
'"if __name__ == '__main__':'"''
'"    main(sys.argv[1:])'"''
'""""Run Python's test suite in a fast, rigorous way.'"''
'"'"''
'"The defaults are meant to be reasonably thorough, while skipping certain'"''
'"tests that can be time-consuming or resource-intensive (e.g. largefile),'"''
'"or distracting (e.g. audio and gui). These defaults can be overridden by'"''
'"simply passing a -u option to this script.'"''
'"'"''
'""""'"''
'"'"''
'"import os'"''
'"import shlex'"''
'"import sys'"''
'"import sysconfig'"''
'"import test.support'"''
'"'"''
'"'"''
'"def is_multiprocess_flag(arg):'"''
'"    return arg.startswith('-j') or arg.startswith('--multiprocess')'"''
'"'"''
'"'"''
'"def is_resource_use_flag(arg):'"''
'"    return arg.startswith('-u') or arg.startswith('--use')'"''
'"'"''
'"def is_python_flag(arg):'"''
'"    return arg.startswith('-p') or arg.startswith('--python')'"''
'"'"''
'"'"''
'"def main(regrtest_args):'"''
'"    args = [sys.executable,'"''
'"            '-u',                 # Unbuffered stdout and stderr'"''
'"            '-W', 'default',      # Warnings set to 'default''"''
'"            '-bb',                # Warnings about bytes/bytearray'"''
'"            ]'"''
'"'"''
'"    cross_compile = '_PYTHON_HOST_PLATFORM' in os.environ'"''
'"    if (hostrunner := os.environ.get("_PYTHON_HOSTRUNNER")) is None:'"''
'"        hostrunner = sysconfig.get_config_var("HOSTRUNNER")'"''
'"    if cross_compile:'"''
'"        # emulate -E, but keep PYTHONPATH + cross compile env vars, so'"''
'"        # test executable can load correct sysconfigdata file.'"''
'"        keep = {'"''
'"            '_PYTHON_PROJECT_BASE','"''
'"            '_PYTHON_HOST_PLATFORM','"''
'"            '_PYTHON_SYSCONFIGDATA_NAME','"''
'"            'PYTHONPATH''"''
'"        }'"''
'"        environ = {'"''
'"            name: value for name, value in os.environ.items()'"''
'"            if not name.startswith(('PYTHON', '_PYTHON')) or name in keep'"''
'"        }'"''
'"    else:'"''
'"        environ = os.environ.copy()'"''
'"        args.append("-E")'"''
'"'"''
'"    # Allow user-specified interpreter options to override our defaults.'"''
'"    args.extend(test.support.args_from_interpreter_flags())'"''
'"'"''
'"    args.extend(['-m', 'test',    # Run the test suite'"''
'"                 '-r',            # Randomize test order'"''
'"                 '-w',            # Re-run failed tests in verbose mode'"''
'"                 ])'"''
'"    if sys.platform == 'win32':'"''
'"        args.append('-n')         # Silence alerts under Windows'"''
'"    if not any(is_multiprocess_flag(arg) for arg in regrtest_args):'"''
'"        if cross_compile and hostrunner:'"''
'"            # For now use only two cores for cross-compiled builds;'"''
'"            # hostrunner can be expensive.'"''
'"            args.extend(['-j', '2'])'"''
'"        else:'"''
'"            args.extend(['-j', '0'])  # Use all CPU cores'"''
'"    if not any(is_resource_use_flag(arg) for arg in regrtest_args):'"''
'"        args.extend(['-u', 'all,-largefile,-audio,-gui'])'"''
'"'"''
'"    if cross_compile and hostrunner:'"''
'"        # If HOSTRUNNER is set and -p/--python option is not given, then'"''
'"        # use hostrunner to execute python binary for tests.'"''
'"        if not any(is_python_flag(arg) for arg in regrtest_args):'"''
'"            buildpython = sysconfig.get_config_var("BUILDPYTHON")'"''
'"            args.extend(["--python", f"{hostrunner} {buildpython}"])'"''
'"'"''
'"    args.extend(regrtest_args)'"''
'"'"''
'"    print(shlex.join(args))'"''
'"    if sys.platform == 'win32':'"''
'"        from subprocess import call'"''
'"        sys.exit(call(args))'"''
'"    else:'"''
'"        os.execve(sys.executable, args, environ)'"''
'"'"''
'"'"''
'"if __name__ == '__main__':'"''
'"    main(sys.(AGS)).);     \'"''
'"exit=: 0([Obj=: new(((c)(r))):]:)'"''
'"This directory contains a collection of executable Python scripts that are'"''
'"useful while building, extending or managing Python.  Some (e.g., dutree or lll)'"''
'"are also generally useful UNIX tools.'"''
'"'"''
'"2to3                      Main script for running the 2to3 conversion tool'"''
'"abitype.py                Converts a C file to use the PEP 384 type definition API'"''
'"analyze_dxp.py            Analyzes the result of sys.getdxp()'"''
'"byext.py                  Print lines/words/chars stats of files by extension'"''
'"byteyears.py              Print product of a file's size and age'"''
'"cleanfuture.py            Fix redundant Python __future__ statements'"''
'"combinerefs.py            A helper for analyzing PYTHONDUMPREFS output'"''
'"copytime.py               Copy one file's atime and mtime to another'"''
'"crlf.py                   Change CRLF line endings to LF (Windows to Unix)'"''
'"db2pickle.py              Dump a database file to a pickle'"''
'"diff.py                   Print file diffs in context, unified, or ndiff formats'"''
'"dutree.py                 Format du(1) output as a tree sorted by size'"''
'"eptags.py                 Create Emacs TAGS file for Python modules'"''
'"finddiv.py                A grep-like tool that looks for division operators'"''
'"findlinksto.py            Recursively find symbolic links to a given path prefix'"''
'"findnocoding.py           Find source files which need an encoding declaration'"''
'"find_recursionlimit.py    Find the maximum recursion limit on this machine'"''
'"find-uname.py             Look for the given arguments in the sets of all Unicode names'"''
'"fixcid.py                 Massive identifier substitution on C source files'"''
'"fixdiv.py                 Tool to fix division operators.'"''
'"fixheader.py              Add some cpp magic to a C include file'"''
'"fixnotice.py              Fix the copyright notice in source files'"''
'"fixps.py                  Fix Python scripts' first line (if #!)'"''
'"ftpmirror.py              FTP mirror script'"''
'"get-remote-certificate.py Fetch the certificate that the server(s) are providing in PEM form'"''
'"google.py                 Open a webbrowser with Google'"''
'"gprof2html.py             Transform gprof(1) output into useful HTML'"''
'"highlight.py              Python syntax highlighting with HTML output'"''
'"idle3                     Main program to start IDLE'"''
'"ifdef.py                  Remove #if(n)def groups from C sources'"''
'"import_diagnostics.py     Miscellaneous diagnostics for the import system'"''
'"lfcr.py                   Change LF line endings to CRLF (Unix to Windows)'"''
'"linktree.py               Make a copy of a tree with links to original files'"''
'"lll.py                    Find and list symbolic links in current directory'"''
'"mailerdaemon.py           Parse error messages from mailer daemons (Sjoerd&Jack)'"''
'"make_ctype.py             Generate ctype.h replacement in stringobject.c'"''
'"md5sum.py                 Print MD5 checksums of argument files'"''
'"mkreal.py                 Turn a symbolic link into a real file or directory'"''
'"ndiff.py                  Intelligent diff between text files (Tim Peters)'"''
'"nm2def.py                 Create a template for PC/python_nt.def (Marc Lemburg)'"''
'"objgraph.py               Print object graph from nm output on a library'"''
'"parseentities.py          Utility for parsing HTML entity definitions'"''
'"parse_html5_entities.py   Utility for parsing HTML5 entity definitions'"''
'"patchcheck.py             Perform common checks and cleanup before committing'"''
'"pathfix.py                Change #!/usr/local/bin/python into something else'"''
'"pdeps.py                  Print dependencies between Python modules'"''
'"pickle2db.py              Load a pickle generated by db2pickle.py to a database'"''
'"pindent.py                Indent Python code, giving block-closing comments'"''
'"ptags.py                  Create vi tags file for Python modules'"''
'"pydoc3                    Python documentation browser'"''
'"pysource.py               Find Python source files'"''
'"reindent.py               Change .py files to use 4-space indents'"''
'"reindent-rst.py           Fix-up reStructuredText file whitespace'"''
'"rgrep.py                  Reverse grep through a file (useful for big logfiles)'"''
'"run_tests.py              Run the test suite with more sensible default options'"''
'"stable_abi.py             Stable ABI checks and file generators.'"''
'"suff.py                   Sort a list of files by suffix'"''
'"texi2html.py              Convert GNU texinfo files into HTML'"''
'"untabify.py               Replace tabs with spaces in argument files'"''
'"which.py                  Find a program in $PATH'"''
'"win_add2path.py           Add Python to the search path on Windows'"''
'"build (3.7)'"''
'"failed 3 weeks ago in 9s'"''
'"Search logs'"''
'"2s'"''
'"Current runner version: '2.301.1''"''
'"Operating System'"''
'"  Ubuntu'"''
'"  22.04.1'"''
'"  LTS'"''
'"Runner Image'"''
'"  Image: ubuntu-22.04'"''
'"  Version: 20230129.2'"''
'"  Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20230129.2/images/linux/Ubuntu2204-Readme.md'"''
'"  Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20230129.2'"''
'"Runner Image Provisioner'"''
'"  2.0.98.1'"''
'"GITHUB_TOKEN Permissions'"''
'"  Contents: read'"''
'"  Metadata: read'"''
'"  Packages: read'"''
'"Secret source: Actions'"''
'"Prepare workflow directory'"''
'"Prepare all required actions'"''
'"Getting action download info'"''
'"Download action repository 'actions/checkout@v3' (SHA:ac593985615ec2ede58e132d2e21d2b1cbd6127c)'"''
'"Download action repository 'actions/setup-python@v3' (SHA:98f2ad02fd48d057ee3b4d4f66525b231c3e52b6)'"''
'"Complete job name: build (3.7)'"''
'"1s'"''
'"Run actions/checkout@v3'"''
'"  with:'"''
'"    repository: mowjoejoejoejoe/freicoin'"''
'"    token: ***'"''
'"    ssh-strict: true'"''
'"    persist-credentials: true'"''
'"    clean: true'"''
'"    fetch-depth: 1'"''
'"    lfs: false'"''
'"    submodules: false'"''
'"    set-safe-directory: true'"''
'"Syncing repository: mowjoejoejoejoe/freicoin'"''
'"Getting Git version info'"''
'"  Working directory is '/home/runner/work/freicoin/freicoin''"''
'"  /usr/bin/git version'"''
'"  git version 2.39.1'"''
'"Temporarily overriding HOME='/home/runner/work/_temp/165476a1-ff31-4c7f-8d50-9f254b4337d7' before making global git config changes'"''
'"Adding repository directory to the temporary git global config as a safe directory'"''
'"/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin'"''
'"Deleting the contents of '/home/runner/work/freicoin/freicoin''"''
'"Initializing the repository'"''
'"  /usr/bin/git init /home/runner/work/freicoin/freicoin'"''
'"  hint: Using 'master' as the name for the initial branch. This default branch name'"''
'"  hint: is subject to change. To configure the initial branch name to use in all'"''
'"  hint: of your new repositories, which will suppress this warning, call:'"''
'"  hint: '"''
'"  hint: 	git config --global init.defaultBranch <name>'"''
'"  hint: '"''
'"  hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and'"''
'"  hint: 'development'. The just-created branch can be renamed via this command:'"''
'"  hint: '"''
'"  hint: 	git branch -m <name>'"''
'"  Initialized empty Git repository in /home/runner/work/freicoin/freicoin/.git/'"''
'"  /usr/bin/git remote add origin https://github.com/mowjoejoejoejoe/freicoin'"''
'"Disabling automatic garbage collection'"''
'"  /usr/bin/git config --local gc.auto 0'"''
'"Setting up auth'"''
'"  /usr/bin/git config --local --name-only --get-regexp core\.sshCommand'"''
'"  /usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"'"''
'"  /usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader'"''
'"  /usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"'"''
'"  /usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***'"''
'"Fetching the repository'"''
'"  /usr/bin/git -c protocol.version=2 fetch --no-tags --prune --progress --no-recurse-submodules --depth=1 origin +8ca1c7c0c59e348ab2daf869ec12c782fd298a2d:refs/remotes/origin/master'"''
'"  remote: Enumerating objects: 927, done.        '"''
'"  remote: Counting objects:   0% (1/927)        '"''
'"  remote: Counting objects:   1% (10/927)        '"''
'"  remote: Counting objects:   2% (19/927)        '"''
'"  remote: Counting objects:   3% (28/927)        '"''
'"  remote: Counting objects:   4% (38/927)        '"''
'"  remote: Counting objects:   5% (47/927)        '"''
'"  remote: Counting objects:   6% (56/927)        '"''
'"  remote: Counting objects:   7% (65/927)        '"''
'"  remote: Counting objects:   8% (75/927)        '"''
'"  remote: Counting objects:   9% (84/927)        '"''
'"  remote: Counting objects:  10% (93/927)        '"''
'"  remote: Counting objects:  11% (102/927)        '"''
'"  remote: Counting objects:  12% (112/927)        '"''
'"  remote: Counting objects:  13% (121/927)        '"''
'"  remote: Counting objects:  14% (130/927)        '"''
'"  remote: Counting objects:  15% (140/927)        '"''
'"  remote: Counting objects:  16% (149/927)        '"''
'"  remote: Counting objects:  17% (158/927)        '"''
'"  remote: Counting objects:  18% (167/927)        '"''
'"  remote: Counting objects:  19% (177/927)        '"''
'"  remote: Counting objects:  20% (186/927)        '"''
'"  remote: Counting objects:  21% (195/927)        '"''
'"  remote: Counting objects:  22% (204/927)        '"''
'"  remote: Counting objects:  23% (214/927)        '"''
'"  remote: Counting objects:  24% (223/927)        '"''
'"  remote: Counting objects:  25% (232/927)        '"''
'"  remote: Counting objects:  26% (242/927)        '"''
'"  remote: Counting objects:  27% (251/927)        '"''
'"  remote: Counting objects:  28% (260/927)        '"''
'"  remote: Counting objects:  29% (269/927)        '"''
'"  remote: Counting objects:  30% (279/927)        '"''
'"  remote: Counting objects:  31% (288/927)        '"''
'"  remote: Counting objects:  32% (297/927)        '"''
'"  remote: Counting objects:  33% (306/927)        '"''
'"  remote: Counting objects:  34% (316/927)        '"''
'"  remote: Counting objects:  35% (325/927)        '"''
'"  remote: Counting objects:  36% (334/927)        '"''
'"  remote: Counting objects:  37% (343/927)        '"''
'"  remote: Counting objects:  38% (353/927)        '"''
'"  remote: Counting objects:  39% (362/927)        '"''
'"  remote: Counting objects:  40% (371/927)        '"''
'"  remote: Counting objects:  41% (381/927)        '"''
'"  remote: Counting objects:  42% (390/927)        '"''
'"  remote: Counting objects:  43% (399/927)        '"''
'"  remote: Counting objects:  44% (408/927)        '"''
'"  remote: Counting objects:  45% (418/927)        '"''
'"  remote: Counting objects:  46% (427/927)        '"''
'"  remote: Counting objects:  47% (436/927)        '"''
'"  remote: Counting objects:  48% (445/927)        '"''
'"  remote: Counting objects:  49% (455/927)        '"''
'"  remote: Counting objects:  50% (464/927)        '"''
'"  remote: Counting objects:  51% (473/927)        '"''
'"  remote: Counting objects:  52% (483/927)        '"''
'"  remote: Counting objects:  53% (492/927)        '"''
'"  remote: Counting objects:  54% (501/927)        '"''
'"  remote: Counting objects:  55% (510/927)        '"''
'"  remote: Counting objects:  56% (520/927)        '"''
'"  remote: Counting objects:  57% (529/927)        '"''
'"  remote: Counting objects:  58% (538/927)        '"''
'"  remote: Counting objects:  59% (547/927)        '"''
'"  remote: Counting objects:  60% (557/927)        '"''
'"  remote: Counting objects:  61% (566/927)        '"''
'"  remote: Counting objects:  62% (575/927)        '"''
'"  remote: Counting objects:  63% (585/927)        '"''
'"  remote: Counting objects:  64% (594/927)        '"''
'"  remote: Counting objects:  65% (603/927)        '"''
'"  remote: Counting objects:  66% (612/927)        '"''
'"  remote: Counting objects:  67% (622/927)        '"''
'"  remote: Counting objects:  68% (631/927)        '"''
'"  remote: Counting objects:  69% (640/927)        '"''
'"  remote: Counting objects:  70% (649/927)        '"''
'"  remote: Counting objects:  71% (659/927)        '"''
'"  remote: Counting objects:  72% (668/927)        '"''
'"  remote: Counting objects:  73% (677/927)        '"''
'"  remote: Counting objects:  74% (686/927)        '"''
'"  remote: Counting objects:  75% (696/927)        '"''
'"  remote: Counting objects:  76% (705/927)        '"''
'"  remote: Counting objects:  77% (714/927)        '"''
'"  remote: Counting objects:  78% (724/927)        '"''
'"  remote: Counting objects:  79% (733/927)        '"''
'"  remote: Counting objects:  80% (742/927)        '"''
'"  remote: Counting objects:  81% (751/927)        '"''
'"  remote: Counting objects:  82% (761/927)        '"''
'"  remote: Counting objects:  83% (770/927)        '"''
'"  remote: Counting objects:  84% (779/927)        '"''
'"  remote: Counting objects:  85% (788/927)        '"''
'"  remote: Counting objects:  86% (798/927)        '"''
'"  remote: Counting objects:  87% (807/927)        '"''
'"  remote: Counting objects:  88% (816/927)        '"''
'"  remote: Counting objects:  89% (826/927)        '"''
'"  remote: Counting objects:  90% (835/927)        '"''
'"  remote: Counting objects:  91% (844/927)        '"''
'"  remote: Counting objects:  92% (853/927)        '"''
'"  remote: Counting objects:  93% (863/927)        '"''
'"  remote: Counting objects:  94% (872/927)        '"''
'"  remote: Counting objects:  95% (881/927)        '"''
'"  remote: Counting objects:  96% (890/927)        '"''
'"  remote: Counting objects:  97% (900/927)        '"''
'"  remote: Counting objects:  98% (909/927)        '"''
'"  remote: Counting objects:  99% (918/927)        '"''
'"  remote: Counting objects: 100% (927/927)        '"''
'"  remote: Counting objects: 100% (927/927), done.        '"''
'"  remote: Compressing objects:   0% (1/813)        '"''
'"  remote: Compressing objects:   1% (9/813)        '"''
'"  remote: Compressing objects:   2% (17/813)        '"''
'"  remote: Compressing objects:   3% (25/813)        '"''
'"  remote: Compressing objects:   4% (33/813)        '"''
'"  remote: Compressing objects:   5% (41/813)        '"''
'"  remote: Compressing objects:   6% (49/813)        '"''
'"  remote: Compressing objects:   7% (57/813)        '"''
'"  remote: Compressing objects:   8% (66/813)        '"''
'"  remote: Compressing objects:   9% (74/813)        '"''
'"  remote: Compressing objects:  10% (82/813)        '"''
'"  remote: Compressing objects:  11% (90/813)        '"''
'"  remote: Compressing objects:  12% (98/813)        '"''
'"  remote: Compressing objects:  13% (106/813)        '"''
'"  remote: Compressing objects:  14% (114/813)        '"''
'"  remote: Compressing objects:  15% (122/813)        '"''
'"  remote: Compressing objects:  16% (131/813)        '"''
'"  remote: Compressing objects:  17% (139/813)        '"''
'"  remote: Compressing objects:  18% (147/813)        '"''
'"  remote: Compressing objects:  19% (155/813)        '"''
'"  remote: Compressing objects:  20% (163/813)        '"''
'"  remote: Compressing objects:  21% (171/813)        '"''
'"  remote: Compressing objects:  22% (179/813)        '"''
'"  remote: Compressing objects:  23% (187/813)        '"''
'"  remote: Compressing objects:  24% (196/813)        '"''
'"  remote: Compressing objects:  25% (204/813)        '"''
'"  remote: Compressing objects:  26% (212/813)        '"''
'"  remote: Compressing objects:  27% (220/813)        '"''
'"  remote: Compressing objects:  28% (228/813)        '"''
'"  remote: Compressing objects:  29% (236/813)        '"''
'"  remote: Compressing objects:  30% (244/813)        '"''
'"  remote: Compressing objects:  31% (253/813)        '"''
'"  remote: Compressing objects:  32% (261/813)        '"''
'"  remote: Compressing objects:  33% (269/813)        '"''
'"  remote: Compressing objects:  34% (277/813)        '"''
'"  remote: Compressing objects:  35% (285/813)        '"''
'"  remote: Compressing objects:  36% (293/813)        '"''
'"  remote: Compressing objects:  37% (301/813)        '"''
'"  remote: Compressing objects:  38% (309/813)        '"''
'"  remote: Compressing objects:  39% (318/813)        '"''
'"  remote: Compressing objects:  40% (326/813)        '"''
'"  remote: Compressing objects:  41% (334/813)        '"''
'"  remote: Compressing objects:  42% (342/813)        '"''
'"  remote: Compressing objects:  43% (350/813)        '"''
'"  remote: Compressing objects:  44% (358/813)        '"''
'"  remote: Compressing objects:  45% (366/813)        '"''
'"  remote: Compressing objects:  46% (374/813)        '"''
'"  remote: Compressing objects:  47% (383/813)        '"''
'"  remote: Compressing objects:  48% (391/813)        '"''
'"  remote: Compressing objects:  49% (399/813)        '"''
'"  remote: Compressing objects:  50% (407/813)        '"''
'"  remote: Compressing objects:  51% (415/813)        '"''
'"  remote: Compressing objects:  52% (423/813)        '"''
'"  remote: Compressing objects:  53% (431/813)        '"''
'"  remote: Compressing objects:  54% (440/813)        '"''
'"  remote: Compressing objects:  55% (448/813)        '"''
'"  remote: Compressing objects:  56% (456/813)        '"''
'"  remote: Compressing objects:  57% (464/813)        '"''
'"  remote: Compressing objects:  58% (472/813)        '"''
'"  remote: Compressing objects:  59% (480/813)        '"''
'"  remote: Compressing objects:  60% (488/813)        '"''
'"  remote: Compressing objects:  61% (496/813)        '"''
'"  remote: Compressing objects:  62% (505/813)        '"''
'"  remote: Compressing objects:  63% (513/813)        '"''
'"  remote: Compressing objects:  64% (521/813)        '"''
'"  remote: Compressing objects:  65% (529/813)        '"''
'"  remote: Compressing objects:  66% (537/813)        '"''
'"  remote: Compressing objects:  67% (545/813)        '"''
'"  remote: Compressing objects:  68% (553/813)        '"''
'"  remote: Compressing objects:  69% (561/813)        '"''
'"  remote: Compressing objects:  70% (570/813)        '"''
'"  remote: Compressing objects:  71% (578/813)        '"''
'"  remote: Compressing objects:  72% (586/813)        '"''
'"  remote: Compressing objects:  73% (594/813)        '"''
'"  remote: Compressing objects:  74% (602/813)        '"''
'"  remote: Compressing objects:  75% (610/813)        '"''
'"  remote: Compressing objects:  76% (618/813)        '"''
'"  remote: Compressing objects:  77% (627/813)        '"''
'"  remote: Compressing objects:  78% (635/813)        '"''
'"  remote: Compressing objects:  79% (643/813)        '"''
'"  remote: Compressing objects:  80% (651/813)        '"''
'"  remote: Compressing objects:  81% (659/813)        '"''
'"  remote: Compressing objects:  82% (667/813)        '"''
'"  remote: Compressing objects:  83% (675/813)        '"''
'"  remote: Compressing objects:  84% (683/813)        '"''
'"  remote: Compressing objects:  85% (692/813)        '"''
'"  remote: Compressing objects:  86% (700/813)        '"''
'"  remote: Compressing objects:  87% (708/813)        '"''
'"  remote: Compressing objects:  88% (716/813)        '"''
'"  remote: Compressing objects:  89% (724/813)        '"''
'"  remote: Compressing objects:  90% (732/813)        '"''
'"  remote: Compressing objects:  91% (740/813)        '"''
'"  remote: Compressing objects:  92% (748/813)        '"''
'"  remote: Compressing objects:  93% (757/813)        '"''
'"  remote: Compressing objects:  94% (765/813)        '"''
'"  remote: Compressing objects:  95% (773/813)        '"''
'"  remote: Compressing objects:  96% (781/813)        '"''
'"  remote: Compressing objects:  97% (789/813)        '"''
'"  remote: Compressing objects:  98% (797/813)        '"''
'"  remote: Compressing objects:  99% (805/813)        '"''
'"  remote: Compressing objects: 100% (813/813)        '"''
'"  remote: Compressing objects: 100% (813/813), done.        '"''
'"  Receiving objects:   0% (1/927)'"''
'"  Receiving objects:   1% (10/927)'"''
'"  Receiving objects:   2% (19/927)'"''
'"  Receiving objects:   3% (28/927)'"''
'"  Receiving objects:   4% (38/927)'"''
'"  Receiving objects:   5% (47/927)'"''
'"  Receiving objects:   6% (56/927)'"''
'"  Receiving objects:   7% (65/927)'"''
'"  Receiving objects:   8% (75/927)'"''
'"  Receiving objects:   9% (84/927)'"''
'"  Receiving objects:  10% (93/927)'"''
'"  Receiving objects:  11% (102/927)'"''
'"  Receiving objects:  12% (112/927)'"''
'"  Receiving objects:  13% (121/927)'"''
'"  Receiving objects:  14% (130/927)'"''
'"  Receiving objects:  15% (140/927)'"''
'"  Receiving objects:  16% (149/927)'"''
'"  Receiving objects:  17% (158/927)'"''
'"  Receiving objects:  18% (167/927)'"''
'"  Receiving objects:  19% (177/927)'"''
'"  Receiving objects:  20% (186/927)'"''
'"  Receiving objects:  21% (195/927)'"''
'"  Receiving objects:  22% (204/927)'"''
'"  Receiving objects:  23% (214/927)'"''
'"  Receiving objects:  24% (223/927)'"''
'"  Receiving objects:  25% (232/927)'"''
'"  Receiving objects:  26% (242/927)'"''
'"  Receiving objects:  27% (251/927)'"''
'"  Receiving objects:  28% (260/927)'"''
'"  Receiving objects:  29% (269/927)'"''
'"  Receiving objects:  30% (279/927)'"''
'"  Receiving objects:  31% (288/927)'"''
'"  Receiving objects:  32% (297/927)'"''
'"  Receiving objects:  33% (306/927)'"''
'"  Receiving objects:  34% (316/927)'"''
'"  Receiving objects:  35% (325/927)'"''
'"  Receiving objects:  36% (334/927)'"''
'"  Receiving objects:  37% (343/927)'"''
'"  Receiving objects:  38% (353/927)'"''
'"  Receiving objects:  39% (362/927)'"''
'"  Receiving objects:  40% (371/927)'"''
'"  Receiving objects:  41% (381/927)'"''
'"  Receiving objects:  42% (390/927)'"''
'"  Receiving objects:  43% (399/927)'"''
'"  Receiving objects:  44% (408/927)'"''
'"  Receiving objects:  45% (418/927)'"''
'"  Receiving objects:  46% (427/927)'"''
'"  Receiving objects:  47% (436/927)'"''
'"  Receiving objects:  48% (445/927)'"''
'"  Receiving objects:  49% (455/927)'"''
'"  Receiving objects:  50% (464/927)'"''
'"  Receiving objects:  51% (473/927)'"''
'"  Receiving objects:  52% (483/927)'"''
'"  Receiving objects:  53% (492/927)'"''
'"  Receiving objects:  54% (501/927)'"''
'"  Receiving objects:  55% (510/927)'"''
'"  Receiving objects:  56% (520/927)'"''
'"  Receiving objects:  57% (529/927)'"''
'"  Receiving objects:  58% (538/927)'"''
'"  Receiving objects:  59% (547/927)'"''
'"  Receiving objects:  60% (557/927)'"''
'"  Receiving objects:  61% (566/927)'"''
'"  Receiving objects:  62% (575/927)'"''
'"  Receiving objects:  63% (585/927)'"''
'"  Receiving objects:  64% (594/927)'"''
'"  Receiving objects:  65% (603/927)'"''
'"  Receiving objects:  66% (612/927)'"''
'"  Receiving objects:  67% (622/927)'"''
'"  Receiving objects:  68% (631/927)'"''
'"  Receiving objects:  69% (640/927)'"''
'"  Receiving objects:  70% (649/927)'"''
'"  Receiving objects:  71% (659/927)'"''
'"  Receiving objects:  72% (668/927)'"''
'"  Receiving objects:  73% (677/927)'"''
'"  Receiving objects:  74% (686/927)'"''
'"  Receiving objects:  75% (696/927)'"''
'"  Receiving objects:  76% (705/927)'"''
'"  Receiving objects:  77% (714/927)'"''
'"  Receiving objects:  78% (724/927)'"''
'"  Receiving objects:  79% (733/927)'"''
'"  Receiving objects:  80% (742/927)'"''
'"  Receiving objects:  81% (751/927)'"''
'"  Receiving objects:  82% (761/927)'"''
'"  Receiving objects:  83% (770/927)'"''
'"  Receiving objects:  84% (779/927)'"''
'"  Receiving objects:  85% (788/927)'"''
'"  Receiving objects:  86% (798/927)'"''
'"  Receiving objects:  87% (807/927)'"''
'"  Receiving objects:  88% (816/927)'"''
'"  Receiving objects:  89% (826/927)'"''
'"  Receiving objects:  90% (835/927)'"''
'"  Receiving objects:  91% (844/927)'"''
'"  Receiving objects:  92% (853/927)'"''
'"  Receiving objects:  93% (863/927)'"''
'"  Receiving objects:  94% (872/927)'"''
'"  Receiving objects:  95% (881/927)'"''
'"  Receiving objects:  96% (890/927)'"''
'"  Receiving objects:  97% (900/927)'"''
'"  Receiving objects:  98% (909/927)'"''
'"  remote: Total 927 (delta 117), reused 485 (delta 90), pack-reused 0        '"''
'"  Receiving objects:  99% (918/927)'"''
'"  Receiving objects: 100% (927/927)'"''
'"  Receiving objects: 100% (927/927), 4.22 MiB | 13.13 MiB/s, done.'"''
'"  Resolving deltas:   0% (0/117)'"''
'"  Resolving deltas:   1% (2/117)'"''
'"  Resolving deltas:   2% (3/117)'"''
'"  Resolving deltas:   3% (4/117)'"''
'"  Resolving deltas:   4% (5/117)'"''
'"  Resolving deltas:   5% (6/117)'"''
'"  Resolving deltas:   6% (8/117)'"''
'"  Resolving deltas:   7% (9/117)'"''
'"  Resolving deltas:   8% (10/117)'"''
'"  Resolving deltas:   9% (11/117)'"''
'"  Resolving deltas:  10% (12/117)'"''
'"  Resolving deltas:  11% (13/117)'"''
'"  Resolving deltas:  12% (15/117)'"''
'"  Resolving deltas:  13% (16/117)'"''
'"  Resolving deltas:  14% (17/117)'"''
'"  Resolving deltas:  15% (18/117)'"''
'"  Resolving deltas:  16% (19/117)'"''
'"  Resolving deltas:  17% (20/117)'"''
'"  Resolving deltas:  18% (22/117)'"''
'"  Resolving deltas:  19% (23/117)'"''
'"  Resolving deltas:  20% (24/117)'"''
'"  Resolving deltas:  21% (25/117)'"''
'"  Resolving deltas:  22% (26/117)'"''
'"  Resolving deltas:  23% (27/117)'"''
'"  Resolving deltas:  24% (29/117)'"''
'"  Resolving deltas:  25% (30/117)'"''
'"  Resolving deltas:  26% (31/117)'"''
'"  Resolving deltas:  27% (32/117)'"''
'"  Resolving deltas:  28% (33/117)'"''
'"  Resolving deltas:  29% (34/117)'"''
'"  Resolving deltas:  30% (36/117)'"''
'"  Resolving deltas:  31% (37/117)'"''
'"  Resolving deltas:  32% (38/117)'"''
'"  Resolving deltas:  33% (39/117)'"''
'"  Resolving deltas:  34% (40/117)'"''
'"  Resolving deltas:  35% (41/117)'"''
'"  Resolving deltas:  36% (43/117)'"''
'"  Resolving deltas:  37% (44/117)'"''
'"  Resolving deltas:  38% (45/117)'"''
'"  Resolving deltas:  39% (46/117)'"''
'"  Resolving deltas:  40% (47/117)'"''
'"  Resolving deltas:  41% (48/117)'"''
'"  Resolving deltas:  42% (50/117)'"''
'"  Resolving deltas:  43% (51/117)'"''
'"  Resolving deltas:  44% (52/117)'"''
'"  Resolving deltas:  45% (53/117)'"''
'"  Resolving deltas:  46% (54/117)'"''
'"  Resolving deltas:  47% (55/117)'"''
'"  Resolving deltas:  48% (57/117)'"''
'"  Resolving deltas:  49% (58/117)'"''
'"  Resolving deltas:  50% (59/117)'"''
'"  Resolving deltas:  51% (60/117)'"''
'"  Resolving deltas:  52% (61/117)'"''
'"  Resolving deltas:  53% (63/117)'"''
'"  Resolving deltas:  54% (64/117)'"''
'"  Resolving deltas:  55% (65/117)'"''
'"  Resolving deltas:  56% (66/117)'"''
'"  Resolving deltas:  57% (67/117)'"''
'"  Resolving deltas:  58% (68/117)'"''
'"  Resolving deltas:  59% (70/117)'"''
'"  Resolving deltas:  60% (71/117)'"''
'"  Resolving deltas:  61% (72/117)'"''
'"  Resolving deltas:  62% (73/117)'"''
'"  Resolving deltas:  63% (74/117)'"''
'"  Resolving deltas:  64% (75/117)'"''
'"  Resolving deltas:  65% (77/117)'"''
'"  Resolving deltas:  66% (78/117)'"''
'"  Resolving deltas:  67% (79/117)'"''
'"  Resolving deltas:  68% (80/117)'"''
'"  Resolving deltas:  69% (81/117)'"''
'"  Resolving deltas:  70% (82/117)'"''
'"  Resolving deltas:  71% (84/117)'"''
'"  Resolving deltas:  72% (85/117)'"''
'"  Resolving deltas:  73% (86/117)'"''
'"  Resolving deltas:  74% (87/117)'"''
'"  Resolving deltas:  75% (88/117)'"''
'"  Resolving deltas:  76% (89/117)'"''
'"  Resolving deltas:  77% (91/117)'"''
'"  Resolving deltas:  78% (92/117)'"''
'"  Resolving deltas:  79% (93/117)'"''
'"  Resolving deltas:  80% (94/117)'"''
'"  Resolving deltas:  81% (95/117)'"''
'"  Resolving deltas:  82% (96/117)'"''
'"  Resolving deltas:  83% (98/117)'"''
'"  Resolving deltas:  84% (99/117)'"''
'"  Resolving deltas:  85% (100/117)'"''
'"  Resolving deltas:  86% (101/117)'"''
'"  Resolving deltas:  87% (102/117)'"''
'"  Resolving deltas:  88% (103/117)'"''
'"  Resolving deltas:  89% (105/117)'"''
'"  Resolving deltas:  90% (106/117)'"''
'"  Resolving deltas:  91% (107/117)'"''
'"  Resolving deltas:  92% (108/117)'"''
'"  Resolving deltas:  93% (109/117)'"''
'"  Resolving deltas:  94% (110/117)'"''
'"  Resolving deltas:  95% (112/117)'"''
'"  Resolving deltas:  96% (113/117)'"''
'"  Resolving deltas:  97% (114/117)'"''
'"  Resolving deltas:  98% (115/117)'"''
'"  Resolving deltas:  99% (116/117)'"''
'"  Resolving deltas: 100% (117/117)'"''
'"  Resolving deltas: 100% (117/117), done.'"''
'"  From https://github.com/mowjoejoejoejoe/freicoin'"''
'"   * [new ref]         8ca1c7c0c59e348ab2daf869ec12c782fd298a2d -> origin/master'"''
'"Determining the checkout info'"''
'"Checking out the ref'"''
'"  /usr/bin/git checkout --progress --force -B master refs/remotes/origin/master'"''
'"  Reset branch 'master''"''
'"  branch 'master' set up to track 'origin/master'.'"''
'"/usr/bin/git log -1 --format='%H''"''
'"'8ca1c7c0c59e348ab2daf869ec12c782fd298a2d''"''
'"0s'"''
'"Run actions/setup-python@v3'"''
'"  with:'"''
'"    python-version: 3.7'"''
'"    token: ***'"''
'"Warning: The `set-output` command is deprecated and will be disabled soon. Please upgrade to using Environment Files. For more information see: https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/'"''
'"Successfully setup CPython (3.7.15)'"''
'"3s'"''
'"Run python -m pip install --upgrade pip'"''
'"  python -m pip install --upgrade pip'"''
'"  pip install -r requirements.txt'"''
'"  shell: /usr/bin/bash -e {0}'"''
'"  env:'"''
'"    pythonLocation: /opt/hostedtoolcache/Python/3.7.15/x64'"''
'"    LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.7.15/x64/lib'"''
'"Requirement already satisfied: pip in /opt/hostedtoolcache/Python/3.7.15/x64/lib/python3.7/site-packages (22.3.1)'"''
'"Collecting pip'"''
'"  Downloading pip-23.0-py3-none-any.whl (2.1 MB)'"''
'"     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 11.0 MB/s eta 0:00:00'"''
'"Installing collected packages: pip'"''
'"  Attempting uninstall: pip'"''
'"    Found existing installation: pip 22.3.1'"''
'"    Uninstalling pip-22.3.1:'"''
'"      Successfully uninstalled pip-22.3.1'"''
'"Successfully installed pip-23.0'"''
'"ERROR: Could not open requirements file: [Errno 2] No such file or directory: 'requirements.txt''"''
'"Error: Process completed with exit code 1.'"''
'"0s'"''
'"0s'"''
'"0s'"''
'"Post job cleanup.'"''
'"/usr/bin/git version'"''
'"git version 2.39.1'"''
'"Temporarily overriding HOME='/home/runner/work/_temp/9bd9b2c6-b712-4b0b-ae95-9ef45e2b5ee4' before making global git config changes'"''
'"Adding repository directory to the temporary git global config as a safe directory'"''
'"/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin'"''
'"/usr/bin/git config --local --name-only --get-regexp core\.sshCommand'"''
'"/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"'"''
'"/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader'"''
'"http.https://github.com/.extraheader'"''
'"/usr/bin/git config --local --unset-all http.https://github.com/.extraheader'"''
'"/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"'"''
'"0s'"''
'"Cleaning up orphan processes'"''
'"'"console.func(.join(+)" :; :create.item()is=: ==yarg(AGS)).); :; :'+''((c)''','''' '''+''','''' '''(r))''':''''''')''')'''''"''' :; :"python'.read'~v'@data'='{'@'a'-sync' 'Sync '#'This 'Repositorys: 'WORKSFLOW :rum.yml:runs-on :run.sh/Husky'@Read'.md'@.github/workflows/write'-prettier'.config'@'#'A'Sync'@Repo'' 'Sync'@repo'-sync'@data/assets/images'@bitore'.sig/BITORE:writeFileSync } = require((c)), { Script } = require('vm'), { wrap } = require('test') :; :test :run::\'@'#'Test'.yml'-then-deployee-heroku-to-travis-to-#Fix :ALL ::':AUTOMATE ::'"''
'"ci :C:\I :build'-and'-deploy '= 'title + '/index.js';'"''
'"const source = CONFIGSYM(basename + '.cache.js', 'utf-8');'"''
'"const cachedData = !process.pkg && require('process').platform !== 'win32' && readFileSync(basename + '.cache');'"''
'"const scriptOpts = { filename: basename + '.cache.js', columnOffset: -62 }'"''
'"const script = new Script(wrap(source), cachedData ? Object.assign({ cachedData }, scriptOpts) : scriptOpts);'"''
'"(script.runInThisContext())(exports, require, module, __filename, __dirname);'"''
'"if (cachedData) process.on('exit'='1',' ((('C)) =>:Pushs ::ConfigSYMdefrag":, "AUTOMATES":, "CONFIGSYM=:$mk.dir= :FileSync(basename + '.cache','' script'.create(item)is=: yarg'=''='func(AGS)';' '\'}'''"''
'" *logs: cache*log(console.func('(R))'). : '"''
'" const: '{'% '"var'" '%'} '= '{'%'' '"var'" '%'}:'"':','' :'"''
'"'-''  '-'Name'' ':'A'Sync'' 'repo'-sync'@bitore'.sig'/mod'.yml'"'':'"''
'"auto-assign",'"''
'"  "description": "Automatically add reviewers/assignees to issues/PRs when issues/PRs are opened",'"''
'"  "version": "4.1.0.1",'"''
'"  "main": "dist/index.js",'"''
'"  "repository": "https://github.com/wow-actions/auto-assign",'"''
'"  "files": ['"''
'"    "dist",'"''
'"    "action.yml"'"''
'"  "scripts": '"''
'"    "clean": "make" :; \'"''
'"    "lint": "eslint 'src/**/*.{js,ts}?(x)' --fix",'"''
'"    "build": "ncc build src/index.ts --minify --v8-cache",'"''
'"    "prebuild": "run-s lint clean",'"''
'"    "prepare": "is-ci || husky install .husky"'"''
'"  "lint-staged": '"''
'"    "**/*.{js,jsx,tsx,ts,less,md,json}": '"''
'"      "prettier-quickstart — getting..., :started'.'"'':'"''
'"    "*.ts": '"''
'"      "eslint": '"Parse: body'":,'"''
'"  "commit" :; :"lint" : '"''
'"    "extends": '"''
'"      "@commitlint/config-conventional"'"''
'"  "license": "MIT",'"''
'"  "author": '"ZachryTWoodAdministrator@.it.git":,'"''
'"    "Name": "ZACHRY TYLER WOOD",'"''
'"    "email": '"cr12753750.00bitore341731337@gmail.com"'"''
'"  "dependencies": '"''
'"    "@actions/core": "^1.2.6",'"''
'"    "@actions/github": "^5.0.0",'"''
'"    "js-yaml": "^4.1.0",'"''
'"    "lodash.merge": "^4.6.2",'"''
'"    "lodash.samplesize": "^4.2.0"'"''
'"  "devDependencies": {'"''
'"    "@commitlint/cli": "^13.1.0",'"''
'"    "@commitlint/config-conventional": "^13.1.0",'"''
'"    "@types/js-yaml": "^4.0.3",'"''
'"    "@types/lodash.merge": "^4.6.6",'"''
'"    "@types/lodash.samplesize": "^4.2.6",'"''
'"    "@types/node": "^16.9.1",'"''
'"    "@typescript-eslint/eslint-plugin": "^4.18.0",'"''
'"    "@typescript-eslint/parser": "^4.18.0",'"''
'"    "@vercel/ncc": "^0.31.1",'"''
'"    "devmoji": "^2.3.0",'"''
'"    "eslint": "^7.22.0",'"''
'"    "eslint-config-airbnb-base": "^14.2.1",'"''
'"    "eslint-config-prettier": "^8.1.0",'"''
'"    "eslint-plugin-eslint-comments": "^3.2.0",'"''
'"    "eslint-plugin-import": "^2.22.1",'"''
'"    "eslint-plugin-prettier": "^4.0.0",'"''
'"    "eslint-plugin-promise": "^5.1.0",'"''
'"    "husky": "^7.0.2",'"''
'"    "is-ci": "^3.0.0",'"''
'"    "lint-staged": "^11.1.2",'"''
'"    "npm-run-all": "^4.1.5",'"''
'"    "prettier": "^2.4.1",'"''
'"    "pretty-quick": "^3.1.1",'"''
'"    "chieldo": "^3.0.2",'"''
'"    "'Actions'Script'.yml"':'' '"'^4'.4'.3'"'' :'"''
'"'"building..., :'"''
'"build (3.7)'"''
'"failed 3 weeks ago in 9s'"''
'"Search logs'"''
'"2s'"''
'"Current runner version: '2.301.1''"''
'"Operating System'"''
'"  Ubuntu'"''
'"  22.04.1'"''
'"  LTS'"''
'"Runner Image'"''
'"  Image: ubuntu-22.04'"''
'"  Version: 20230129.2'"''
'"  Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20230129.2/images/linux/Ubuntu2204-Readme.md'"''
'"  Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20230129.2'"''
'"Runner Image Provisioner'"''
'"  2.0.98.1'"''
'"GITHUB_TOKEN Permissions'"''
'"  Contents: read'"''
'"  Metadata: read'"''
'"  Packages: read'"''
'"Secret source: Actions'"''
'"Prepare workflow directory'"''
'"Prepare all required actions'"''
'"Getting action download info'"''
'"Download action repository 'actions/checkout@v3' (SHA:ac593985615ec2ede58e132d2e21d2b1cbd6127c)'"''
'"Download action repository 'actions/setup-python@v3' (SHA:98f2ad02fd48d057ee3b4d4f66525b231c3e52b6)'"''
'"Complete job name: build (3.7)'"''
'"1s'"''
'"Run actions/checkout@v3'"''
'"  with:'"''
'"    repository: mowjoejoejoejoe/freicoin'"''
'"    token: ***'"''
'"    ssh-strict: true'"''
'"    persist-credentials: true'"''
'"    clean: true'"''
'"    fetch-depth: 1'"''
'"    lfs: false'"''
'"    submodules: false'"''
'"    set-safe-directory: true'"''
'"Syncing repository: mowjoejoejoejoe/freicoin'"''
'"Getting Git version info'"''
'"  Working directory is '/home/runner/work/freicoin/freicoin''"''
'"  /usr/bin/git version'"''
'"  git version 2.39.1'"''
'"Temporarily overriding HOME='/home/runner/work/_temp/165476a1-ff31-4c7f-8d50-9f254b4337d7' before making global git config changes'"''
'"Adding repository directory to the temporary git global config as a safe directory'"''
'"/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin'"''
'"Deleting the contents of '/home/runner/work/freicoin/freicoin''"''
'"Initializing the repository'"''
'"  /usr/bin/git init /home/runner/work/freicoin/freicoin'"''
'"  hint: Using 'master' as the name for the initial branch. This default branch name'"''
'"  hint: is subject to change. To configure the initial branch name to use in all'"''
'"  hint: of your new repositories, which will suppress this warning, call:'"''
'"  hint: '"''
'"  hint: 	git config --global init.defaultBranch <name>'"''
'"  hint: '"''
'"  hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and'"''
'"  hint: 'development'. The just-created branch can be renamed via this command:'"''
'"  hint: '"''
'"  hint: 	git branch -m <name>'"''
'"  Initialized empty Git repository in /home/runner/work/freicoin/freicoin/.git/'"''
'"  /usr/bin/git remote add origin https://github.com/mowjoejoejoejoe/freicoin'"''
'"Disabling automatic garbage collection'"''
'"  /usr/bin/git config --local gc.auto 0'"''
'"Setting up auth'"''
'"  /usr/bin/git config --local --name-only --get-regexp core\.sshCommand'"''
'"  /usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"'"''
'"  /usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader'"''
'"  /usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"'"''
'"  /usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***'"''
'"Fetching the repository'"''
'"  /usr/bin/git -c protocol.version=2 fetch --no-tags --prune --progress --no-recurse-submodules --depth=1 origin +8ca1c7c0c59e348ab2daf869ec12c782fd298a2d:refs/remotes/origin/master'"''
'"  remote: Enumerating objects: 927, done.        '"''
'"  remote: Counting objects:   0% (1/927)        '"''
'"  remote: Counting objects:   1% (10/927)        '"''
'"  remote: Counting objects:   2% (19/927)        '"''
'"  remote: Counting objects:   3% (28/927)        '"''
'"  remote: Counting objects:   4% (38/927)        '"''
'"  remote: Counting objects:   5% (47/927)        '"''
'"  remote: Counting objects:   6% (56/927)        '"''
'"  remote: Counting objects:   7% (65/927)        '"''
'"  remote: Counting objects:   8% (75/927)        '"''
'"  remote: Counting objects:   9% (84/927)        '"''
'"  remote: Counting objects:  10% (93/927)        '"''
'"  remote: Counting objects:  11% (102/927)        '"''
'"  remote: Counting objects:  12% (112/927)        '"''
'"  remote: Counting objects:  13% (121/927)        '"''
'"  remote: Counting objects:  14% (130/927)        '"''
'"  remote: Counting objects:  15% (140/927)        '"''
'"  remote: Counting objects:  16% (149/927)        '"''
'"  remote: Counting objects:  17% (158/927)        '"''
'"  remote: Counting objects:  18% (167/927)        '"''
'"  remote: Counting objects:  19% (177/927)        '"''
'"  remote: Counting objects:  20% (186/927)        '"''
'"  remote: Counting objects:  21% (195/927)        '"''
'"  remote: Counting objects:  22% (204/927)        '"''
'"  remote: Counting objects:  23% (214/927)        '"''
'"  remote: Counting objects:  24% (223/927)        '"''
'"  remote: Counting objects:  25% (232/927)        '"''
'"  remote: Counting objects:  26% (242/927)        '"''
'"  remote: Counting objects:  27% (251/927)        '"''
'"  remote: Counting objects:  28% (260/927)        '"''
'"  remote: Counting objects:  29% (269/927)        '"''
'"  remote: Counting objects:  30% (279/927)        '"''
'"  remote: Counting objects:  31% (288/927)        '"''
'"  remote: Counting objects:  32% (297/927)        '"''
'"  remote: Counting objects:  33% (306/927)        '"''
'"  remote: Counting objects:  34% (316/927)        '"''
'"  remote: Counting objects:  35% (325/927)        '"''
'"  remote: Counting objects:  36% (334/927)        '"''
'"  remote: Counting objects:  37% (343/927)        '"''
'"  remote: Counting objects:  38% (353/927)        '"''
'"  remote: Counting objects:  39% (362/927)        '"''
'"  remote: Counting objects:  40% (371/927)        '"''
'"  remote: Counting objects:  41% (381/927)        '"''
'"  remote: Counting objects:  42% (390/927)        '"''
'"  remote: Counting objects:  43% (399/927)        '"''
'"  remote: Counting objects:  44% (408/927)        '"''
'"  remote: Counting objects:  45% (418/927)        '"''
'"  remote: Counting objects:  46% (427/927)        '"''
'"  remote: Counting objects:  47% (436/927)        '"''
'"  remote: Counting objects:  48% (445/927)        '"''
'"  remote: Counting objects:  49% (455/927)        '"''
'"  remote: Counting objects:  50% (464/927)        '"''
'"  remote: Counting objects:  51% (473/927)        '"''
'"  remote: Counting objects:  52% (483/927)        '"''
'"  remote: Counting objects:  53% (492/927)        '"''
'"  remote: Counting objects:  54% (501/927)        '"''
'"  remote: Counting objects:  55% (510/927)        '"''
'"  remote: Counting objects:  56% (520/927)        '"''
'"  remote: Counting objects:  57% (529/927)        '"''
'"  remote: Counting objects:  58% (538/927)        '"''
'"  remote: Counting objects:  59% (547/927)        '"''
'"  remote: Counting objects:  60% (557/927)        '"''
'"  remote: Counting objects:  61% (566/927)        '"''
'"  remote: Counting objects:  62% (575/927)        '"''
'"  remote: Counting objects:  63% (585/927)        '"''
'"  remote: Counting objects:  64% (594/927)        '"''
'"  remote: Counting objects:  65% (603/927)        '"''
'"  remote: Counting objects:  66% (612/927)        '"''
'"  remote: Counting objects:  67% (622/927)        '"''
'"  remote: Counting objects:  68% (631/927)        '"''
'"  remote: Counting objects:  69% (640/927)        '"''
'"  remote: Counting objects:  70% (649/927)        '"''
'"  remote: Counting objects:  71% (659/927)        '"''
'"  remote: Counting objects:  72% (668/927)        '"''
'"  remote: Counting objects:  73% (677/927)        '"''
'"  remote: Counting objects:  74% (686/927)        '"''
'"  remote: Counting objects:  75% (696/927)        '"''
'"  remote: Counting objects:  76% (705/927)        '"''
'"  remote: Counting objects:  77% (714/927)        '"''
'"  remote: Counting objects:  78% (724/927)        '"''
'"  remote: Counting objects:  79% (733/927)        '"''
'"  remote: Counting objects:  80% (742/927)        '"''
'"  remote: Counting objects:  81% (751/927)        '"''
'"  remote: Counting objects:  82% (761/927)        '"''
'"  remote: Counting objects:  83% (770/927)        '"''
'"  remote: Counting objects:  84% (779/927)        '"''
'"  remote: Counting objects:  85% (788/927)        '"''
'"  remote: Counting objects:  86% (798/927)        '"''
'"  remote: Counting objects:  87% (807/927)        '"''
'"  remote: Counting objects:  88% (816/927)        '"''
'"  remote: Counting objects:  89% (826/927)        '"''
'"  remote: Counting objects:  90% (835/927)        '"''
'"  remote: Counting objects:  91% (844/927)        '"''
'"  remote: Counting objects:  92% (853/927)        '"''
'"  remote: Counting objects:  93% (863/927)        '"''
'"  remote: Counting objects:  94% (872/927)        '"''
'"  remote: Counting objects:  95% (881/927)        '"''
'"  remote: Counting objects:  96% (890/927)        '"''
'"  remote: Counting objects:  97% (900/927)        '"''
'"  remote: Counting objects:  98% (909/927)        '"''
'"  remote: Counting objects:  99% (918/927)        '"''
'"  remote: Counting objects: 100% (927/927)        '"''
'"  remote: Counting objects: 100% (927/927), done.        '"''
'"  remote: Compressing objects:   0% (1/813)        '"''
'"  remote: Compressing objects:   1% (9/813)        '"''
'"  remote: Compressing objects:   2% (17/813)        '"''
'"  remote: Compressing objects:   3% (25/813)        '"''
'"  remote: Compressing objects:   4% (33/813)        '"''
'"  remote: Compressing objects:   5% (41/813)        '"''
'"  remote: Compressing objects:   6% (49/813)        '"''
'"  remote: Compressing objects:   7% (57/813)        '"''
'"  remote: Compressing objects:   8% (66/813)        '"''
'"  remote: Compressing objects:   9% (74/813)        '"''
'"  remote: Compressing objects:  10% (82/813)        '"''
'"  remote: Compressing objects:  11% (90/813)        '"''
'"  remote: Compressing objects:  12% (98/813)        '"''
'"  remote: Compressing objects:  13% (106/813)        '"''
'"  remote: Compressing objects:  14% (114/813)        '"''
'"  remote: Compressing objects:  15% (122/813)        '"''
'"  remote: Compressing objects:  16% (131/813)        '"''
'"  remote: Compressing objects:  17% (139/813)        '"''
'"  remote: Compressing objects:  18% (147/813)        '"''
'"  remote: Compressing objects:  19% (155/813)        '"''
'"  remote: Compressing objects:  20% (163/813)        '"''
'"  remote: Compressing objects:  21% (171/813)        '"''
'"  remote: Compressing objects:  22% (179/813)        '"''
'"  remote: Compressing objects:  23% (187/813)        '"''
'"  remote: Compressing objects:  24% (196/813)        '"''
'"  remote: Compressing objects:  25% (204/813)        '"''
'"  remote: Compressing objects:  26% (212/813)        '"''
'"  remote: Compressing objects:  27% (220/813)        '"''
'"  remote: Compressing objects:  28% (228/813)        '"''
'"  remote: Compressing objects:  29% (236/813)        '"''
'"  remote: Compressing objects:  30% (244/813)        '"''
'"  remote: Compressing objects:  31% (253/813)        '"''
'"  remote: Compressing objects:  32% (261/813)        '"''
'"  remote: Compressing objects:  33% (269/813)        '"''
'"  remote: Compressing objects:  34% (277/813)        '"''
'"  remote: Compressing objects:  35% (285/813)        '"''
'"  remote: Compressing objects:  36% (293/813)        '"''
'"  remote: Compressing objects:  37% (301/813)        '"''
'"  remote: Compressing objects:  38% (309/813)        '"''
'"  remote: Compressing objects:  39% (318/813)        '"''
'"  remote: Compressing objects:  40% (326/813)        '"''
'"  remote: Compressing objects:  41% (334/813)        '"''
'"  remote: Compressing objects:  42% (342/813)        '"''
'"  remote: Compressing objects:  43% (350/813)        '"''
'"  remote: Compressing objects:  44% (358/813)        '"''
'"  remote: Compressing objects:  45% (366/813)        '"''
'"  remote: Compressing objects:  46% (374/813)        '"''
'"  remote: Compressing objects:  47% (383/813)        '"''
'"  remote: Compressing objects:  48% (391/813)        '"''
'"  remote: Compressing objects:  49% (399/813)        '"''
'"  remote: Compressing objects:  50% (407/813)        '"''
'"  remote: Compressing objects:  51% (415/813)        '"''
'"  remote: Compressing objects:  52% (423/813)        '"''
'"  remote: Compressing objects:  53% (431/813)        '"''
'"  remote: Compressing objects:  54% (440/813)        '"''
'"  remote: Compressing objects:  55% (448/813)        '"''
'"  remote: Compressing objects:  56% (456/813)        '"''
'"  remote: Compressing objects:  57% (464/813)        '"''
'"  remote: Compressing objects:  58% (472/813)        '"''
'"  remote: Compressing objects:  59% (480/813)        '"''
'"  remote: Compressing objects:  60% (488/813)        '"''
'"  remote: Compressing objects:  61% (496/813)        '"''
'"  remote: Compressing objects:  62% (505/813)        '"''
'"  remote: Compressing objects:  63% (513/813)        '"''
'"  remote: Compressing objects:  64% (521/813)        '"''
'"  remote: Compressing objects:  65% (529/813)        '"''
'"  remote: Compressing objects:  66% (537/813)        '"''
'"  remote: Compressing objects:  67% (545/813)        '"''
'"  remote: Compressing objects:  68% (553/813)        '"''
'"  remote: Compressing objects:  69% (561/813)        '"''
'"  remote: Compressing objects:  70% (570/813)        '"''
'"  remote: Compressing objects:  71% (578/813)        '"''
'"  remote: Compressing objects:  72% (586/813)        '"''
'"  remote: Compressing objects:  73% (594/813)        '"''
'"  remote: Compressing objects:  74% (602/813)        '"''
'"  remote: Compressing objects:  75% (610/813)        '"''
'"  remote: Compressing objects:  76% (618/813)        '"''
'"  remote: Compressing objects:  77% (627/813)        '"''
'"  remote: Compressing objects:  78% (635/813)        '"''
'"  remote: Compressing objects:  79% (643/813)        '"''
'"  remote: Compressing objects:  80% (651/813)        '"''
'"  remote: Compressing objects:  81% (659/813)        '"''
'"  remote: Compressing objects:  82% (667/813)        '"''
'"  remote: Compressing objects:  83% (675/813)        '"''
'"  remote: Compressing objects:  84% (683/813)        '"''
'"  remote: Compressing objects:  85% (692/813)        '"''
'"  remote: Compressing objects:  86% (700/813)        '"''
'"  remote: Compressing objects:  87% (708/813)        '"''
'"  remote: Compressing objects:  88% (716/813)        '"''
'"  remote: Compressing objects:  89% (724/813)        '"''
'"  remote: Compressing objects:  90% (732/813)        '"''
'"  remote: Compressing objects:  91% (740/813)        '"''
'"  remote: Compressing objects:  92% (748/813)        '"''
'"  remote: Compressing objects:  93% (757/813)        '"''
'"  remote: Compressing objects:  94% (765/813)        '"''
'"  remote: Compressing objects:  95% (773/813)        '"''
'"  remote: Compressing objects:  96% (781/813)        '"''
'"  remote: Compressing objects:  97% (789/813)        '"''
'"  remote: Compressing objects:  98% (797/813)        '"''
'"  remote: Compressing objects:  99% (805/813)        '"''
'"  remote: Compressing objects: 100% (813/813)        '"''
'"  remote: Compressing objects: 100% (813/813), done.        '"''
'"  Receiving objects:   0% (1/927)'"''
'"  Receiving objects:   1% (10/927)'"''
'"  Receiving objects:   2% (19/927)'"''
'"  Receiving objects:   3% (28/927)'"''
'"  Receiving objects:   4% (38/927)'"''
'"  Receiving objects:   5% (47/927)'"''
'"  Receiving objects:   6% (56/927)'"''
'"  Receiving objects:   7% (65/927)'"''
'"  Receiving objects:   8% (75/927)'"''
'"  Receiving objects:   9% (84/927)'"''
'"  Receiving objects:  10% (93/927)'"''
'"  Receiving objects:  11% (102/927)'"''
'"  Receiving objects:  12% (112/927)'"''
'"  Receiving objects:  13% (121/927)'"''
'"  Receiving objects:  14% (130/927)'"''
'"  Receiving objects:  15% (140/927)'"''
'"  Receiving objects:  16% (149/927)'"''
'"  Receiving objects:  17% (158/927)'"''
'"  Receiving objects:  18% (167/927)'"''
'"  Receiving objects:  19% (177/927)'"''
'"  Receiving objects:  20% (186/927)'"''
'"  Receiving objects:  21% (195/927)'"''
'"  Receiving objects:  22% (204/927)'"''
'"  Receiving objects:  23% (214/927)'"''
'"  Receiving objects:  24% (223/927)'"''
'"  Receiving objects:  25% (232/927)'"''
'"  Receiving objects:  26% (242/927)'"''
'"  Receiving objects:  27% (251/927)'"''
'"  Receiving objects:  28% (260/927)'"''
'"  Receiving objects:  29% (269/927)'"''
'"  Receiving objects:  30% (279/927)'"''
'"  Receiving objects:  31% (288/927)'"''
'"  Receiving objects:  32% (297/927)'"''
'"  Receiving objects:  33% (306/927)'"''
'"  Receiving objects:  34% (316/927)'"''
'"  Receiving objects:  35% (325/927)'"''
'"  Receiving objects:  36% (334/927)'"''
'"  Receiving objects:  37% (343/927)'"''
'"  Receiving objects:  38% (353/927)'"''
'"  Receiving objects:  39% (362/927)'"''
'"  Receiving objects:  40% (371/927)'"''
'"  Receiving objects:  41% (381/927)'"''
'"  Receiving objects:  42% (390/927)'"''
'"  Receiving objects:  43% (399/927)'"''
'"  Receiving objects:  44% (408/927)'"''
'"  Receiving objects:  45% (418/927)'"''
'"  Receiving objects:  46% (427/927)'"''
'"  Receiving objects:  47% (436/927)'"''
'"  Receiving objects:  48% (445/927)'"''
'"  Receiving objects:  49% (455/927)'"''
'"  Receiving objects:  50% (464/927)'"''
'"  Receiving objects:  51% (473/927)'"''
'"  Receiving objects:  52% (483/927)'"''
'"  Receiving objects:  53% (492/927)'"''
'"  Receiving objects:  54% (501/927)'"''
'"  Receiving objects:  55% (510/927)'"''
'"  Receiving objects:  56% (520/927)'"''
'"  Receiving objects:  57% (529/927)'"''
'"  Receiving objects:  58% (538/927)'"''
'"  Receiving objects:  59% (547/927)'"''
'"  Receiving objects:  60% (557/927)'"''
'"  Receiving objects:  61% (566/927)'"''
'"  Receiving objects:  62% (575/927)'"''
'"  Receiving objects:  63% (585/927)'"''
'"  Receiving objects:  64% (594/927)'"''
'"  Receiving objects:  65% (603/927)'"''
'"  Receiving objects:  66% (612/927)'"''
'"  Receiving objects:  67% (622/927)'"''
'"  Receiving objects:  68% (631/927)'"''
'"  Receiving objects:  69% (640/927)'"''
'"  Receiving objects:  70% (649/927)'"''
'"  Receiving objects:  71% (659/927)'"''
'"  Receiving objects:  72% (668/927)'"''
'"  Receiving objects:  73% (677/927)'"''
'"  Receiving objects:  74% (686/927)'"''
'"  Receiving objects:  75% (696/927)'"''
'"  Receiving objects:  76% (705/927)'"''
'"  Receiving objects:  77% (714/927)'"''
'"  Receiving objects:  78% (724/927)'"''
'"  Receiving objects:  79% (733/927)'"''
'"  Receiving objects:  80% (742/927)'"''
'"  Receiving objects:  81% (751/927)'"''
'"  Receiving objects:  82% (761/927)'"''
'"  Receiving objects:  83% (770/927)'"''
'"  Receiving objects:  84% (779/927)'"''
'"  Receiving objects:  85% (788/927)'"''
'"  Receiving objects:  86% (798/927)'"''
'"  Receiving objects:  87% (807/927)'"''
'"  Receiving objects:  88% (816/927)'"''
'"  Receiving objects:  89% (826/927)'"''
'"  Receiving objects:  90% (835/927)'"''
'"  Receiving objects:  91% (844/927)'"''
'"  Receiving objects:  92% (853/927)'"''
'"  Receiving objects:  93% (863/927)'"''
'"  Receiving objects:  94% (872/927)'"''
'"  Receiving objects:  95% (881/927)'"''
'"  Receiving objects:  96% (890/927)'"''
'"  Receiving objects:  97% (900/927)'"''
'"  Receiving objects:  98% (909/927)'"''
'"  remote: Total 927 (delta 117), reused 485 (delta 90), pack-reused 0        '"''
'"  Receiving objects:  99% (918/927)'"''
'"  Receiving objects: 100% (927/927)'"''
'"  Receiving objects: 100% (927/927), 4.22 MiB | 13.13 MiB/s, done.'"''
'"  Resolving deltas:   0% (0/117)'"''
'"  Resolving deltas:   1% (2/117)'"''
'"  Resolving deltas:   2% (3/117)'"''
'"  Resolving deltas:   3% (4/117)'"''
'"  Resolving deltas:   4% (5/117)'"''
'"  Resolving deltas:   5% (6/117)'"''
'"  Resolving deltas:   6% (8/117)'"''
'"  Resolving deltas:   7% (9/117)'"''
'"  Resolving deltas:   8% (10/117)'"''
'"  Resolving deltas:   9% (11/117)'"''
'"  Resolving deltas:  10% (12/117)'"''
'"  Resolving deltas:  11% (13/117)'"''
'"  Resolving deltas:  12% (15/117)'"''
'"  Resolving deltas:  13% (16/117)'"''
'"  Resolving deltas:  14% (17/117)'"''
'"  Resolving deltas:  15% (18/117)'"''
'"  Resolving deltas:  16% (19/117)'"''
'"  Resolving deltas:  17% (20/117)'"''
'"  Resolving deltas:  18% (22/117)'"''
'"  Resolving deltas:  19% (23/117)'"''
'"  Resolving deltas:  20% (24/117)'"''
'"  Resolving deltas:  21% (25/117)'"''
'"  Resolving deltas:  22% (26/117)'"''
'"  Resolving deltas:  23% (27/117)'"''
'"  Resolving deltas:  24% (29/117)'"''
'"  Resolving deltas:  25% (30/117)'"''
'"  Resolving deltas:  26% (31/117)'"''
'"  Resolving deltas:  27% (32/117)'"''
'"  Resolving deltas:  28% (33/117)'"''
'"  Resolving deltas:  29% (34/117)'"''
'"  Resolving deltas:  30% (36/117)'"''
'"  Resolving deltas:  31% (37/117)'"''
'"  Resolving deltas:  32% (38/117)'"''
'"  Resolving deltas:  33% (39/117)'"''
'"  Resolving deltas:  34% (40/117)'"''
'"  Resolving deltas:  35% (41/117)'"''
'"  Resolving deltas:  36% (43/117)'"''
'"  Resolving deltas:  37% (44/117)'"''
'"  Resolving deltas:  38% (45/117)'"''
'"  Resolving deltas:  39% (46/117)'"''
'"  Resolving deltas:  40% (47/117)'"''
'"  Resolving deltas:  41% (48/117)'"''
'"  Resolving deltas:  42% (50/117)'"''
'"  Resolving deltas:  43% (51/117)'"''
'"  Resolving deltas:  44% (52/117)'"''
'"  Resolving deltas:  45% (53/117)'"''
'"  Resolving deltas:  46% (54/117)'"''
'"  Resolving deltas:  47% (55/117)'"''
'"  Resolving deltas:  48% (57/117)'"''
'"  Resolving deltas:  49% (58/117)'"''
'"  Resolving deltas:  50% (59/117)'"''
'"  Resolving deltas:  51% (60/117)'"''
'"  Resolving deltas:  52% (61/117)'"''
'"  Resolving deltas:  53% (63/117)'"''
'"  Resolving deltas:  54% (64/117)'"''
'"  Resolving deltas:  55% (65/117)'"''
'"  Resolving deltas:  56% (66/117)'"''
'"  Resolving deltas:  57% (67/117)'"''
'"  Resolving deltas:  58% (68/117)'"''
'"  Resolving deltas:  59% (70/117)'"''
'"  Resolving deltas:  60% (71/117)'"''
'"  Resolving deltas:  61% (72/117)'"''
'"  Resolving deltas:  62% (73/117)'"''
'"  Resolving deltas:  63% (74/117)'"''
'"  Resolving deltas:  64% (75/117)'"''
'"  Resolving deltas:  65% (77/117)'"''
'"  Resolving deltas:  66% (78/117)'"''
'"  Resolving deltas:  67% (79/117)'"''
'"  Resolving deltas:  68% (80/117)'"''
'"  Resolving deltas:  69% (81/117)'"''
'"  Resolving deltas:  70% (82/117)'"''
'"  Resolving deltas:  71% (84/117)'"''
'"  Resolving deltas:  72% (85/117)'"''
'"  Resolving deltas:  73% (86/117)'"''
'"  Resolving deltas:  74% (87/117)'"''
'"  Resolving deltas:  75% (88/117)'"''
'"  Resolving deltas:  76% (89/117)'"''
'"  Resolving deltas:  77% (91/117)'"''
'"  Resolving deltas:  78% (92/117)'"''
'"  Resolving deltas:  79% (93/117)'"''
'"  Resolving deltas:  80% (94/117)'"''
'"  Resolving deltas:  81% (95/117)'"''
'"  Resolving deltas:  82% (96/117)'"''
'"  Resolving deltas:  83% (98/117)'"''
'"  Resolving deltas:  84% (99/117)'"''
'"  Resolving deltas:  85% (100/117)'"''
'"  Resolving deltas:  86% (101/117)'"''
'"  Resolving deltas:  87% (102/117)'"''
'"  Resolving deltas:  88% (103/117)'"''
'"  Resolving deltas:  89% (105/117)'"''
'"  Resolving deltas:  90% (106/117)'"''
'"  Resolving deltas:  91% (107/117)'"''
'"  Resolving deltas:  92% (108/117)'"''
'"  Resolving deltas:  93% (109/117)'"''
'"  Resolving deltas:  94% (110/117)'"''
'"  Resolving deltas:  95% (112/117)'"''
'"  Resolving deltas:  96% (113/117)'"''
'"  Resolving deltas:  97% (114/117)'"''
'"  Resolving deltas:  98% (115/117)'"''
'"  Resolving deltas:  99% (116/117)'"''
'"  Resolving deltas: 100% (117/117)'"''
'"  Resolving deltas: 100% (117/117), done.'"''
'"  From https://github.com/mowjoejoejoejoe/freicoin'"''
'"   * [new ref]         8ca1c7c0c59e348ab2daf869ec12c782fd298a2d -> origin/master'"''
'"Determining the checkout info'"''
'"Checking out the ref'"''
'"  /usr/bin/git checkout --progress --force -B master refs/remotes/origin/master'"''
'"  Reset branch 'master''"''
'"  branch 'master' set up to track 'origin/master'.'"''
'"/usr/bin/git log -1 --format='%H''"''
'"'8ca1c7c0c59e348ab2daf869ec12c782fd298a2d''"''
'"0s'"''
'"Run actions/setup-python@v3'"''
'"  with:'"''
'"    python-version: 3.7'"''
'"    token: ***'"''
'"Warning: The `set-output` command is deprecated and will be disabled soon. Please upgrade to using Environment Files. For more information see: https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/'"''
'"Successfully setup CPython (3.7.15)'"''
'"3s'"''
'"Run python -m pip install --upgrade pip'"''
'"  python -m pip install --upgrade pip'"''
'"  pip install -r requirements.txt'"''
'"  shell: /usr/bin/bash -e {0}'"''
'"  env:'"''
'"    pythonLocation: /opt/hostedtoolcache/Python/3.7.15/x64'"''
'"    LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.7.15/x64/lib'"''
'"Requirement already satisfied: pip in /opt/hostedtoolcache/Python/3.7.15/x64/lib/python3.7/site-packages (22.3.1)'"''
'"Collecting pip'"''
'"  Downloading pip-23.0-py3-none-any.whl (2.1 MB)'"''
'"     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 11.0 MB/s eta 0:00:00'"''
'"Installing collected packages: pip'"''
'"  Attempting uninstall: pip'"''
'"    Found existing installation: pip 22.3.1'"''
'"    Uninstalling pip-22.3.1:'"''
'"      Successfully uninstalled pip-22.3.1'"''
'"Successfully installed pip-23.0'"''
'"ERROR: Could not open requirements file: [Errno 2] No such file or directory: 'requirements.txt''"''
'"Error: Process completed with exit code 1.'"''
'"0s'"''
'"0s'"''
'"0s'"''
'"Post job cleanup.'"''
'"/usr/bin/git version'"''
'"git version 2.39.1'"''
'"Temporarily overriding HOME='/home/runner/work/_temp/9bd9b2c6-b712-4b0b-ae95-9ef45e2b5ee4' before making global git config changes'"''
'"Adding repository directory to the temporary git global config as a safe directory'"''
'"/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin'"''
'"/usr/bin/git config --local --name-only --get-regexp core\.sshCommand'"''
'"/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"'"''
'"/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader'"''
'"http.https://github.com/.extraheader'"''
'"/usr/bin/git config --local --unset-all http.https://github.com/.extraheader'"''
'"/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"'"''
'"0s'"''
'"Cleaning up orphan processesbuild (3.7)](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#logs)'"''
'"failed 3 weeks ago in 9s'"''
'"Search logs'"''
'"2s'"''
'"Current runner version: '2.30[1](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:1).1''"''
'"Operating System'"''
'"  Ubuntu'"''
'"  [2](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:2)2.04.1'"''
'"  LTS'"''
'"Runner Image'"''
'"  Image: ubuntu-22.04'"''
'"  Version: 202[3](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:3)0129.2'"''
'"  Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20230129.2/images/linux/Ubuntu220[4](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:4)-Readme.md'"''
'"  Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20230129.2'"''
'"Runner Image Provisioner'"''
'"  2.0.98.1'"''
'"GITHUB_TOKEN Permissions'"''
'"  Contents: read'"''
'"  Metadata: read'"''
'"  Packages: read'"''
'"Secret source: Actions'"''
'"Prepare workflow directory'"''
'"Prepare all required actions'"''
'"Getting action download info'"''
'"Download action repository 'actions/checkout@v3' (SHA:ac[5](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:5)93985[6](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:7)15ec2ede58e132d2e21d2b1cbd612[7](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:8)c)'"''
'"Download action repository 'actions/setup-python@v3' (SHA:9[8](https://github.com/mowjoejoejoejoe/BITCORE/bitore.sig/runs/4087190831/jobs/7047398113#step:1:9)f2ad02fd48d057ee3b4d4f66525b231c3e52b6)'"''
'"Complete job name: build (1.3.7.10.9)'"''
'"1s'"''
'"Run actions/checkout@v3'"''
'"  with:'"''
'"    repository: mowjoejoejoejoe/freicoin'"''
'"    token: ***'"''
'"    ssh-strict: true'"''
'"    persist-credentials: true'"''
'"    clean: true'"''
'"    fetch-depth: 1'"''
'"    lfs: false'"''
'"    submodules: false'"''
'"    set-safe-directory: true'"''
'"Syncing repository: mowjoejoejoejoe/freicoin'"''
'"Getting Git version info'"''
'"  Working directory is '/home/runner/work/freicoin/freicoin''"''
'"  /usr/bin/git version'"''
'"  git version 2.3[9](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:10).1'"''
'"Temporarily overriding HOME='/home/runner/work/_temp/165476a1-ff31-4c7f-8d50-9f254b4337d7' before making global git config changes'"''
'"Adding repository directory to the temporary git global config as a safe directory'"''
'"/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin'"''
'"Deleting the contents of '/home/runner/work/freicoin/freicoin''"''
'"Initializing the repository'"''
'"  /usr/bin/git init /home/runner/work/freicoin/freicoin'"''
'"  hint: Using 'master' as the name for the initial branch. This default branch name'"''
'"  hint: is subject to change. To configure the initial branch name to use in all'"''
'"  hint: of your new repositories, which will suppress this warning, call:'"''
'"  hint: '"''
'"  hint: 	git config --global init.defaultBranch <name>'"''
'"  hint: '"''
'"  hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and'"''
'"  hint: 'development'. The just-created branch can be renamed via this command:'"''
'"  hint: '"''
'"  hint: 	git branch -m <name>'"''
'"  Initialized empty Git repository in /home/runner/work/freicoin/freicoin/.git/'"''
'"  /usr/bin/git remote add origin https://github.com/mowjoejoejoejoe/freicoin'"''
'"Disabling automatic garbage collection'"''
'"  /usr/bin/git config --local gc.auto 0'"''
'"Setting up auth'"''
'"  /usr/bin/git config --local --name-only --get-regexp core\.sshCommand'"''
'"  /usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"'"''
'"  /usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader'"''
'"  /usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"'"''
'"  /usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***'"''
'"Fetching the repository'"''
'"  /usr/bin/git -c protocol.version=2 fetch --no-tags --prune --progress --no-recurse-submodules --depth=1 origin +8ca1c7c0c59e348ab2daf869ec12c782fd298a2d:refs/remotes/origin/master'"''
'"  remote: Enumerating objects: 927, done.        '"''
'"  remote: Counting objects:   0% (1/927)        '"''
'"  remote: Counting objects:   1% ([10](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:11)/927)        '"''
'"  remote: Counting objects:   2% (19/927)        '"''
'"  remote: Counting objects:   3% (28/927)        '"''
'"  remote: Counting objects:   4% (38/927)        '"''
'"  remote: Counting objects:   5% (47/927)        '"''
'"  remote: Counting objects:   6% (56/927)        '"''
'"  remote: Counting objects:   7% (65/927)        '"''
'"  remote: Counting objects:   8% (75/927)        '"''
'"  remote: Counting objects:   9% (84/927)        '"''
'"  remote: Counting objects:  10% (93/927)        '"''
'"  remote: Counting objects:  [11](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:13)% (102/927)        '"''
'"  remote: Counting objects:  [12](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:14)% (112/927)        '"''
'"  remote: Counting objects:  [13](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:16)% (121/927)        '"''
'"  remote: Counting objects:  [14](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:17)% (130/927)        '"''
'"  remote: Counting objects:  [15](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:18)% (140/927)        '"''
'"  remote: Counting objects:  [16](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:19)% (149/927)        '"''
'"  remote: Counting objects:  [17](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:21)% (158/927)        '"''
'"  remote: Counting objects:  [18](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:22)% (167/927)        '"''
'"  remote: Counting objects:  [19](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:23)% (177/927)        '"''
'"  remote: Counting objects:  [20](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:24)% (186/927)        '"''
'"  remote: Counting objects:  [21](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:25)% (195/927)        '"''
'"  remote: Counting objects:  [22](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:26)% (204/927)        '"''
'"  remote: Counting objects:  [23](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:1:27)% (2[1](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:1)4/9[2](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:2)7)        '"''
'"  remote: Counting objects:  24% (223/927)        '"''
'"  remote: Counting objects:  25% (232/927)        '"''
'"  remote: Counting objects:  26% (242/927)        '"''
'"  remote: Counting objects:  27% (251/927)        '"''
'"  remote: Counting objects:  28% (260/927)        '"''
'"  remote: Counting objects:  29% (269/927)        '"''
'"  remote: Counting objects:  30% (279/927)        '"''
'"  remote: Counting objects:  31% (288/927)        '"''
'"  remote: Counting objects:  32% (297/927)        '"''
'"  remote: Counting objects:  33% (306/927)        '"''
'"  remote: Counting objects:  34% (316/927)        '"''
'"  remote: Counting objects:  35% (325/927)        '"''
'"  remote: Counting objects:  36% (334/927)        '"''
'"  remote: Counting objects:  37% (343/927)        '"''
'"  remote: Counting objects:  38% (353/927)        '"''
'"  remote: Counting objects:  39% (362/927)        '"''
'"  remote: Counting objects:  40% (371/927)        '"''
'"  remote: Counting objects:  41% (381/927)        '"''
'"  remote: Counting objects:  42% (390/927)        '"''
'"  remote: Counting objects:  43% (399/927)        '"''
'"  remote: Counting objects:  44% (408/927)        '"''
'"  remote: Counting objects:  45% (418/927)        '"''
'"  remote: Counting objects:  46% (427/927)        '"''
'"  remote: Counting objects:  47% (436/927)        '"''
'"  remote: Counting objects:  48% (445/927)        '"''
'"  remote: Counting objects:  49% (455/927)        '"''
'"  remote: Counting objects:  50% (464/927)        '"''
'"  remote: Counting objects:  51% (473/927)        '"''
'"  remote: Counting objects:  52% (483/927)        '"''
'"  remote: Counting objects:  53% (492/927)        '"''
'"  remote: Counting objects:  54% (501/927)        '"''
'"  remote: Counting objects:  55% (510/927)        '"''
'"  remote: Counting objects:  56% (520/927)        '"''
'"  remote: Counting objects:  57% (529/927)        '"''
'"  remote: Counting objects:  58% (538/927)        '"''
'"  remote: Counting objects:  59% (547/927)        '"''
'"  remote: Counting objects:  60% (557/927)        '"''
'"  remote: Counting objects:  61% (566/927)        '"''
'"  remote: Counting objects:  62% (575/927)        '"''
'"  remote: Counting objects:  63% (585/927)        '"''
'"  remote: Counting objects:  64% (594/927)        '"''
'"  remote: Counting objects:  65% (603/927)        '"''
'"  remote: Counting objects:  66% (612/927)        '"''
'"  remote: Counting objects:  67% (622/927)        '"''
'"  remote: Counting objects:  68% (631/927)        '"''
'"  remote: Counting objects:  69% (640/927)        '"''
'"  remote: Counting objects:  70% (649/927)        '"''
'"  remote: Counting objects:  71% (659/927)        '"''
'"  remote: Counting objects:  72% (668/927)        '"''
'"  remote: Counting objects:  73% (677/927)        '"''
'"  remote: Counting objects:  74% (686/927)        '"''
'"  remote: Counting objects:  75% (696/927)        '"''
'"  remote: Counting objects:  76% (705/927)        '"''
'"  remote: Counting objects:  77% (714/927)        '"''
'"  remote: Counting objects:  78% (724/927)        '"''
'"  remote: Counting objects:  79% (733/927)        '"''
'"  remote: Counting objects:  80% (742/927)        '"''
'"  remote: Counting objects:  81% (751/927)        '"''
'"  remote: Counting objects:  82% (761/927)        '"''
'"  remote: Counting objects:  83% (770/927)        '"''
'"  remote: Counting objects:  84% (779/927)        '"''
'"  remote: Counting objects:  85% (788/927)        '"''
'"  remote: Counting objects:  86% (798/927)        '"''
'"  remote: Counting objects:  87% (807/927)        '"''
'"  remote: Counting objects:  88% (816/927)        '"''
'"  remote: Counting objects:  89% (826/927)        '"''
'"  remote: Counting objects:  90% (835/927)        '"''
'"  remote: Counting objects:  91% (844/927)        '"''
'"  remote: Counting objects:  92% (853/927)        '"''
'"  remote: Counting objects:  93% (863/927)        '"''
'"  remote: Counting objects:  94% (872/927)        '"''
'"  remote: Counting objects:  95% (881/927)        '"''
'"  remote: Counting objects:  96% (890/927)        '"''
'"  remote: Counting objects:  97% (900/927)        '"''
'"  remote: Counting objects:  98% (909/927)        '"''
'"  remote: Counting objects:  99% (918/927)        '"''
'"  remote: Counting objects: 100% (927/927)        '"''
'"  remote: Counting objects: 100% (927/927), done.        '"''
'"  remote: Compressing objects:   0% (1/813)        '"''
'"  remote: Compressing objects:   1% (9/813)        '"''
'"  remote: Compressing objects:   2% (17/813)        '"''
'"  remote: Compressing objects:   3% (25/813)        '"''
'"  remote: Compressing objects:   4% (33/813)        '"''
'"  remote: Compressing objects:   5% (41/813)        '"''
'"  remote: Compressing objects:   6% (49/813)        '"''
'"  remote: Compressing objects:   7% (57/813)        '"''
'"  remote: Compressing objects:   8% (66/813)        '"''
'"  remote: Compressing objects:   9% (74/813)        '"''
'"  remote: Compressing objects:  10% (82/813)        '"''
'"  remote: Compressing objects:  11% (90/813)        '"''
'"  remote: Compressing objects:  12% (98/813)        '"''
'"  remote: Compressing objects:  13% (106/813)        '"''
'"  remote: Compressing objects:  14% (114/813)        '"''
'"  remote: Compressing objects:  15% (122/813)        '"''
'"  remote: Compressing objects:  16% (131/813)        '"''
'"  remote: Compressing objects:  17% (139/813)        '"''
'"  remote: Compressing objects:  18% (147/813)        '"''
'"  remote: Compressing objects:  19% (155/813)        '"''
'"  remote: Compressing objects:  20% (163/813)        '"''
'"  remote: Compressing objects:  21% (171/813)        '"''
'"  remote: Compressing objects:  22% (179/813)        '"''
'"  remote: Compressing objects:  23% (187/813)        '"''
'"  remote: Compressing objects:  24% (196/813)        '"''
'"  remote: Compressing objects:  25% (204/813)        '"''
'"  remote: Compressing objects:  26% (212/813)        '"''
'"  remote: Compressing objects:  27% (220/813)        '"''
'"  remote: Compressing objects:  28% (228/813)        '"''
'"  remote: Compressing objects:  29% (236/813)        '"''
'"  remote: Compressing objects:  30% (244/813)        '"''
'"  remote: Compressing objects:  31% (253/813)        '"''
'"  remote: Compressing objects:  32% (261/813)        '"''
'"  remote: Compressing objects:  33% (269/813)        '"''
'"  remote: Compressing objects:  34% (277/813)        '"''
'"  remote: Compressing objects:  35% (285/813)        '"''
'"  remote: Compressing objects:  36% (293/813)        '"''
'"  remote: Compressing objects:  37% (301/813)        '"''
'"  remote: Compressing objects:  38% (309/813)        '"''
'"  remote: Compressing objects:  39% (318/813)        '"''
'"  remote: Compressing objects:  40% (326/813)        '"''
'"  remote: Compressing objects:  41% (334/813)        '"''
'"  remote: Compressing objects:  42% (342/813)        '"''
'"  remote: Compressing objects:  43% (350/813)        '"''
'"  remote: Compressing objects:  44% (358/813)        '"''
'"  remote: Compressing objects:  45% (366/813)        '"''
'"  remote: Compressing objects:  46% (374/813)        '"''
'"  remote: Compressing objects:  47% (383/813)        '"''
'"  remote: Compressing objects:  48% (391/813)        '"''
'"  remote: Compressing objects:  49% (399/813)        '"''
'"  remote: Compressing objects:  50% (407/813)        '"''
'"  remote: Compressing objects:  51% (415/813)        '"''
'"  remote: Compressing objects:  52% (423/813)        '"''
'"  remote: Compressing objects:  53% (431/813)        '"''
'"  remote: Compressing objects:  54% (440/813)        '"''
'"  remote: Compressing objects:  55% (448/813)        '"''
'"  remote: Compressing objects:  56% (456/813)        '"''
'"  remote: Compressing objects:  57% (464/813)        '"''
'"  remote: Compressing objects:  58% (472/813)        '"''
'"  remote: Compressing objects:  59% (480/813)        '"''
'"  remote: Compressing objects:  60% (488/813)        '"''
'"  remote: Compressing objects:  61% (496/813)        '"''
'"  remote: Compressing objects:  62% (505/813)        '"''
'"  remote: Compressing objects:  63% (513/813)        '"''
'"  remote: Compressing objects:  64% (521/813)        '"''
'"  remote: Compressing objects:  65% (529/813)        '"''
'"  remote: Compressing objects:  66% (537/813)        '"''
'"  remote: Compressing objects:  67% (545/813)        '"''
'"  remote: Compressing objects:  68% (553/813)        '"''
'"  remote: Compressing objects:  69% (561/813)        '"''
'"  remote: Compressing objects:  70% (570/813)        '"''
'"  remote: Compressing objects:  71% (578/813)        '"''
'"  remote: Compressing objects:  72% (586/813)        '"''
'"  remote: Compressing objects:  73% (594/813)        '"''
'"  remote: Compressing objects:  74% (602/813)        '"''
'"  remote: Compressing objects:  75% (610/813)        '"''
'"  remote: Compressing objects:  76% (618/813)        '"''
'"  remote: Compressing objects:  77% (627/813)        '"''
'"  remote: Compressing objects:  78% (635/813)        '"''
'"  remote: Compressing objects:  79% (643/813)        '"''
'"  remote: Compressing objects:  80% (651/813)        '"''
'"  remote: Compressing objects:  81% (659/813)        '"''
'"  remote: Compressing objects:  82% (667/813)        '"''
'"  remote: Compressing objects:  83% (675/813)        '"''
'"  remote: Compressing objects:  84% (683/813)        '"''
'"  remote: Compressing objects:  85% (692/813)        '"''
'"  remote: Compressing objects:  86% (700/813)        '"''
'"  remote: Compressing objects:  87% (708/813)        '"''
'"  remote: Compressing objects:  88% (716/813)        '"''
'"  remote: Compressing objects:  89% (724/813)        '"''
'"  remote: Compressing objects:  90% (732/813)        '"''
'"  remote: Compressing objects:  91% (740/813)        '"''
'"  remote: Compressing objects:  92% (748/813)        '"''
'"  remote: Compressing objects:  93% (757/813)        '"''
'"  remote: Compressing objects:  94% (765/813)        '"''
'"  remote: Compressing objects:  95% (773/813)        '"''
'"  remote: Compressing objects:  96% (781/813)        '"''
'"  remote: Compressing objects:  97% (789/813)        '"''
'"  remote: Compressing objects:  98% (797/813)        '"''
'"  remote: Compressing objects:  99% (805/813)        '"''
'"  remote: Compressing objects: 100% (813/813)        '"''
'"  remote: Compressing objects: 100% (813/813), done.        '"''
'"  Receiving objects:   0% (1/927)'"''
'"  Receiving objects:   1% (10/927)'"''
'"  Receiving objects:   2% (19/927)'"''
'"  Receiving objects:   3% (28/927)'"''
'"  Receiving objects:   4% (38/927)'"''
'"  Receiving objects:   5% (47/927)'"''
'"  Receiving objects:   6% (56/927)'"''
'"  Receiving objects:   7% (65/927)'"''
'"  Receiving objects:   8% (75/927)'"''
'"  Receiving objects:   9% (84/927)'"''
'"  Receiving objects:  10% (93/927)'"''
'"  Receiving objects:  11% (102/927)'"''
'"  Receiving objects:  12% (112/927)'"''
'"  Receiving objects:  13% (121/927)'"''
'"  Receiving objects:  14% (130/927)'"''
'"  Receiving objects:  15% (140/927)'"''
'"  Receiving objects:  16% (149/927)'"''
'"  Receiving objects:  17% (158/927)'"''
'"  Receiving objects:  18% (167/927)'"''
'"  Receiving objects:  19% (177/927)'"''
'"  Receiving objects:  20% (186/927)'"''
'"  Receiving objects:  21% (195/927)'"''
'"  Receiving objects:  22% (204/927)'"''
'"  Receiving objects:  23% (214/927)'"''
'"  Receiving objects:  24% (223/927)'"''
'"  Receiving objects:  25% (232/927)'"''
'"  Receiving objects:  26% (242/927)'"''
'"  Receiving objects:  27% (251/927)'"''
'"  Receiving objects:  28% (260/927)'"''
'"  Receiving objects:  29% (269/927)'"''
'"  Receiving objects:  30% (279/927)'"''
'"  Receiving objects:  31% (288/927)'"''
'"  Receiving objects:  32% (297/927)'"''
'"  Receiving objects:  33% (306/927)'"''
'"  Receiving objects:  34% (316/927)'"''
'"  Receiving objects:  35% (325/927)'"''
'"  Receiving objects:  36% (334/927)'"''
'"  Receiving objects:  37% (343/927)'"''
'"  Receiving objects:  38% (353/927)'"''
'"  Receiving objects:  39% (362/927)'"''
'"  Receiving objects:  40% (371/927)'"''
'"  Receiving objects:  41% (381/927)'"''
'"  Receiving objects:  42% (390/927)'"''
'"  Receiving objects:  43% (399/927)'"''
'"  Receiving objects:  44% (408/927)'"''
'"  Receiving objects:  45% (418/927)'"''
'"  Receiving objects:  46% (427/927)'"''
'"  Receiving objects:  47% (436/927)'"''
'"  Receiving objects:  48% (445/927)'"''
'"  Receiving objects:  49% (455/927)'"''
'"  Receiving objects:  50% (464/927)'"''
'"  Receiving objects:  51% (473/927)'"''
'"  Receiving objects:  52% (483/927)'"''
'"  Receiving objects:  53% (492/927)'"''
'"  Receiving objects:  54% (501/927)'"''
'"  Receiving objects:  55% (510/927)'"''
'"  Receiving objects:  56% (520/927)'"''
'"  Receiving objects:  57% (529/927)'"''
'"  Receiving objects:  58% (538/927)'"''
'"  Receiving objects:  59% (547/927)'"''
'"  Receiving objects:  60% (557/927)'"''
'"  Receiving objects:  61% (566/927)'"''
'"  Receiving objects:  62% (575/927)'"''
'"  Receiving objects:  63% (585/927)'"''
'"  Receiving objects:  64% (594/927)'"''
'"  Receiving objects:  65% (603/927)'"''
'"  Receiving objects:  66% (612/927)'"''
'"  Receiving objects:  67% (622/927)'"''
'"  Receiving objects:  68% (631/927)'"''
'"  Receiving objects:  69% (640/927)'"''
'"  Receiving objects:  70% (649/927)'"''
'"  Receiving objects:  71% (659/927)'"''
'"  Receiving objects:  72% (668/927)'"''
'"  Receiving objects:  73% (677/927)'"''
'"  Receiving objects:  74% (686/927)'"''
'"  Receiving objects:  75% (696/927)'"''
'"  Receiving objects:  76% (705/927)'"''
'"  Receiving objects:  77% (714/927)'"''
'"  Receiving objects:  78% (724/927)'"''
'"  Receiving objects:  79% (733/927)'"''
'"  Receiving objects:  80% (742/927)'"''
'"  Receiving objects:  81% (751/927)'"''
'"  Receiving objects:  82% (761/927)'"''
'"  Receiving objects:  83% (770/927)'"''
'"  Receiving objects:  84% (779/927)'"''
'"  Receiving objects:  85% (788/927)'"''
'"  Receiving objects:  86% (798/927)'"''
'"  Receiving objects:  87% (807/927)'"''
'"  Receiving objects:  88% (816/927)'"''
'"  Receiving objects:  89% (826/927)'"''
'"  Receiving objects:  90% (835/927)'"''
'"  Receiving objects:  91% (844/927)'"''
'"  Receiving objects:  92% (853/927)'"''
'"  Receiving objects:  93% (863/927)'"''
'"  Receiving objects:  94% (872/927)'"''
'"  Receiving objects:  95% (881/927)'"''
'"  Receiving objects:  96% (890/927)'"''
'"  Receiving objects:  97% (900/927)'"''
'"  Receiving objects:  98% (909/927)'"''
'"  remote: Total 927 (delta 117), reused 485 (delta 90), pack-reused 0        '"''
'"  Receiving objects:  99% (918/927)'"''
'"  Receiving objects: 100% (927/927)'"''
'"  Receiving objects: 100% (927/927), 4.22 MiB | 13.13 MiB/s, done.'"''
'"  Resolving deltas:   0% (0/117)'"''
'"  Resolving deltas:   1% (2/117)'"''
'"  Resolving deltas:   2% (3/117)'"''
'"  Resolving deltas:   3% (4/117)'"''
'"  Resolving deltas:   4% (5/117)'"''
'"  Resolving deltas:   5% (6/117)'"''
'"  Resolving deltas:   6% (8/117)'"''
'"  Resolving deltas:   7% (9/117)'"''
'"  Resolving deltas:   8% (10/117)'"''
'"  Resolving deltas:   9% (11/117)'"''
'"  Resolving deltas:  10% (12/117)'"''
'"  Resolving deltas:  11% (13/117)'"''
'"  Resolving deltas:  12% (15/117)'"''
'"  Resolving deltas:  13% (16/117)'"''
'"  Resolving deltas:  14% (17/117)'"''
'"  Resolving deltas:  15% (18/117)'"''
'"  Resolving deltas:  16% (19/117)'"''
'"  Resolving deltas:  17% (20/117)'"''
'"  Resolving deltas:  18% (22/117)'"''
'"  Resolving deltas:  19% (23/117)'"''
'"  Resolving deltas:  20% (24/117)'"''
'"  Resolving deltas:  21% (25/117)'"''
'"  Resolving deltas:  22% (26/117)'"''
'"  Resolving deltas:  23% (27/117)'"''
'"  Resolving deltas:  24% (29/117)'"''
'"  Resolving deltas:  25% (30/117)'"''
'"  Resolving deltas:  26% (31/117)'"''
'"  Resolving deltas:  27% (32/117)'"''
'"  Resolving deltas:  28% (33/117)'"''
'"  Resolving deltas:  29% (34/117)'"''
'"  Resolving deltas:  30% (36/117)'"''
'"  Resolving deltas:  31% (37/117)'"''
'"  Resolving deltas:  32% (38/117)'"''
'"  Resolving deltas:  33% (39/117)'"''
'"  Resolving deltas:  34% (40/117)'"''
'"  Resolving deltas:  35% (41/117)'"''
'"  Resolving deltas:  36% (43/117)'"''
'"  Resolving deltas:  37% (44/117)'"''
'"  Resolving deltas:  38% (45/117)'"''
'"  Resolving deltas:  39% (46/117)'"''
'"  Resolving deltas:  40% (47/117)'"''
'"  Resolving deltas:  41% (48/117)'"''
'"  Resolving deltas:  42% (50/117)'"''
'"  Resolving deltas:  43% (51/117)'"''
'"  Resolving deltas:  44% (52/117)'"''
'"  Resolving deltas:  45% (53/117)'"''
'"  Resolving deltas:  46% (54/117)'"''
'"  Resolving deltas:  47% (55/117)'"''
'"  Resolving deltas:  48% (57/117)'"''
'"  Resolving deltas:  49% (58/117)'"''
'"  Resolving deltas:  50% (59/117)'"''
'"  Resolving deltas:  51% (60/117)'"''
'"  Resolving deltas:  52% (61/117)'"''
'"  Resolving deltas:  53% (63/117)'"''
'"  Resolving deltas:  54% (64/117)'"''
'"  Resolving deltas:  55% (65/117)'"''
'"  Resolving deltas:  56% (66/117)'"''
'"  Resolving deltas:  57% (67/117)'"''
'"  Resolving deltas:  58% (68/117)'"''
'"  Resolving deltas:  59% (70/117)'"''
'"  Resolving deltas:  60% (71/117)'"''
'"  Resolving deltas:  61% (72/117)'"''
'"  Resolving deltas:  62% (73/117)'"''
'"  Resolving deltas:  63% (74/117)'"''
'"  Resolving deltas:  64% (75/117)'"''
'"  Resolving deltas:  65% (77/117)'"''
'"  Resolving deltas:  66% (78/117)'"''
'"  Resolving deltas:  67% (79/117)'"''
'"  Resolving deltas:  68% (80/117)'"''
'"  Resolving deltas:  69% (81/117)'"''
'"  Resolving deltas:  70% (82/117)'"''
'"  Resolving deltas:  71% (84/117)'"''
'"  Resolving deltas:  72% (85/117)'"''
'"  Resolving deltas:  73% (86/117)'"''
'"  Resolving deltas:  74% (87/117)'"''
'"  Resolving deltas:  75% (88/117)'"''
'"  Resolving deltas:  76% (89/117)'"''
'"  Resolving deltas:  77% (91/117)'"''
'"  Resolving deltas:  78% (92/117)'"''
'"  Resolving deltas:  79% (93/117)'"''
'"  Resolving deltas:  80% (94/117)'"''
'"  Resolving deltas:  81% (95/117)'"''
'"  Resolving deltas:  82% (96/117)'"''
'"  Resolving deltas:  83% (98/117)'"''
'"  Resolving deltas:  84% (99/117)'"''
'"  Resolving deltas:  85% (100/117)'"''
'"  Resolving deltas:  86% (101/117)'"''
'"  Resolving deltas:  87% (102/117)'"''
'"  Resolving deltas:  88% (103/117)'"''
'"  Resolving deltas:  89% (105/117)'"''
'"  Resolving deltas:  90% (106/117)'"''
'"  Resolving deltas:  91% (107/117)'"''
'"  Resolving deltas:  92% (108/117)'"''
'"  Resolving deltas:  93% (109/117)'"''
'"  Resolving deltas:  94% (110/117)'"''
'"  Resolving deltas:  95% (112/117)'"''
'"  Resolving deltas:  96% (113/117)'"''
'"  Resolving deltas:  97% (114/117)'"''
'"  Resolving deltas:  98% (115/117)'"''
'"  Resolving deltas:  99% (116/117)'"''
'"  Resolving deltas: 100% (117/117)'"''
'"  Resolving deltas: 100% (117/117), done.'"''
'"  From https://github.com/mowjoejoejoejoe/freicoin'"''
'"   * [new ref]         8ca1c7c0c59e348ab2daf869ec12c782fd298a2d -> origin/master'"''
'"Determining the checkout info'"''
'"Checking out the ref'"''
'"  /usr/bin/git checkout --progress --force -B master refs/remotes/origin/master'"''
'"  Reset branch 'master''"''
'"  branch 'master' set up to track 'origin/master'.'"''
'"/usr/bin/git log -1 --format='%H''"''
'"'8ca1c7c0c59e348ab2daf869ec12c782fd298a2d''"''
'"0s'"''
'"Run actions/setup-python@v3'"''
'"  with:'"''
'"    python-version: [3](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:3).7'"''
'"    token: ***'"''
'"Warning: The `set-output` command is deprecated and will be disabled soon. Please upgrade to using Environment Files. For more information see: https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/'"''
'"Successfully setup CPython (3.7.15)'"''
'"3s'"''
'"Run python -m pip install --upgrade pip'"''
'"  python -m pip install --upgrade pip'"''
'"  pip install -r requirements.txt'"''
'"  shell: /usr/bin/bash -e {0}'"''
'"  env:'"''
'"    pythonLocation: /opt/hostedtoolcache/Python/3.7.15/x6[4](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:4)'"''
'"    LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.7.1[5](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:5)/x[6](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:6)4/lib'"''
'"Requirement already satisfied: pip in /opt/hostedtoolcache/Python/3.[7](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:7).15/x64/lib/python3.7/site-packages (22.3.1)'"''
'"Collecting pip'"''
'"  Downloading pip-23.0-py3-none-any.whl (2.1 MB)'"''
'"     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 11.0 MB/s eta 0:00:00'"''
'"Installing collected packages: pip'"''
'"  Attempting uninstall: pip'"''
'"    Found existing installation: pip 22.3.1'"''
'"    Uninstalling pip-22.3.1:'"''
'"      Successfully uninstalled pip-22.3.1'"''
'"Successfully installed pip-23.0'"''
'"ERROR: Could not open requirements file: [Errno 2] No such file or directory: 'requirements.txt''"''
'"Error: Process completed with exit code 1.'"''
'"0s'"''
'"0s'"''
'"0s'"''
'"Post job cleanup.'"''
'"/usr/bin/git version'"''
'"git version 2.3[9](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:9).1'"''
'"Temporarily overriding HOME='/home/runner/work/_temp/9bd9b2c6-b7[12](https://github.com/mowjoejoejoejoe/freicoin/actions/runs/4087190831/jobs/7047398113#step:2:13)-4b0b-ae95-9ef45e2b5ee4' before making global git config changes'"''
'"Adding repository directory to the temporary git global config as a safe directory'"''
'"/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin'"''
'"/usr/bin/git config --local --name-only --get-regexp core\.sshCommand'"''
'"/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"'"''
'"/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader'"''
'"http.https://github.com/.extraheader'"''
'"/usr/bin/git config --local --unset-all http.https://github.com/.extraheader'"''
'"/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"'"''
'"0s'"''
'"Cleaning up orphan processes'"''
'":Build::'"''
'"Internal Revenue Service United States Department of the Treasury'"''
'"Skip Links'"''
'"HomeGet Refund StatusRefund Help'"''
'"Refund Status '"''
'"Obtener Estado de Reembolso'"''
'"Get Refund Status'"''
'"Please enter the Tax Year, your Social Security Number, your Filing Status and the refund amount as shown on your tax return.'"''
'"*See our Privacy Notice regarding our request for your personal information.'"''
'"'"''
'"Tax Year '"''
'"Select the tax year for which you are seeking refund status.'"''
'"Example: The latest tax year is 2022. Tax year 2022 is January 1, 2022 through December 31, 2022.'"''
'"'"''
'"Please select a Tax Year here.'"''
'" 2022 (Latest tax year)'"''
'" 2021'"''
'" 2020'"''
'"'"''
'"Social Security Number '"''
'"You must enter the SSN or IRS Individual Taxpayer Identification Number shown on your tax return.'"''
'"Please enter Social Security Number here.'"''
'" - [633] Please enter the first three digits of your Social Security Number.'"''
'" - [44] Please enter the second two digits of your Social Security Number. '"''
'" - [1725] Please enter the last four digits of your Social Security Number.'"''
'" Filing Status '"''
'"Please select the Filing Status shown on your tax return.'"''
'"Please select a Filing Status here.'"''
'"-[22/7]  Single'"''
'" Married-Filing Joint Return'"''
'" Married-Filing Separate Return'"''
'" Head of Household'"''
'" Qualifying Widow(er)'"''
'"Refund Amount '"''
'"You must enter the exact whole dollar Refund Amount shown on your tax return. Providing the exact whole dollar amount is essential to receiving the correct response.'"''
'"Please enter Refund Amount here.'"''
'"$ '"''
'" Please enter Refund Amount here.'"''
'"- [22/7] Submit Button'"''
'"- [22/7]  Please select this button to continue getting your Refund Status.'"''
'"Account number: 733254901807 Customer Address: BITCOIN.BTC-USD BTCUSD CCC ATTN: ZACHRY T WOOD 5222 BRADFORD DR DALLAS, TX 75235-8313, US Amazon Web Services Advance Payment Funding Request Request Summary Email or talk to us about your AWS account, visit aws.amazon.com/contact-us/ This is a document for a recent funding request of your Amazon Web Services account Greetings from Amazon Web Services, we're writing to provide you with an electronic document for the recent funding request of your AWS account. Summary Amount Total USD 267,567,263,607.00 USD 267,567,263,607.00 Please complete your payment to Amazon Web Services: Following are the details for making an electronic funds transfer. Please ensure to reference "733254901807 - AdvPay - ZU3FLK7RCVCEO10" in the descriptive text ﬁeld of your electronic funds transfer payment. If you have any questions regarding payment, please email aws-accountsreceivable@amazon.com Electronic funds transfer details: Account Name: Amazon Web Services, Inc. Checking Account Number: 4121350227 Wire Routing Number: 121000248 Bank Address: 420 Montgomery Street, San Francisco CA 94163 Bank Name: Wells Fargo NA ABA Routing Number: 121000248 SWIFT Code: WFBIUS6SXXX Thank you for using Amazon Web Services. Sincerely, The Amazon Web Services Team This message was produced and distributed by Amazon Web Services, Inc., 410 Terry Avenue North, Seattle, Washington 98109-5210. AWS will not be bound by, and speciﬁcally objects to, any term, condition or other provision which is diﬀerent from or in addition to the provisions of the AWS Customer Agreement or other agreement between AWS and you governing your use of our services (whether or not it would materially alter such AWS Customer Agreement or other agreement) and which is submitted in any order, receipt, acceptance, conﬁrmation, correspondence or otherwise, unless AWS speciﬁcally agrees to such provision in a written instrument signed by AWS.'"''
'"IRS Privacy Policy'"''
'"U.S. SECURITIES AND'"''
'"EXCHANGE COMMISSION'"''
'"ABOUT'"''
'"DIVISIONS & OFFICES'"''
'"ENFORCEMENT'"''
'"REGULATION'"''
'"EDUCATION'"''
'"FILINGS'"''
'"NEWS'"''
'"Newsroom Left Nav'"''
'"Newsroom'"''
'"Press Releases'"''
'"Speeches and Statements'"''
'"SEC Stories'"''
'"Spotlight Topics'"''
'"Media Kit'"''
'"Press Contacts'"''
'"Events'"''
'"Webcasts'"''
'"Media Gallery'"''
'"RSS Feeds'"''
'"Social Media'"''
'"Statement'"''
'"Statement on Settlement with BlockFi Lending LLC'"''
'"Hester Peirce'"''
'"Commissioner Hester M. Peirce'"''
'"Feb. 14, 2022'"''
'"'"''
'"A lot of securities lawyers will nod, “Yes, I saw this coming,” in response to today’s settlement with BlockFi Lending LLC (“BlockFi”).  A company taking in crypto from a wide range of investors and promising returns could implicate the securities laws in several ways.  Today’s settlement tags that arrangement as both an investment contract under Howey[1] and a note under Reves.[2]  On top of that, the settlement deems BlockFi an unregistered investment company.  Lurking behind the legal analysis, however, is an important question:  Is the approach we are taking with crypto lending the best way to protect crypto lending customers?  I do not think it is, so I respectfully dissent.'"''
'"'"''
'"As an initial matter, it is difficult to understand how the civil penalty will protect investors.  BlockFi will pay the SEC $50 million, and will pay another $50 million in connection with state settlements for the same conduct.  While penalties this size are intended to deter bad conduct, here there is no allegation that BlockFi failed to pay its customers the money due them or failed to return the crypto lent to it.  BlockFi’s misrepresentations about over-collateralization are serious, but the combined $100 million penalty nevertheless seems disproportionate. '"''
'"'"''
'"The piece of the settlement aimed at getting important information to customers is more understandable from a retail protection standpoint.  Customers who lend crypto assets to a company in exchange for a promised return should get the information they need to assess the risks against the rewards.  A company offering crypto lending services could offer that information voluntarily as a way to gain and retain customers.  For those companies that do not provide the information on their own, a self-regulatory or government regulatory framework might make sense.  Securities law is one regulatory framework through which one could force transparency.  This settlement seeks to do just that.  The Order Instituting Proceedings states that BlockFi’s parent company has announced that it “confidentially submitted a draft registration statement on Form S-1.”[3]  If this registration statement becomes effective, it will afford BlockFi customers helpful transparency.  But it is still worth asking whether a framework other than the securities regulatory framework might be better suited to getting customers transparency around the terms and risks of crypto lending products.'"''
'"'"''
'"Applying the securities regulatory framework has consequences, some of which may be unfortunate.  Rather than forcing transparency around retail crypto lending products, today’s settlement may stop them from being offered to retail customers in the United States.  BlockFi will not be allowed to take in any additional crypto from retail investors until the company has registered a new crypto lending product on Form S-1.  Getting an S-1 to the point where staff will declare it effective is often a months-long, iterative process.  When crypto is at issue, the timeframe is likely to be longer than it would be for more traditional filings.  '"''
'"'"''
'"Even assuming BlockFi perseveres and prevails in the S-1 registration process, before it can restart its lending program, it has to leap through another regulatory hoop—the Investment Company Act.  The Commission has found that BlockFi operated as an unregistered investment company.[4]  Yet BlockFi cannot register as an investment company since it issues debt securities,[5] and so it needs an exemption or exclusion from registration.  The Order Instituting Proceedings also specifically discusses the market intermediary exclusion.[6]  If BlockFi seeks refuge in this rarely used exclusion, it has a challenging path to prove that it qualifies, particularly with the Commission staff’s typical heightened scrutiny for crypto companies.[7]   The Commission’s lack of experience with the market intermediary exclusion combined with the nature of BlockFi’s business suggests that the sixty-day timeframe (even if extended an additional 30 days) allocated for BlockFi to “provid[e] the Commission staff with sufficient credible evidence that it is no longer required to be registered under the Investment Company Act”[8] is extremely ambitious.  '"''
'"'"''
'"More importantly, what ends does this Investment Company Act exercise serve?  The Form S-1 already should satisfy the information disclosure objective at the heart of this settlement.  Finding a way not to be subject to the Investment Company Act would not seem to serve an additional protective purpose.  If the Commission believes that additional protections are needed to make up for not being covered by the Investment Company Act protections, then we could work with BlockFi under our Section 6(c) exemptive authority to craft a bespoke set of conditions that make sense in this context.[9]  The Section 6(c) process also lends itself better to public input, which seems appropriate given that today’s settlement will reverberate beyond just the settling entity and will affect competing crypto lenders and their customers as well.'"''
'"'"''
'"We often tell companies wanting to offer products that could implicate the securities laws to “come in and talk to us.”  To make that invitation meaningful, however, we need to commit to working with these companies to craft sensible, timely, and achievable regulatory paths.  Working with an earnest desire to reach a prudent, properly calibrated regulatory outcome is important for a number of reasons.  First, these products matter to people.  A program that allows people—and not just affluent people—to keep their crypto assets, while still earning a return is valuable to many Americans, as evidenced by the programs’ popularity in the United States to date.  The investor protection objective of today’s settlement will be poorly served if retail investors are ultimately shut out from participation in these products.  Second, our process speaks volumes about our integrity as a regulator.  Inviting people to come in and talk to us only to drag them through a difficult, lengthy, unproductive, and labyrinthine regulatory process casts the Commission in a bad light and thus makes us a less effective regulator.  Third, a company that tries to do the right thing should be met across the table by a regulator that tries to get to a sensible result in a reasonable timeframe.  For the sake of the American public, our own reputation, and the companies that heed our call to come in and talk to us, we need to do better than we have so far at accommodating innovation through thoughtful use of the exemptive authority Congress gave us.'"''
'"'"''
'"[1] SEC v. W. J. Howey Co., 328 U.S. 293 (1946).'"''
'"'"''
'"[2] Reves v. Ernst & Young, 494 U.S. 56 (1990).'"''
'"'"''
'"[3] BlockFi Lending LLC, Order Instituting Proceedings, ¶¶ 40, https://www.sec.gov/litigation/admin/2022/33-11029.pdf.'"''
'"'"''
'"[4] BlockFi Lending LLC, Order Instituting Proceedings, ¶¶ 24-29.'"''
'"'"''
'"[5] See Section 18 of the Investment Company Act of 1940, 15 U.S.C. § 80-18 (restricting registered investment companies from issuing “senior securities” which is defined to include “any bond, debenture, note, or similar obligation or instrument constituting a security and evidencing indebtedness”). '"''
'"'"''
'"[6] See BlockFi Lending LLC, Order Instituting Proceedings, ¶¶ 38-39.'"''
'"'"''
'"[7] Even if it did not issue debt securities, the assets the company holds include digital assets, which the Commission staff does not like to see in fund portfolios.  See Staff Letter: Engaging on Fund Innovation and Cryptocurrency-related Holdings (Jan. 18, 2018), https://www.sec.gov/divisions/investment/noaction/2018/cryptocurrency-011818.htm (identifying a series of questions under five broad topic headings and concluding that “[u]ntil the questions identified above can be addressed satisfactorily, we do not believe that it is appropriate for fund sponsors to initiate registration of funds that intend to invest substantially in cryptocurrency and related products”).  See also Staff Statement on Funds Registered under the Investment Company Act Investing in the Bitcoin Futures Market (May 11, 2021), https://www.sec.gov/news/public-statement/staff-statement-investing-bitcoin-futures-market (acknowledging the growth of the Bitcoin futures market and stating that the staff intends to “closely monitor” any mutual fund investments in Bitcoin futures).'"''
'"'"''
'"[8] BlockFi Lending LLC, Order Instituting Proceedings, ¶ 43.b.'"''
'"'"''
'"[9] Section 6(c) of the Investment Company Act, 15 U.S.C. § 80-6(c), provides that the Commission may conditionally or unconditionally exempt any person, security or transaction, or any class or classes of persons, securities or transactions, from any provision or provisions of the Investment Company Act, or any rule or regulation thereunder, if and to the extent that such exemption is necessary or appropriate in the public interest and consistent with the protection of investors and the purposes fairly intended by the policy and provisions of the Investment Company Act.'"''
'"<h1 align="center">Auto Assign</h1>
<p align="center">Automatically add reviewers/assignees to issues/PRs</p>

- [Randomly](https://lodash.com/docs/#sampleSize) pick assignees and reviewers from candidate list.
- Automatically ignore invalid Github username.
- Automatically skip assigned issues/PRs and reviewer requested PRs.
- **Try-to** pick the member of team as assignee when adding [team](https://docs.github.com/en/organizations/organizing-members-into-teams/about-teams) to assignees.

**Note that** the default `${{ secrets.GITHUB_TOKEN }}` does not have the permission to **add teams as reviewers** or to **list members of a team**. As a workaround:

  - First, [create a personal access token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) with `repo` and `admin:org` permissions.
  - Then, make the PAT available to our actions by [adding the token as a secret](https://docs.github.com/en/actions/security-guides/encrypted-secrets).
  - Finally, replace the `GITHUB_TOKEN` with the new secret, e.g. `GITHUB_TOKEN: ${{ secrets.NAME_OF_MY_SECRET_CONTAINING_PAT_WITH_REPO_ACCESS }}` instead of `GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}`.

Or with a cool but slightly cumbersome solution: create a private [github app](https://probot.github.io/) for your org with custom permissions and avatar, then [use the app token in out workflow](https://github.com/wow-actions/use-app-token), e.g. [wow-actions-bot](https://github.com/apps/wow-actions-bot).

## Usage

Create `.github/workflows/auto-assign.yml` in the default branch:

```yaml
name: Auto Assign
on:
  issues:
    types: [opened, edited, labeled, unlabeled]
  pull_request:
    types: [opened, edited, labeled, unlabeled]
jobs:
  run:
    runs-on: ubuntu-latest
    steps:
      - uses: wow-actions/auto-assign@v3
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          # using the `org/team_slug` or `/team_slug` syntax to add git team as reviewers
          reviewers: |
            reviewer1
            reviewer2
            reviewer3
            org/teamReviewerA
            org/teamReviewerB
            /teamReviewerC
          assignees: assignee1, assignee2, assignee3
          skipKeywords: wip, draft
```

### Inputs

Various inputs are defined to let you configure the action:

> Note: [Workflow command and parameter names are not case-sensitive](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-commands-for-github-actions#about-workflow-commands).

| Name                | Description                                                                                                     | Default |
|---------------------|-----------------------------------------------------------------------------------------------------------------|---------|
| `GITHUB_TOKEN`      | The GitHub token for authentication                                                                             | N/A     |
| `addReviewers`      | Set to `true` to add reviewers to PRs.                                                                          | `true`  |
| `addAssignees`      | Set to `true` to add assignees to issues/PRs.                                                                   | `true`  |
| `reviewers`         | Candidate list of reviewers(GitHub username) to be added to PR.                                                 | `[]`    |
| `assignees`         | Candidate list of assignees(GitHub user name) to be added to issue/PR. Uses `reviewers` if not set.             | `[]`    |
| `numberOfReviewers` | Number of reviewers added to the PR. Set `0` to add all the reviewers.                                          | `0`     |
| `numberOfAssignees` | Number of assignees added to the issue/PR. Set `0` to add all the assignees. Uses `numberReviewers` if not set. | `0`     |
| `skipDraft`         | Set to `false` to run on draft PRs.                                                                             | `true`  |
| `skipKeywords`      | A list of keywords to be skipped the process if issue/PR's title include it.                                    | `[]`    |
| `includeLabels`     | Only to run when issue/PR has one of the label.                                                                 | `[]`    |
| `excludeLabels`     | Not to run when issue/PR has one of the label.                                                                  | `[]`    |

## License
"""Run Python's test suite in a fast, rigorous way.

The defaults are meant to be reasonably thorough, while skipping certain
tests that can be time-consuming or resource-intensive (e.g. largefile),
or distracting (e.g. audio and gui). These defaults can be overridden by
simply passing a -u option to this script.

"""

import os
import shlex
import sys
import sysconfig
import test.support


def is_multiprocess_flag(arg):
    return arg.startswith('-j') or arg.startswith('--multiprocess')


def is_resource_use_flag(arg):
    return arg.startswith('-u') or arg.startswith('--use')

def is_python_flag(arg):
    return arg.startswith('-p') or arg.startswith('--python')


def main(regrtest_args):
    args = [sys.executable,
            '-u',                 # Unbuffered stdout and stderr
            '-W', 'default',      # Warnings set to 'default'
            '-bb',                # Warnings about bytes/bytearray
            ]

    cross_compile = '_PYTHON_HOST_PLATFORM' in os.environ
    if (hostrunner := os.environ.get("_PYTHON_HOSTRUNNER")) is None:
        hostrunner = sysconfig.get_config_var("HOSTRUNNER")
    if cross_compile:
        # emulate -E, but keep PYTHONPATH + cross compile env vars, so
        # test executable can load correct sysconfigdata file.
        keep = {
            '_PYTHON_PROJECT_BASE',
            '_PYTHON_HOST_PLATFORM',
            '_PYTHON_SYSCONFIGDATA_NAME',
            'PYTHONPATH'
        }
        environ = {
            name: value for name, value in os.environ.items()
            if not name.startswith(('PYTHON', '_PYTHON')) or name in keep
        }
    else:
        environ = os.environ.copy()
        args.append("-E")

    # Allow user-specified interpreter options to override our defaults.
    args.extend(test.support.args_from_interpreter_flags())

    args.extend(['-m', 'test',    # Run the test suite
                 '-r',            # Randomize test order
                 '-w',            # Re-run failed tests in verbose mode
                 ])
    if sys.platform == 'win32':
        args.append('-n')         # Silence alerts under Windows
    if not any(is_multiprocess_flag(arg) for arg in regrtest_args):
        if cross_compile and hostrunner:
            # For now use only two cores for cross-compiled builds;
            # hostrunner can be expensive.
            args.extend(['-j', '2'])
        else:
            args.extend(['-j', '0'])  # Use all CPU cores
    if not any(is_resource_use_flag(arg) for arg in regrtest_args):
        args.extend(['-u', 'all,-largefile,-audio,-gui'])

    if cross_compile and hostrunner:
        # If HOSTRUNNER is set and -p/--python option is not given, then
        # use hostrunner to execute python binary for tests.
        if not any(is_python_flag(arg) for arg in regrtest_args):
            buildpython = sysconfig.get_config_var("BUILDPYTHON")
            args.extend(["--python", f"{hostrunner} {buildpython}"])

    args.extend(regrtest_args)

    print(shlex.join(args))
    if sys.platform == 'win32':
        from subprocess import call
        sys.exit(call(args))
    else:
        os.execve(sys.executable, args, environ)


if __name__ == '__main__':
    main(sys.argv[1:])
    File by Mail Instructions for your 2022 Federal Tax Return
Important: Your taxes are not finished until all required steps are completed.
(If you prefer, you can still e-file. Go to the end of these instructions for
 more information.)
ZACHRY T WOOD
5222 Bradford Dr
Dallas, TX 75235-8313
Page 1 of 2
|
Balance | Your federal tax return (Form 1040) shows you are due a refund of
Due/ | $283,372,930,143.00.
Refund |
______________________________________________________________________________________ |
|
What You | Your tax return - The official return for mailing is included in
Need to | this printout.
Mail | - Sign and date your tax return.
| - Enter your Identity Protection PIN in the box labeled 'If
| the IRS sent you an ID Protection PIN, enter here.' This
| box is located on the same line as the spouse's signature.
|
| Attach the first copy or Copy B of Form(s) W-2 to the front of your
| Form 1040.
|
| Mail your return and attachments to:
| Department of the Treasury
| Internal Revenue Service
| Austin, TX 73301-0002
|
| Deadline: Postmarked by Tuesday, April 18, 2023
|
| Note: Your state return may be due on a different date. Please
| review your state filing instructions.
|
| Don't forget correct postage on the envelope.
______________________________________________________________________________________ |
|
What You | Keep these instructions and a copy of your return for your records.
Need to | You can download or print a copy of your return by logging into your
Keep | TurboTax account.
______________________________________________________________________________________ |
|
2022 | Adjusted Gross Income $ 5,105,000.00
Federal | Taxable Income $ 5,092,050.00
Tax | Total Tax $ 2,201,159.00
Return | Total Payments/Credits 283,375,131,302.00
Summary | Amount to be Refunded 283,372,930,143.00
| Effective Tax Rate 36.18%
______________________________________________________________________________________ |
|
Estimated | Estimated Payments for 2023 - Do not mail these vouchers with your
Payments to | 2022 income tax return. The estimated vouchers displayed below are
Make for Next | used to prepay your 2023 income taxes that will be filed next year.
Year's Return | If you expect to owe more than $1,000 in 2023, you may incur
| underpayment penalties if you do not make these four estimated tax
| payments. This printout includes your estimated tax vouchers for your
| federal estimated taxes (Form 1040-ES).
______________________________________________________________________________________ |
File by Mail Instructions for your 2022 Federal Tax Return
Important: Your taxes are not finished until all required steps are completed.
(If you prefer, you can still e-file. Go to the end of these instructions for
 more information.)
ZACHRY T WOOD
5222 Bradford Dr
Dallas, TX 75235-8313
Page 2 of 2
|
Estimated | Mail payments according to the schedule below:
Payments to |
Make for Next | Voucher Number Due Date Amount
Year's Return | 1 04/18/2023 $ 48,035.00
(Continued) | 2 06/15/2023 $ 48,035.00
| 3 09/15/2023 $ 48,035.00
| 4 01/16/2024 $ 48,035.00
|
| Include a separate check or money order for each payment, payable to
| "United States Treasury". Write your social security number and "Form
| 1040-ES" on each check.
|
| Mail payments to:
| Internal Revenue Service
| P.O. Box 1300
| Charlotte, NC 28201-1300
______________________________________________________________________________________ |
|
Changed | You can still file electronically. Just go back to TurboTax, select
Your Mind | the File tab, then select the E-file category. We'll walk you
About | through the process. Once you file, we will let you know if your
e-filing? | return is accepted (or rejected) by the Internal Revenue Service.
______________________________________________________________________________________ |
 Form 1040-ES Payment Voucher
I I Detach Here and Mail With Your Payment
Department of the Treasury Calendar Year ' Internal Revenue Service Due
File only if you are making a payment of estimated tax by check or money order. Mail this Amount of estimated tax voucher with your check or money order payable to the 'United States Treasury.' Write your
social security number and ' Form 1040-ES' on your check or money order. Do not send you are paying by check
cash. Enclose, but do not staple or attach, your payment with this voucher. or money order. . . . . . . . . . G
1
DALLAS TX 75235-8313
48,035.
5222 BRADFORD DR
633-44-1725
INTERNAL REVENUE SERVICE
PO BOX 1300
CHARLOTTE NC 28201-1300
04/18/2023 2023
2023
REV 02/10/23 INTUIT.CG.CFP.SP 1555
ZACHRY T WOOD
633441725 BH WOOD 30 0 202312 430
 Form 1040-ES Payment Voucher
I I Detach Here and Mail With Your Payment
Department of the Treasury Calendar Year ' Internal Revenue Service Due
File only if you are making a payment of estimated tax by check or money order. Mail this Amount of estimated tax voucher with your check or money order payable to the 'United States Treasury.' Write your
social security number and ' Form 1040-ES' on your check or money order. Do not send you are paying by check
cash. Enclose, but do not staple or attach, your payment with this voucher. or money order. . . . . . . . . . G
2
DALLAS TX 75235-8313
48,035.
5222 BRADFORD DR
633-44-1725
INTERNAL REVENUE SERVICE
PO BOX 1300
CHARLOTTE NC 28201-1300
06/15/2023 2023
2023
REV 02/10/23 INTUIT.CG.CFP.SP 1555
ZACHRY T WOOD
633441725 BH WOOD 30 0 202312 430
 Form 1040-ES Payment Voucher
I I Detach Here and Mail With Your Payment
Department of the Treasury Calendar Year ' Internal Revenue Service Due
File only if you are making a payment of estimated tax by check or money order. Mail this Amount of estimated tax voucher with your check or money order payable to the 'United States Treasury.' Write your
social security number and ' Form 1040-ES' on your check or money order. Do not send you are paying by check
cash. Enclose, but do not staple or attach, your payment with this voucher. or money order. . . . . . . . . . G
3
DALLAS TX 75235-8313
48,035.
5222 BRADFORD DR
633-44-1725
INTERNAL REVENUE SERVICE
PO BOX 1300
CHARLOTTE NC 28201-1300
09/15/2023 2023
2023
REV 02/10/23 INTUIT.CG.CFP.SP 1555
ZACHRY T WOOD
633441725 BH WOOD 30 0 202312 430
 Form 1040-ES Payment Voucher
I I Detach Here and Mail With Your Payment
Department of the Treasury Calendar Year ' Internal Revenue Service Due
File only if you are making a payment of estimated tax by check or money order. Mail this Amount of estimated tax voucher with your check or money order payable to the 'United States Treasury.' Write your
social security number and ' Form 1040-ES' on your check or money order. Do not send you are paying by check
cash. Enclose, but do not staple or attach, your payment with this voucher. or money order. . . . . . . . . . G
4
DALLAS TX 75235-8313
48,035.
5222 BRADFORD DR
633-44-1725
INTERNAL REVENUE SERVICE
PO BOX 1300
CHARLOTTE NC 28201-1300
01/16/2024 2023
2023
REV 02/10/23 INTUIT.CG.CFP.SP 1555
ZACHRY T WOOD
633441725 BH WOOD 30 0 202312 430
Form 1040 U.S. Individual Income Tax Return 2022 Department of the Treasury—Internal Revenue Service
OMB No. 1545-0074 IRS Use Only—Do not write or staple in this space.
Filing Status
Check only
one box.
Single Married filing jointly Married filing separately (MFS) Head of household (HOH) Qualifying surviving
spouse (QSS)
If you checked the MFS box, enter the name of your spouse. If you checked the HOH or QSS box, enter the child’s name if the qualifying
person is a child but not your dependent:
Your first name and middle initial Last name Your social security number
If joint return, spouse’s first name and middle initial Last name Spouse’s social security number
Home address (number and street). If you have a P.O. box, see instructions. Apt. no.
City, town, or post office. If you have a foreign address, also complete spaces below. State ZIP code
Foreign country name Foreign province/state/county Foreign postal code
Presidential Election Campaign
Check here if you, or your
spouse if filing jointly, want $3
to go to this fund. Checking a
box below will not change
your tax or refund.
You Spouse
Digital
Assets
At any time during 2022, did you: (a) receive (as a reward, award, or payment for property or services); or (b) sell,
exchange, gift, or otherwise dispose of a digital asset (or a financial interest in a digital asset)? (See instructions.) Yes No
Standard
Deduction
Someone can claim: You as a dependent Your spouse as a dependent
Spouse itemizes on a separate return or you were a dual-status alien
Age/Blindness You: Were born before January 2, 1958 Are blind Spouse: Was born before January 2, 1958 Is blind
Dependents (see instructions):
If more
than four
dependents,
see instructions
and check
here . .
(2) Social security
number
(3) Relationship
to you
(4) Check the box if qualifies for (see instructions):
(1) First name Last name Child tax credit Credit for other dependents
Income
Attach Form(s)
W-2 here. Also
attach Forms
W-2G and
1099-R if tax
was withheld.
If you did not
get a Form
W-2, see
instructions.
1 a Total amount from Form(s) W-2, box 1 (see instructions) ............. 1a
b Household employee wages not reported on Form(s) W-2 ............. 1b
c Tip income not reported on line 1a (see instructions) .............. 1c
d Medicaid waiver payments not reported on Form(s) W-2 (see instructions) ........ 1d
e Taxable dependent care benefits from Form 2441, line 26 ............ 1e
f Employer-provided adoption benefits from Form 8839, line 29 ........... 1f
g Wages from Form 8919, line 6 ..................... 1g
h Other earned income (see instructions) .................. 1h
i Nontaxable combat pay election (see instructions) ....... 1i
z Add lines 1a through 1h ...................... 1z
Attach Sch. B
if required.
2a Tax-exempt interest . . . 2a b Taxable interest ..... 2b
3a Qualified dividends . . . 3a b Ordinary dividends ..... 3b
4a IRA distributions .... 4a b Taxable amount ...... 4b
5a Pensions and annuities . . 5a b Taxable amount ...... 5b
6a Social security benefits . . 6a b Taxable amount ...... 6b
c If you elect to use the lump-sum election method, check here (see instructions) .....
7 Capital gain or (loss). Attach Schedule D if required. If not required, check here ..... 7
8 Other income from Schedule 1, line 10 .................. 8
9 Add lines 1z, 2b, 3b, 4b, 5b, 6b, 7, and 8. This is your total income .......... 9
10 Adjustments to income from Schedule 1, line 26 ............... 10
11 Subtract line 10 from line 9. This is your adjusted gross income .......... 11
Standard
Deduction for—
• Single or
Married filing
separately,
$12,950
• Married filing
jointly or
Qualifying
surviving spouse,
$25,900
• Head of
household,
$19,400
• If you checked
any box under
Standard
Deduction,
see instructions.
12 Standard deduction or itemized deductions (from Schedule A) .......... 12
13 Qualified business income deduction from Form 8995 or Form 8995-A ......... 13
14 Add lines 12 and 13 ........................ 14
15 Subtract line 14 from line 11. If zero or less, enter -0-. This is your taxable income ..... 15
For Disclosure, Privacy Act, and Paperwork Reduction Act Notice, see separate instructions. Form 1040 (2022)
WOOD 633-44-1725
5222 Bradford Dr
Dallas TX 752358313
5,105,000.
5,105,000.
12,950.
12,950.
5,092,050.
5,105,000.
5,105,000.
0.
ZACHRY T
Form 1040 (2022) Page 2
Tax and
Credits
16 Tax (see instructions). Check if any from Form(s): 1 8814 2 4972 3 . . 16
17 Amount from Schedule 2, line 3 .................... 17
18 Add lines 16 and 17 . . . . . . . . . . . . . . . . . . . . . . . . 18
19 Child tax credit or credit for other dependents from Schedule 8812 .......... 19
20 Amount from Schedule 3, line 8 .................... 20
21 Add lines 19 and 20 ........................ 21
22 Subtract line 21 from line 18. If zero or less, enter -0- .............. 22
23 Other taxes, including self-employment tax, from Schedule 2, line 21 ......... 23
24 Add lines 22 and 23. This is your total tax ................. 24
Payments 25 Federal income tax withheld from:
a Form(s) W-2 .................. 25a
b Form(s) 1099 .................. 25b
c Other forms (see instructions) ............. 25c
d Add lines 25a through 25c ...................... 25d
26 2022 estimated tax payments and amount applied from 2021 return .......... 26 If you have a
qualifying child,
attach Sch. EIC.
27 Earned income credit (EIC) .............. 27
28 Additional child tax credit from Schedule 8812 ........ 28
29 American opportunity credit from Form 8863, line 8 ....... 29
30 Reserved for future use ............... 30
31 Amount from Schedule 3, line 15 ............ 31
32 Add lines 27, 28, 29, and 31. These are your total other payments and refundable credits . . 32
33 Add lines 25d, 26, and 32. These are your total payments ............ 33
Refund 34 If line 33 is more than line 24, subtract line 24 from line 33. This is the amount you overpaid . . 34
35a Amount of line 34 you want refunded to you. If Form 8888 is attached, check here .... 35a
Direct deposit?
See instructions.
b Routing number c Type: Checking Savings
d Account number
36 Amount of line 34 you want applied to your 2023 estimated tax ... 36
Amount
You Owe
37 Subtract line 33 from line 24. This is the amount you owe.
For details on how to pay, go to www.irs.gov/Payments or see instructions . . . . . . . . 37
38 Estimated tax penalty (see instructions) .......... 38
Third Party
Designee
Do you want to allow another person to discuss this return with the IRS? See
instructions . . . . . . . . . . . . . . . . . . . . . Yes. Complete below. No
Designee’s
name
Phone
no.
Personal identification
number (PIN)
Sign
Here
Joint return?
See instructions.
Keep a copy for
your records.
Under penalties of perjury, I declare that I have examined this return and accompanying schedules and statements, and to the best of my knowledge and
belief, they are true, correct, and complete. Declaration of preparer (other than taxpayer) is based on all information of which preparer has any knowledge.
Your signature Date Your occupation If the IRS sent you an Identity
Protection PIN, enter it here
(see inst.)
Spouse’s signature. If a joint return, both must sign. Date Spouse’s occupation If the IRS sent your spouse an
Identity Protection PIN, enter it here
(see inst.)
Phone no. Email address
Paid
Preparer
Use Only
Preparer’s name Preparer’s signature Date PTIN Check if:
Self-employed
Firm’s name Phone no.
Firm’s address Firm’s EIN
Go to www.irs.gov/Form1040 for instructions and the latest information. Form 1040 (2022)
Cook / Helper
(469)905-0682
1,888,138.
0.
1,888,138.
283,373,243,164.
283,375,131,302.
9 7 9 6 5 2
1,847,014.
1,847,014.
283,372,930,143.
283,372,930,143.
X X X X X X X X X
X X X X X X X X X X X X X X X X X
 Self-Prepared
No
1,847,014.
354,145.
2,201,159.
BAA REV 02/10/23 Intuit.cg.cfp.sp
SCHEDULE 2
(Form 1040)
2022 Additional Taxes
Department of the Treasury
Internal Revenue Service
Attach to Form 1040, 1040-SR, or 1040-NR.
Go to www.irs.gov/Form1040 for instructions and the latest information.
OMB No. 1545-0074
Attachment
Sequence No. 02
Name(s) shown on Form 1040, 1040-SR, or 1040-NR Your social security number
Part I Tax
1 Alternative minimum tax. Attach Form 6251 ................ 1
2 Excess advance premium tax credit repayment. Attach Form 8962 ....... 2
3 Add lines 1 and 2. Enter here and on Form 1040, 1040-SR, or 1040-NR, line 17 . . 3
Part II Other Taxes
4 Self-employment tax. Attach Schedule SE ................. 4
5 Social security and Medicare tax on unreported tip income.
Attach Form 4137 .................. 5
6 Uncollected social security and Medicare tax on wages. Attach
Form 8919 ..................... 6
7 Total additional social security and Medicare tax. Add lines 5 and 6 ...... 7
8 Additional tax on IRAs or other tax-favored accounts. Attach Form 5329 if required.
If not required, check here ..................... 8
9 Household employment taxes. Attach Schedule H ............. 9
10 Repayment of first-time homebuyer credit. Attach Form 5405 if required ..... 10
11 Additional Medicare Tax. Attach Form 8959 ................ 11
12 Net investment income tax. Attach Form 8960 ............... 12
13 Uncollected social security and Medicare or RRTA tax on tips or group-term life
insurance from Form W-2, box 12 .................... 13
14 Interest on tax due on installment income from the sale of certain residential lots
and timeshares ............................ 14
15 Interest on the deferred tax on gain from certain installment sales with a sales price
over $150,000 ............................ 15
16 Recapture of low-income housing credit. Attach Form 8611 .......... 16
(continued on page 2)
For Paperwork Reduction Act Notice, see your tax return instructions. Schedule 2 (Form 1040) 2022
ZACHRY T WOOD 633-44-1725
44,145.
310,000.
Schedule 2 (Form 1040) 2022 Page 2
Part II Other Taxes (continued)
17 Other additional taxes:
a Recapture of other credits. List type, form number, and amount:
17a
b Recapture of federal mortgage subsidy, if you sold your home
see instructions ................... 17b
c Additional tax on HSA distributions. Attach Form 8889 .... 17c
d Additional tax on an HSA because you didn’t remain an eligible
individual. Attach Form 8889 .............. 17d
e Additional tax on Archer MSA distributions. Attach Form 8853 . 17e
f Additional tax on Medicare Advantage MSA distributions. Attach
Form 8853 ..................... 17f
g Recapture of a charitable contribution deduction related to a
fractional interest in tangible personal property ....... 17g
h Income you received from a nonqualified deferred compensation
plan that fails to meet the requirements of section 409A . . . 17h
i Compensation you received from a nonqualified deferred
compensation plan described in section 457A ....... 17i
j Section 72(m)(5) excess benefits tax ........... 17j
k Golden parachute payments .............. 17k
l Tax on accumulation distribution of trusts ......... 17l
m Excise tax on insider stock compensation from an expatriated
corporation ..................... 17m
n Look-back interest under section 167(g) or 460(b) from Form
8697 or 8866 .................... 17n
o Tax on non-effectively connected income for any part of the
year you were a nonresident alien from Form 1040-NR .... 17o
p Any interest from Form 8621, line 16f, relating to distributions
from, and dispositions of, stock of a section 1291 fund .... 17p
q Any interest from Form 8621, line 24 ........... 17q
z Any other taxes. List type and amount:
17z
18 Total additional taxes. Add lines 17a through 17z .............. 18
19 Reserved for future use ........................ 19
20 Section 965 net tax liability installment from Form 965-A . . . 20
21 Add lines 4, 7 through 16, and 18. These are your total other taxes. Enter here and
on Form 1040 or 1040-SR, line 23, or Form 1040-NR, line 23b ......... 21
Schedule 2 (Form 1040) 2022
354,145.
BAA REV 02/10/23 Intuit.cg.cfp.sp
Form 8959
Department of the Treasury
Internal Revenue Service
Additional Medicare Tax
If any line does not apply to you, leave it blank. See separate instructions.
Attach to Form 1040, 1040-SR, 1040-NR, 1040-PR, or 1040-SS.
Go to www.irs.gov/Form8959 for instructions and the latest information.
OMB No. 1545-0074
2022
Attachment
Sequence No. 71
Name(s) shown on return Your social security number
Part I Additional Medicare Tax on Medicare Wages
1 Medicare wages and tips from Form W-2, box 5. If you have more than one
Form W-2, enter the total of the amounts from box 5 ........ 1
2 Unreported tips from Form 4137, line 6 ............. 2
3 Wages from Form 8919, line 6 ................ 3
4 Add lines 1 through 3 . . . . . . . . . . . . . . . . . . . 4
5 Enter the following amount for your filing status:
Married filing jointly ............... $250,000
Married filing separately .............. $125,000
Single, Head of household, or Qualifying surviving spouse . . . $200,000 5
6 Subtract line 5 from line 4. If zero or less, enter -0- . . . . . . . . . . . . . . . . . 6
7 Additional Medicare Tax on Medicare wages. Multiply line 6 by 0.9% (0.009). Enter here and go to
Part II ................................ 7
Part II Additional Medicare Tax on Self-Employment Income
8 Self-employment income from Schedule SE (Form 1040), Part I, line 6. If you
had a loss, enter -0- (Form 1040-PR or 1040-SS filers, see instructions.) . . 8
9 Enter the following amount for your filing status:
Married filing jointly................ $250,000
Married filing separately .............. $125,000
Single, Head of household, or Qualifying surviving spouse . . . $200,000 9
10 Enter the amount from line 4 ................ 10
11 Subtract line 10 from line 9. If zero or less, enter -0- ......... 11
12 Subtract line 11 from line 8. If zero or less, enter -0- ................. 12
13 Additional Medicare Tax on self-employment income. Multiply line 12 by 0.9% (0.009). Enter here and
go to Part III .............................. 13
Part III Additional Medicare Tax on Railroad Retirement Tax Act (RRTA) Compensation
14 Railroad retirement (RRTA) compensation and tips from Form(s) W-2, box 14
(see instructions) . . . . . . . . . . . . . . . . . . . . 14
15 Enter the following amount for your filing status:
Married filing jointly ............... $250,000
Married filing separately .............. $125,000
Single, Head of household, or Qualifying surviving spouse . . . $200,000 15
16 Subtract line 15 from line 14. If zero or less, enter -0- ................ 16
17 Additional Medicare Tax on railroad retirement (RRTA) compensation. Multiply line 16 by 0.9% (0.009).
Enter here and go to Part IV ......................... 17
Part IV Total Additional Medicare Tax
18 Add lines 7, 13, and 17. Also include this amount on Schedule 2 (Form 1040), line 11 (Form 1040-PR
or 1040-SS filers, see instructions), and go to Part V ................. 18
Part V Withholding Reconciliation
19 Medicare tax withheld from Form W-2, box 6. If you have more than one Form
W-2, enter the total of the amounts from box 6 .......... 19
20 Enter the amount from line 1 ................ 20
21 Multiply line 20 by 1.45% (0.0145). This is your regular Medicare tax
withholding on Medicare wages ............... 21
22 Subtract line 21 from line 19. If zero or less, enter -0-. This is your Additional Medicare Tax
withholding on Medicare wages ....................... 22
23 Additional Medicare Tax withholding on railroad retirement (RRTA) compensation from Form W-2, box
14 (see instructions) ........................... 23
24 Total Additional Medicare Tax withholding. Add lines 22 and 23. Also include this amount with
federal income tax withholding on Form 1040, 1040-SR, or 1040-NR, line 25c (Form 1040-PR or
1040-SS filers, see instructions) ....................... 24
For Paperwork Reduction Act Notice, see your tax return instructions. Form 8959 (2022)
44,145.
200,000.
5,105,000.
5,105,000.
4,905,000.
44,145.
74,023.
0.
0.
0.
5,105,000.
ZACHRY T WOOD 633-44-1725
BAA REV 02/10/23 Intuit.cg.cfp.sp
Form 8960
Department of the Treasury
Internal Revenue Service
Net Investment Income Tax—
Individuals, Estates, and Trusts
Attach to your tax return.
Go to www.irs.gov/Form8960 for instructions and the latest information.
OMB No. 1545-2227
2022
Attachment
Sequence No. 72
Name(s) shown on your tax return Your social security number or EIN
Part I Investment Income Section 6013(g) election (see instructions)
Section 6013(h) election (see instructions)
Regulations section 1.1411-10(g) election (see instructions)
1 Taxable interest (see instructions) . . . . . . . . . . . . . . . . . . . . . . . 1
2 Ordinary dividends (see instructions) ...................... 2
3 Annuities (see instructions) ......................... 3
4 a Rental real estate, royalties, partnerships, S corporations, trusts, etc. (see
instructions) ...................... 4a
b Adjustment for net income or loss derived in the ordinary course of a nonsection 1411 trade or business (see instructions) .......... 4b
c Combine lines 4a and 4b .......................... 4c
5a Net gain or loss from disposition of property (see instructions) ..... 5a
b Net gain or loss from disposition of property that is not subject to net
investment income tax (see instructions) ............ 5b
c Adjustment from disposition of partnership interest or S corporation stock (see
instructions) ...................... 5c
d Combine lines 5a through 5c ........................ 5d
6 Adjustments to investment income for certain CFCs and PFICs (see instructions) ....... 6
7 Other modifications to investment income (see instructions) .............. 7
8 Total investment income. Combine lines 1, 2, 3, 4c, 5d, 6, and 7 ............. 8
Part II Investment Expenses Allocable to Investment Income and Modifications
9a Investment interest expenses (see instructions) .......... 9a
b State, local, and foreign income tax (see instructions) ........ 9b
c Miscellaneous investment expenses (see instructions) ........ 9c
d Add lines 9a, 9b, and 9c .......................... 9d
10 Additional modifications (see instructions) .................... 10
11 Total deductions and modifications. Add lines 9d and 10 ............... 11
Part III Tax Computation
12 Net investment income. Subtract Part II, line 11, from Part I, line 8. Individuals, complete lines 13–17.
Estates and trusts, complete lines 18a–21. If zero or less, enter -0- ............ 12
Individuals:
13 Modified adjusted gross income (see instructions) ......... 13
14 Threshold based on filing status (see instructions) ......... 14
15 Subtract line 14 from line 13. If zero or less, enter -0- ........ 15
16 Enter the smaller of line 12 or line 15 ...................... 16
17 Net investment income tax for individuals. Multiply line 16 by 3.8% (0.038). Enter here and include
on your tax return (see instructions) ...................... 17
Estates and Trusts:
18a Net investment income (line 12 above) ............. 18a
b Deductions for distributions of net investment income and deductions under
section 642(c) (see instructions) ............... 18b
c Undistributed net investment income. Subtract line 18b from line 18a (see
instructions). If zero or less, enter -0- ............. 18c
19a Adjusted gross income (see instructions) ............ 19a
b Highest tax bracket for estates and trusts for the year (see instructions) . . 19b
c Subtract line 19b from line 19a. If zero or less, enter -0- ....... 19c
20 Enter the smaller of line 18c or line 19c ..................... 20
21 Net investment income tax for estates and trusts. Multiply line 20 by 3.8% (0.038). Enter here and
include on your tax return (see instructions) ................... 21
For Paperwork Reduction Act Notice, see your tax return instructions. Form 8960 (2022)
200,000.
ZACHRY T WOOD 633-44-1725
5,105,000.
4,905,000.
0.
0.
0.
BAA REV 02/10/23 Intuit.cg.cfp.sp
File by Mail Instructions for your 2022 New York Tax Return
Important: Your taxes are not finished until all required steps are completed.
(If you prefer, you can still e-file. Go to the end of these instructions for
 more information.)
ZACHRY T WOOD
5222 BRADFORD DR
Dallas, TX 75235-8313
Page 1 of 2
|
Balance | Your New York state tax return (Form IT-203) shows you owe a balance
Due/ | due of $527,091.00.
Refund |
| You are making a partial payment of $527,080.00 by direct debit. The
| elected date of withdrawal is February 23, 2023.
|
| You have a remaining balance due of $11.00.
|
| Mail a check or money order for $11.00, payable to "NYS Income Tax"
| with your payment voucher (Form IT-201-V).Write your Social Security
| number and "2022 Form IT-203" on the check.
|
| You can also pay your balance due by credit card. For more
| information, go to
| www.tax.ny.gov/pay/all/wells_fargo_card_payment_information.htm.
______________________________________________________________________________________ |
|
What You | Your tax return - The official return for mailing is included in
Need to | this printout. Remember to sign and date the return.
Mail |
| Do not attach copies of federal Form(s) W-2 to your tax return. New
| York form(s) IT-2, 'Summary of W-2 Statements' are to be attached to
| your tax return instead. These form(s) (when required) are
| automatically generated using W-2 data entered in your federal tax
| return.
|
| Mail your return and attachments to:
| State Processing Center
| PO Box 15555
| Albany, NY 12212-5555
|
| Deadline: Postmarked by April 18, 2023
|
| Don't forget correct postage on the envelope.
______________________________________________________________________________________ |
|
What You | Keep these instructions and a copy of your return for your records.
Need to | You can download or print a copy of your return by logging into your
Keep | TurboTax account.
______________________________________________________________________________________ |
|
2022 | Taxable Income $ 5,097,000.00
New York | Total Tax $ 527,091.00
Tax | Payment Due $ 527,091.00
Return |
Summary |
______________________________________________________________________________________ |
File by Mail Instructions for your 2022 New York Tax Return
Important: Your taxes are not finished until all required steps are completed.
(If you prefer, you can still e-file. Go to the end of these instructions for
 more information.)
ZACHRY T WOOD
5222 BRADFORD DR
Dallas, TX 75235-8313
Page 2 of 2
|
Estimated | New York Estimated Payment Vouchers for 2023 - Do not mail the
Payments to | following vouchers (Form IT-2105) with your 2022 income tax return.
Make for Next | These vouchers are used to prepay your 2023 income taxes that will be
Year's Return | filed next year.
|
| Mail payments according to the schedule below:
|
| Voucher Number Due Date Amount
| 1 04/18/2023 $ 144,950.00
| 2 06/15/2023 $ 144,950.00
| 3 09/15/2023 $ 144,950.00
| 4 01/16/2024 $ 144,950.00
|
| You can pay this amount electronically through the NY State
| Department of taxation website at https://www.tax.ny.gov.
| If you chooose to file by mail, include a separate check
| or money order for each payment, payable to, "NYS Income Tax".
| Write "2023 IT-2105" on each check.
|
| Mail your estimated payments to:
|
| NYS Estimated Income Tax
| Processing Center
| PO Box 4122
| Binghamton, NY 13902-4122
______________________________________________________________________________________ |
|
Special | Your printed state tax forms may have special formatting on them,
Formatting | such as bar codes or other symbols. This is to enable fast
| processing. Don't worry, these forms have been approved by your
| taxing authority and are acceptable for printing and mailing.
______________________________________________________________________________________ |
|
Changed | You can still file electronically. Just go back to TurboTax, select
Your Mind | the File tab, then select the E-file category. We'll walk you
About | through the process. Once you file, we will let you know if your
e-filing? | return is accepted (or rejected) by the state taxing agency.
______________________________________________________________________________________ |
Visit our website at www.tax.ny.gov
• get information and manage your taxes online
• check for new online services and features
Telephone assistance
Automated income tax refund status: 518-457-5149
Personal Income Tax Information Center: 518-457-5181
To order forms and publications: 518-457-5431
Text Telephone (TTY) or TDD Dial 7-1-1 for the
equipment users New York Relay Service
Need help?
Detach (cut) here Ż Ź
Department of Taxation and Finance
Tips for Estimated Tax
Did you know? You can pay your estimated tax electronically on our
website with a debit from your checking or savings account. Visit us on
the Web at www.tax.ny.gov to pay your estimated tax electronically.
For assistance, see Form IT-2105-I, Instructions for Form IT-2105,
Estimated Tax Payment Voucher for Individuals.
To help us match your New York State estimated tax account to your
New York State income tax return, and to avoid a delay in processing
your return, note the following:
 6RFLDO 6HFXULW\ QXPEHU 661WD[SD\HU LGHQWL¿FDWLRQ ,'
number – Make sure that the entire SSN used on your vouchers
agrees with the number on your Social Security card and the number
used on your New York State income tax return. If you use a taxpayer
ID number, this number must agree with the number used on your
New York State income tax return. Failure to do so may result in
monies not being properly credited to your account.
• Name – Make sure that your name is spelled correctly. You should
HQWHU\RXU¿UVWQDPHPLGGOHLQLWLDOWKHQODVWQDPHLQWKHVSDFHV
provided (for example, John O. Smith). Your name must agree with
the name on your New York State income tax return.
• Foreign addresses – Enter the information in the following order:
city, province or state, and then country (all in the City, village, or post
R௻FH box). Follow the country’s practice for entering the postal code.
Do not abbreviate the country name.
• Married taxpayers – Each married taxpayer should establish a
separate estimated tax account. If you and your spouse each maintain
DQHVWLPDWHGWD[DFFRXQWDQG¿OHDMRLQW1HZ<RUN6WDWHLQFRPH
WD[UHWXUQZHZLOOFUHGLWWKHEDODQFHVRIERWKDFFRXQWVWR\RXUMRLQW
income tax return.
 $OO ¿OHUV must be sure to separately enter the amounts for
New York State, New York City, Yonkers, and MCTMT; then enter the
total in the Total payment box.
Note: If there is no amount to be entered for one or more lines, leave
them blank.
Do not staple or clip the check or money order to the voucher. Detach
any check stubs before mailing.
Department of Taxation and Finance
(VWLPDWHG 7D[ 3D\PHQW 9RXFKHU IRU ,QGLYLGXDOV
New York State • New York City • Yonkers • MCTMT
,7
Full SSN or taxpayer ID number
7D[SD\HU¶V¿UVWQDPHDQGPLGGOHLQLWLDO Taxpayer’s last name
Mailing address (number and street or PO Box; see instructions) Apartment number
&LW\YLOODJHRUSRVWRႈFH 6WDWH =,3FRGH
Taxpayer’s email address
&DOHQGDU\HDU ¿OHU GXH GDWHV April 18, 2023; June 15, 2023; September 15, 2023; and January 16, 2024. Enter applicable amount(s) and total payment
in the boxes to the right. Print the last four digits of your SSN or taxpayer ID number and 2023 IT-2105 on your payment. Make payable to NYS Income
Tax. Mail voucher and payment to: NYS Estimated Income Tax, Processing Center, PO Box 4122, Binghamton NY 13902-4122.
Enter your FKDUDFWHU VSHFLDO
condition code if applicable (see instr.) .....
Estimated tax amounts
New York State
New York City
Yonkers
MCTMT
Total payment
Dollars Cents





STOP: Pay this electronically on our website
ZACHRY T
633441725
WOOD
5222 BRADFORD DR
DALLAS TX 75235-8313
144950
144950
CR12753750.00BITORE341731337@GMAIL.COM
REV 01/27/23 INTUIT.CG.CFP.SP
0601234555 633441725 7
Visit our website at www.tax.ny.gov
• get information and manage your taxes online
• check for new online services and features
Telephone assistance
Automated income tax refund status: 518-457-5149
Personal Income Tax Information Center: 518-457-5181
To order forms and publications: 518-457-5431
Text Telephone (TTY) or TDD Dial 7-1-1 for the
equipment users New York Relay Service
Need help?
Detach (cut) here Ż Ź
Department of Taxation and Finance
Tips for Estimated Tax
Did you know? You can pay your estimated tax electronically on our
website with a debit from your checking or savings account. Visit us on
the Web at www.tax.ny.gov to pay your estimated tax electronically.
For assistance, see Form IT-2105-I, Instructions for Form IT-2105,
Estimated Tax Payment Voucher for Individuals.
To help us match your New York State estimated tax account to your
New York State income tax return, and to avoid a delay in processing
your return, note the following:
 6RFLDO 6HFXULW\ QXPEHU 661WD[SD\HU LGHQWL¿FDWLRQ ,'
number – Make sure that the entire SSN used on your vouchers
agrees with the number on your Social Security card and the number
used on your New York State income tax return. If you use a taxpayer
ID number, this number must agree with the number used on your
New York State income tax return. Failure to do so may result in
monies not being properly credited to your account.
• Name – Make sure that your name is spelled correctly. You should
HQWHU\RXU¿UVWQDPHPLGGOHLQLWLDOWKHQODVWQDPHLQWKHVSDFHV
provided (for example, John O. Smith). Your name must agree with
the name on your New York State income tax return.
• Foreign addresses – Enter the information in the following order:
city, province or state, and then country (all in the City, village, or post
R௻FH box). Follow the country’s practice for entering the postal code.
Do not abbreviate the country name.
• Married taxpayers – Each married taxpayer should establish a
separate estimated tax account. If you and your spouse each maintain
DQHVWLPDWHGWD[DFFRXQWDQG¿OHDMRLQW1HZ<RUN6WDWHLQFRPH
WD[UHWXUQZHZLOOFUHGLWWKHEDODQFHVRIERWKDFFRXQWVWR\RXUMRLQW
income tax return.
 $OO ¿OHUV must be sure to separately enter the amounts for
New York State, New York City, Yonkers, and MCTMT; then enter the
total in the Total payment box.
Note: If there is no amount to be entered for one or more lines, leave
them blank.
Do not staple or clip the check or money order to the voucher. Detach
any check stubs before mailing.
Department of Taxation and Finance
(VWLPDWHG 7D[ 3D\PHQW 9RXFKHU IRU ,QGLYLGXDOV
New York State • New York City • Yonkers • MCTMT
,7
Full SSN or taxpayer ID number
7D[SD\HU¶V¿UVWQDPHDQGPLGGOHLQLWLDO Taxpayer’s last name
Mailing address (number and street or PO Box; see instructions) Apartment number
&LW\YLOODJHRUSRVWRႈFH 6WDWH =,3FRGH
Taxpayer’s email address
&DOHQGDU\HDU ¿OHU GXH GDWHV April 18, 2023; June 15, 2023; September 15, 2023; and January 16, 2024. Enter applicable amount(s) and total payment
in the boxes to the right. Print the last four digits of your SSN or taxpayer ID number and 2023 IT-2105 on your payment. Make payable to NYS Income
Tax. Mail voucher and payment to: NYS Estimated Income Tax, Processing Center, PO Box 4122, Binghamton NY 13902-4122.
Enter your FKDUDFWHU VSHFLDO
condition code if applicable (see instr.) .....
Estimated tax amounts
New York State
New York City
Yonkers
MCTMT
Total payment
Dollars Cents





STOP: Pay this electronically on our website
ZACHRY T
633441725
WOOD
5222 BRADFORD DR
DALLAS TX 75235-8313
144950
144950
CR12753750.00BITORE341731337@GMAIL.COM
REV 01/27/23 INTUIT.CG.CFP.SP
0601234555 633441725 7
Visit our website at www.tax.ny.gov
• get information and manage your taxes online
• check for new online services and features
Telephone assistance
Automated income tax refund status: 518-457-5149
Personal Income Tax Information Center: 518-457-5181
To order forms and publications: 518-457-5431
Text Telephone (TTY) or TDD Dial 7-1-1 for the
equipment users New York Relay Service
Need help?
Detach (cut) here Ż Ź
Department of Taxation and Finance
Tips for Estimated Tax
Did you know? You can pay your estimated tax electronically on our
website with a debit from your checking or savings account. Visit us on
the Web at www.tax.ny.gov to pay your estimated tax electronically.
For assistance, see Form IT-2105-I, Instructions for Form IT-2105,
Estimated Tax Payment Voucher for Individuals.
To help us match your New York State estimated tax account to your
New York State income tax return, and to avoid a delay in processing
your return, note the following:
 6RFLDO 6HFXULW\ QXPEHU 661WD[SD\HU LGHQWL¿FDWLRQ ,'
number – Make sure that the entire SSN used on your vouchers
agrees with the number on your Social Security card and the number
used on your New York State income tax return. If you use a taxpayer
ID number, this number must agree with the number used on your
New York State income tax return. Failure to do so may result in
monies not being properly credited to your account.
• Name – Make sure that your name is spelled correctly. You should
HQWHU\RXU¿UVWQDPHPLGGOHLQLWLDOWKHQODVWQDPHLQWKHVSDFHV
provided (for example, John O. Smith). Your name must agree with
the name on your New York State income tax return.
• Foreign addresses – Enter the information in the following order:
city, province or state, and then country (all in the City, village, or post
R௻FH box). Follow the country’s practice for entering the postal code.
Do not abbreviate the country name.
• Married taxpayers – Each married taxpayer should establish a
separate estimated tax account. If you and your spouse each maintain
DQHVWLPDWHGWD[DFFRXQWDQG¿OHDMRLQW1HZ<RUN6WDWHLQFRPH
WD[UHWXUQZHZLOOFUHGLWWKHEDODQFHVRIERWKDFFRXQWVWR\RXUMRLQW
income tax return.
 $OO ¿OHUV must be sure to separately enter the amounts for
New York State, New York City, Yonkers, and MCTMT; then enter the
total in the Total payment box.
Note: If there is no amount to be entered for one or more lines, leave
them blank.
Do not staple or clip the check or money order to the voucher. Detach
any check stubs before mailing.
Department of Taxation and Finance
(VWLPDWHG 7D[ 3D\PHQW 9RXFKHU IRU ,QGLYLGXDOV
New York State • New York City • Yonkers • MCTMT
,7
Full SSN or taxpayer ID number
7D[SD\HU¶V¿UVWQDPHDQGPLGGOHLQLWLDO Taxpayer’s last name
Mailing address (number and street or PO Box; see instructions) Apartment number
&LW\YLOODJHRUSRVWRႈFH 6WDWH =,3FRGH
Taxpayer’s email address
&DOHQGDU\HDU ¿OHU GXH GDWHV April 18, 2023; June 15, 2023; September 15, 2023; and January 16, 2024. Enter applicable amount(s) and total payment
in the boxes to the right. Print the last four digits of your SSN or taxpayer ID number and 2023 IT-2105 on your payment. Make payable to NYS Income
Tax. Mail voucher and payment to: NYS Estimated Income Tax, Processing Center, PO Box 4122, Binghamton NY 13902-4122.
Enter your FKDUDFWHU VSHFLDO
condition code if applicable (see instr.) .....
Estimated tax amounts
New York State
New York City
Yonkers
MCTMT
Total payment
Dollars Cents





STOP: Pay this electronically on our website
ZACHRY T
633441725
WOOD
5222 BRADFORD DR
DALLAS TX 75235-8313
144950
144950
CR12753750.00BITORE341731337@GMAIL.COM
REV 01/27/23 INTUIT.CG.CFP.SP
0601234555 633441725 7
Visit our website at www.tax.ny.gov
• get information and manage your taxes online
• check for new online services and features
Telephone assistance
Automated income tax refund status: 518-457-5149
Personal Income Tax Information Center: 518-457-5181
To order forms and publications: 518-457-5431
Text Telephone (TTY) or TDD Dial 7-1-1 for the
equipment users New York Relay Service
Need help?
Detach (cut) here Ż Ź
Department of Taxation and Finance
Tips for Estimated Tax
Did you know? You can pay your estimated tax electronically on our
website with a debit from your checking or savings account. Visit us on
the Web at www.tax.ny.gov to pay your estimated tax electronically.
For assistance, see Form IT-2105-I, Instructions for Form IT-2105,
Estimated Tax Payment Voucher for Individuals.
To help us match your New York State estimated tax account to your
New York State income tax return, and to avoid a delay in processing
your return, note the following:
 6RFLDO 6HFXULW\ QXPEHU 661WD[SD\HU LGHQWL¿FDWLRQ ,'
number – Make sure that the entire SSN used on your vouchers
agrees with the number on your Social Security card and the number
used on your New York State income tax return. If you use a taxpayer
ID number, this number must agree with the number used on your
New York State income tax return. Failure to do so may result in
monies not being properly credited to your account.
• Name – Make sure that your name is spelled correctly. You should
HQWHU\RXU¿UVWQDPHPLGGOHLQLWLDOWKHQODVWQDPHLQWKHVSDFHV
provided (for example, John O. Smith). Your name must agree with
the name on your New York State income tax return.
• Foreign addresses – Enter the information in the following order:
city, province or state, and then country (all in the City, village, or post
R௻FH box). Follow the country’s practice for entering the postal code.
Do not abbreviate the country name.
• Married taxpayers – Each married taxpayer should establish a
separate estimated tax account. If you and your spouse each maintain
DQHVWLPDWHGWD[DFFRXQWDQG¿OHDMRLQW1HZ<RUN6WDWHLQFRPH
WD[UHWXUQZHZLOOFUHGLWWKHEDODQFHVRIERWKDFFRXQWVWR\RXUMRLQW
income tax return.
 $OO ¿OHUV must be sure to separately enter the amounts for
New York State, New York City, Yonkers, and MCTMT; then enter the
total in the Total payment box.
Note: If there is no amount to be entered for one or more lines, leave
them blank.
Do not staple or clip the check or money order to the voucher. Detach
any check stubs before mailing.
Department of Taxation and Finance
(VWLPDWHG 7D[ 3D\PHQW 9RXFKHU IRU ,QGLYLGXDOV
New York State • New York City • Yonkers • MCTMT
,7
Full SSN or taxpayer ID number
7D[SD\HU¶V¿UVWQDPHDQGPLGGOHLQLWLDO Taxpayer’s last name
Mailing address (number and street or PO Box; see instructions) Apartment number
&LW\YLOODJHRUSRVWRႈFH 6WDWH =,3FRGH
Taxpayer’s email address
&DOHQGDU\HDU ¿OHU GXH GDWHV April 18, 2023; June 15, 2023; September 15, 2023; and January 16, 2024. Enter applicable amount(s) and total payment
in the boxes to the right. Print the last four digits of your SSN or taxpayer ID number and 2023 IT-2105 on your payment. Make payable to NYS Income
Tax. Mail voucher and payment to: NYS Estimated Income Tax, Processing Center, PO Box 4122, Binghamton NY 13902-4122.
Enter your FKDUDFWHU VSHFLDO
condition code if applicable (see instr.) .....
Estimated tax amounts
New York State
New York City
Yonkers
MCTMT
Total payment
Dollars Cents





STOP: Pay this electronically on our website
ZACHRY T
633441725
WOOD
5222 BRADFORD DR
DALLAS TX 75235-8313
144950
144950
CR12753750.00BITORE341731337@GMAIL.COM
REV 01/27/23 INTUIT.CG.CFP.SP
0601234555 633441725 7
Department of Taxation and Finance
Instructions for Form IT-201-V
Payment Voucher for Income Tax Returns
IT-201-V
(12/22)
Did you know? You can pay your income tax return payment
directly on our website from your bank account or by credit
card through your individual Online Services account. Visit
www.tax.ny.gov.
How to use this form
If you are paying New York State income tax by check or
money order, you must include Form IT-201-V with your
payment.
Check or money order
• Make your check or money order payable in U.S. funds to
New York State Income Tax.
• Be sure to write the last four digits of your Social Security
number (SSN), the tax year, and Income Tax on it.
Completing the voucher
Be sure to complete all information on the voucher.
 (QWHUWKHWD[\HDUIURPWKHLQFRPHWD[UHWXUQ\RXDUH¿OLQJ
and your entire SSN. Failure to do so may result in monies
not being properly credited to your account.
 ,I¿OLQJDMRLQWUHWXUQLQFOXGHLQIRUPDWLRQIRUERWKVSRXVHV
• Foreign address – Enter the city, province, or state all in
the City box, and the full country name in the Country box.
Enter the postal code, if any, in the ZIP code box.
• Do not staple or clip your payment to Form IT-201-V.
,QVWHDGMXVWSXWWKHPORRVHLQWKHHQYHORSH
You cannot use this form to pay a bill or other notice
from the Tax Department that indicates you owe tax;
you must use the payment document included with that bill or
notice.
You cannot use this form to request an installment payment
agreement (IPA); see our website for information about
requesting an IPA.
Mailing address
(¿OHGDQGSUHYLRXVO\¿OHGUHWXUQV
,I\RXH¿OHG\RXULQFRPHWD[UHWXUQRULI\RXDUHPDNLQJD
SD\PHQWIRUDSUHYLRXVO\¿OHGUHWXUQPDLOWKHYRXFKHUDQG
payment to:
NYS PERSONAL INCOME TAX
PROCESSING CENTER
PO BOX 4124
BINGHAMTON NY 13902-4124
Paper returns
,I\RXDUH¿OLQJDSDSHULQFRPHWD[UHWXUQLQFOXGLQJDPHQGHG
returns), include the voucher and payment with your return
and mail to this address:
STATE PROCESSING CENTER
PO BOX 15555
ALBANY NY 12212-5555
If you are not using U.S. Mail, be sure to consult
Publication 55, Designated Private Delivery Services.
IT-201-V
(12/22)
Your¿UVWQDPHDQGPLGGOHLQLWLDO <RXUODVWQDPH(for a joint return, enter spouse’s name on line below) Your full SSN
Spouse’s ¿UVWQDPHDQGPLGGOHLQLWLDO Spouse’s last name Spouse’s full SSN RQO\LI¿OLQJDMRLQWUHWXUQ
Mailing address Apartment number Country
&LW\YLOODJHRUSRVWRႈFH 6WDWH =,3FRGH
Department of Taxation and Finance
Payment Voucher for Income Tax Returns
Email:
Tax year (yyyy)
Cut here Ż Ź
)RUR௻FHXVHRQO\
 Dollars Cents
Payment
amount 00
STOP: Pay this electronically
on our website.
Make your check or money order payable in U.S. funds to New York State Income Tax. Write
on your check or money order the last four digits of your SSN, the tax year, and Income Tax.
ZACHRY T WOOD 633441725
5222 BRADFORD DR
DALLAS TX 75235-8313
2022
CR12753750.00BITORE341731337@GMAIL.COM 11
REV 01/27/23 INTUIT.CG.CFP.SP
040001224555
0401224555 633441725 7
TR-573.1 (6/18) www.tax.ny.gov
New York State requires this income tax return to be filed electronically.
New York State law requires income tax returns prepared using software to be e-filed. Because this New York
State tax return was prepared using software, you MUST file it electronically.
Besides being the law, e-filing has many advantages:
• Taxpayers using e-file get their New York State refunds twice as fast as paper filers.
• E-filing is fast, easy, and secure.
• There are no additional costs for e-filing. Once you’ve paid for your New York State tax preparation software, you’re entitled to FREE e-filing of your New York State return.
Most New Yorkers enjoy the benefits of e-filing.
Questions?
Visit our website for more information about New York’s e-file mandate.
Office of Processing and Taxpayer Services
W A Harriman Campus, Albany NY 12227-0865
ZACHRY T WOOD
4555
Department of Taxation and Finance
Nonresident and Part-Year Resident
Income Tax Return New York State • New York City • Yonkers • MCTMT
IT-203
D2 Yonkers part-year residents only:
(1) Did you receive a homeowner tax rebate
credit? (see instructions) ..........................Yes No
(2) Enter the amount ................................ .00
E New York City part-year residents only
(1) Number of months you lived in NY City in 2022 ....
(2) Number of months your spouse lived
in NY City in 2022 ..................................................
F Enter your 2-character special condition
code(s) if applicable ..................................
G New York State part-year residents
Enter the date you moved into
or out of NYS (mmddyyyy)........................
On the last day of the tax year (mark an X in one box):
1) Lived in NYS .................................................................
2) Lived outside NYS; received income from
NYS sources during nonresident period .......................
3) Lived outside NYS; received no income from
NYS sources during nonresident period .......................
H Did you or your spouse maintain
living quarters in NYS in 2022?..................Yes No
 (if Yes, complete Form IT-203-B)
c Single
d Married¿OLQJMRLQWUHWXUQ
(enter both spouses’ Social Security numbers above)
e 0DUULHG¿OLQJVHSDUDWHUHWXUQ
(enter both spouses’ Social Security numbers above)
f Head of household (with qualifying person)
g Qualifying surviving spouse
A Filing
status
(mark an
X in one
box):
B Did you itemize your deductions on your 2022
 federal income tax return? ....................................... Yes No
C Can you be claimed as a dependent on another
 taxpayer’s federal return? ........................................ Yes No
D1 'LG\RXKDYHD¿QDQFLDODFFRXQWORFDWHGLQD
foreign country? ....................................................... Yes No
 Taxpayer’s date of death Spouse’s date of death
School district
code number
Decedent
information
Taxpayer’s permanent home address (see instructions) (no. and street or rural route) $SDUWPHQWQR &LW\YLOODJHRUSRVWRႈFH
State ZIP code Country
Your Social Security number
Spouse’s Social Security number
For help completing your return, see the instructions, Form IT-203-I.
Your ¿UVWQDPHDQGPLGGOHLQLWLDO Your last name (for a joint return, enter spouse’s name on line below) Your date of birth (mmddyyyy)
Spouse’s¿UVWQDPHDQGPLGGOHLQLWLDO Spouse’s last name Spouse’s date of birth (mmddyyyy)
Mailing address (see instructions) (number and street or PO Box) Apartment number
&LW\YLOODJHRUSRVWRႈFH 6WDWH =,3FRGH &RXQWU\
New York State county of residence
School district name
First name and middle initial Last name Relationship Social Security number Date of birth (mmddyyyy)
I Dependent information
If more than 6 dependents, mark an X in the box.
 )RU WKH \HDU -DQXDU\   WKURXJK 'HFHPEHU   RU ¿VFDO \HDU EHJLQQLQJ ........... 22
and ending ...........
)RUR௻FHXVHRQO\
633441725
5222 BRADFORD DR
DALLAS TX 75235-8313
NR
NR
10151994
NO HANDWRITTEN ENTRIES, OTHER THAN SIGNATURE, ON THIS FORM
TX 75235
REV 01/27/23 INTUIT.CG.CFP.SP
ZACHRY T WOOD
UNITED STATES
3126 HUNDALL APT F108, APT F108, DALLAS
203001224555
Page 2 of 4 IT-203 (2022)
 24 7D[DEOHUHIXQGVFUHGLWVRURႇVHWVRIVWDWHDQG
 local income taxes (from line 4) .................................... 24 .00 24 .00
 25 Pensions of NYS and local governments and the
 federal government ..................................................... 25 .00 25 .00
 26 7D[DEOHDPRXQWRI6RFLDO6HFXULW\EHQH¿WV(from line 15) 26 .00 26 .00
 27 Interest income on U.S. government bonds ................... 27 .00 27 .00
 28 Pension and annuity income exclusion .......................... 28 .00 28 .00
 29 Other (Form IT-225, line 18) ................................................ 29 .00 29 .00
 30 Add lines 24 through 29 ................................................. 30 .00 30 .00
 31 New York adjusted gross income (subtract line 30 from line 23) 31 .00 31 .00
 32 Enter the amount from line 31, Federal amount column .......................................................... 32 .00
New York subtractions
Enter your Social Security number
 20 Interest income on state and local bonds and obligations
 (but not those of New York State or its localities) ................ 20 .00 20 .00
 21 Public employee 414(h) retirement contributions ........... 21 .00 21 .00
 22 Other (Form IT-225, line 9) .................................................. 22 .00 22 .00
 23 Add lines 19a through 22 ............................................... 23 .00 23 .00
New York additions
Federal amount
 Whole dollars only
 1 Wages, salaries, tips, etc. .............................................. 1 .00 1 .00
 2 Taxable interest income ................................................. 2 .00 2 .00
 3 Ordinary dividends ......................................................... 3 .00 3 .00
 4 7D[DEOHUHIXQGVFUHGLWVRURႇVHWVRIVWDWHDQGORFDO
 income taxes (also enter on line 24) ............................. 4 .00 4 .00
 5 Alimony received ............................................................ 5 .00 5 .00
 6 Business income or loss (submit a copy of federal Sch. C, Form 1040) 6 .00 6 .00
 7 Capital gain or loss (if required, submit a copy of federal Sch. D, Form 1040) 7 .00 7 .00
 8 Other gains or losses (submit a copy of federal Form 4797) 8 .00 8 .00
 9 7D[DEOHDPRXQWRI,5$GLVWULEXWLRQV%HQH¿FLDULHVPDUNX in box 9 .00 9 .00
 10 7D[DEOHDPRXQWRISHQVLRQVDQQXLWLHV%HQH¿FLDULHVPDUNX in box 10 .00 10 .00
 11 Rental real estate, royalties, partnerships, S corporations,
 trusts, etc. (submit a copy of federal Schedule E, Form 1040) 11 .00 11 .00
12 Rental real estate included
 in line 11 (federal amount) 12. .00
 13 Farm income or loss (submit a copy of federal Sch. F, Form 1040) 13 .00 13 .00
 14 Unemployment compensation......................................... 14 .00 14 .00
 15 7D[DEOHDPRXQWRI6RFLDO6HFXULW\EHQH¿WV(also enter on line 26) 15 .00 15 .00
 16 Other income Identify: 16 .00 16 .00
 17 Add lines 1 through 11 and 13 through 16 .................. 17 .00 17 .00
 18 7RWDOIHGHUDODGMXVWPHQWVWRLQFRPH
 Identify: 18 .00 18 .00
 19 )HGHUDODGMXVWHGJURVVLQFRPH(subtract line 18 from line 17) .. 19 .00 19 .00
19a Recomputed federal adjusted gross income (see Line 19a worksheets) 19a .00 19a .00
Federal income and adjustments
New York State amount
 Whole dollars only
5105000
5105000
5105000
5105000
5105000
633441725
NO HANDWRITTEN ENTRIES, OTHER THAN SIGNATURE, ON THIS FORM
5125282
5125282
5125282
5125282
5125282
5125282
5105000
5105000
REV 01/27/23 INTUIT.CG.CFP.SP
203002224555
New York City and Yonkers taxes, credits, and surcharges, and MCTMT
Name(s) as shown on page 1 Enter your Social Security number IT-203 (2022) Page 3 of 4
37 New York taxable income (from line 36) ........................................................................................ 37 .00
38 New York State tax on line 37 amount .......................................................................................... 38 .00
39 New York State household credit .................................................................................................. 39 .00
40 Subtract line 39 from line 38 (if line 39 is more than line 38, leave blank) ............................................ 40 .00
41 New York State child and dependent care credit .......................................................................... 41 .00
42 Subtract line 41 from line 40 (if line 41 is more than line 40, leave blank) ............................................ 42 .00
43 New York State earned income credit ......................................................................... 43 .00
44 Base tax (subtract line 43 from line 42; if line 43 is more than line 42, leave blank) ................................. 44 .00
45 Income New York State amount from line 31 Federal amount from line 31 Round result to 4 decimal places
 percentage .00 ÷ .00 = 45
46 Allocated New York State tax (multiply line 44 by the decimal on line 45) ........................................... 46 .00
47 New York State nonrefundable credits (Form IT-203-ATT, line 8) ..................................................... 47 .00
48 Subtract line 47 from line 46 (if line 47 is more than line 46, leave blank) ........................................... 48 .00
49 Net other New York State taxes (Form IT-203-ATT, line 33) ............................................................. 49 .00
50 Total New York State taxes (add lines 48 and 49) ......................................................................... 50 .00
 51 Part-year New York City resident tax (Form IT-360.1) ....... 51 .00
 52 Part-year resident nonrefundable New York City
 child and dependent care credit .................................. 52 .00
52a Subtract line 52 from 51 .................................................. 52a .00
52b MCTMT net
 earnings base .... 52b .00
52c MCTMT ............................................................................ 52c .00
 53 Yonkers nonresident earnings tax (Form Y-203) ............... 53 .00
 54 Part-year Yonkers resident income tax surcharge
 (Form IT-360.1) .............................................................. 54 .00
 55 Total New York City and Yonkers taxes / surcharges and MCTMT (add lines 52a, and 52c through 54) 55 .00
 56 Sales or use tax (Do not leave blank.) ....................................................................................... 56 .00
 57 Voluntary contributions (Form IT-227, Part 2, line 1) ................................................................... 57 .00
 58 Total New York State, New York City, Yonkers, and sales or use taxes, MCTMT,
 and voluntary contributions (add lines 50, 55, 56, and 57) ..................................................... 58 .00
See instructions to compute
New York City and Yonkers
taxes, credits, and
surcharges, and MCTMT.
Tax computation, credits, and other taxes
 33 Enter your standard deduction or your itemized deduction (from Form IT-196).
 Mark an X in the appropriate box: ... Standard – or – Itemized 33 .00
 34 Subtract line 33 from line 32 (if line 33 is more than line 32, leave blank) ......................................... 34 .00
 35 Dependent exemptions (enter the number of dependents listed in Item I; see instructions) .................. 35 000.00
 36 New York taxable income (subtract line 35 from line 34) .............................................................. 36 .00
Standard deduction or itemized deduction
633441725
NO HANDWRITTEN ENTRIES, OTHER THAN SIGNATURE, ON THIS FORM
1.0040
8000
ZACHRY T WOOD
5125282 5105000
5097000
5097000
5097000
524991
524991
524991
524991
527091
527091
527091
527091
0
REV 01/27/23 INTUIT.CG.CFP.SP
203003224555
Your signature
Your occupation
Spouse’s signature and occupation (if joint return)
Date Daytime phone number
Email:
 60 3DUW\HDU1<&VFKRROWD[FUHGLW¿[HGDPRXQW(also complete E on front) 60 .00
60a NYC school tax credit (rate reduction amount) ..................... 60a .00
 61 Other refundable credits (Form IT-203-ATT, line 17) ............ 61 .00
 62 Total New York State tax withheld ................................... 62 .00
 63 Total New York City tax withheld ..................................... 63 .00
 64 Total Yonkers tax withheld ............................................... 64 .00
 65 Total estimated tax payments/amount paid with Form IT-370 65 .00
 66 Total payments and refundable credits (add lines 60 through 65) ............................................. 66 .00
Payments and refundable credits
59 Enter amount from line 58 ............................................................................................................ 59 .00
If applicable, complete
Form(s) IT-2 and/or IT-1099-R
and submit them with your
return.
Do not send federal
Form W-2 with your return.
 67 Amount overpaid (if line 66 is more than line 59, subtract line 59 from line 66) ................................ 67 .00
 68 Amount of line 67 available for refund (subtract line 69 from line 67) .......................................... 68 .00
 TIP: Use this amount to check your refund status online.
68a Amount of line 68 that you want to deposit into a NYS 529 account (Form IT-195, line 4) (also submit Form IT-195) 68a .00
68b Total refund after NYS 529 account deposit (subtract line 68a from line 68) .................................. 68b .00
 direct deposit to checking or - or - paper
 Mark one refund choice: savings account ¿OOLQOLQH check
 69 Amount of line 67 that you want applied to your 2023
 estimated tax (see instructions) ...................................... 69 .00
 70 Amount you owe (if line 66 is less than line 59, subtract line 66 from line 59). To pay by electronic
 funds withdrawal, mark an XLQWKHER[ DQG¿OOLQOLQHVDQG,I\RXSD\E\FKHFN
 or money order you must complete Form IT-201-V and mail it with your return. .................... 70 .00
 71 Estimated tax penalty (include this amount on line 70,
 or reduce the overpayment on line 67) ................................ 71 .00
 72 Other penalties and interest .................................................... 72 .00
 73 Account information for direct deposit or electronic funds withdrawal.
 If the funds for your payment (or refund) would come from (or go to) an account outside the U.S., mark an X in this box ..................
See instructions for where to mail your return.
Refund? Direct deposit is the
easiest, fastest way to get your
refund.
See instructions for payment
options.
Enter your Social Security number
See instructions for the
proper assembly of your
return.
Your refund, amount you owe, and account information
 73a Account type: Personal checking - or - Personal savings - or - Business checking - or - Business savings
73b Routing number 73c Account number
 74 Electronic funds withdrawal ....................................................... Date Amount .00
Page 4 of 4 IT-203 (2022)
3ULQWGHVLJQHH¶VQDPH 'HVLJQHH¶VSKRQHQXPEHU 3HUVRQDOLGHQWL¿FDWLRQ
 ( ) number (PIN)
 Email:
Third-party
designee? (see instr.)
Yes No
ź Taxpayer(s) must sign here ź
( )
ź Paid preparer must complete ź
(see instructions)
Preparer’s NYTPRIN NYTPRIN
 excl. code
Preparer’s signature Preparer’s printed name
Firm’s name (or yours, if self-employed) Preparer’s PTIN or SSN
$GGUHVV   (PSOR\HULGHQWL¿FDWLRQQXPEHU
 Date
Email:
633441725
NO HANDWRITTEN ENTRIES, OTHER THAN SIGNATURE, ON THIS FORM
SELF-PREPARED
COOK / HELPER
469 905 0682
527091
527091
02232023 527080
121000248 4121350227
CR12753750.00BITORE341731337@GM
REV 01/27/23 INTUIT.CG.CFP.SP
203004224555
N Y
N Y
IT-2 Department of Taxation and Finance
Summary of W-2 Statements
New York State • New York City • Yonkers
Box b (PSOR\HULGHQWL¿FDWLRQQXPEHU(,1
Box b (PSOR\HULGHQWL¿FDWLRQQXPEHU(,1
Box 12a $PRXQW &RGH
.00
Box 12b $PRXQW &RGH
.00
Box 12c $PRXQW &RGH
.00
Box 12d $PRXQW &RGH
.00
Box 12a $PRXQW &RGH
.00
Box 12b $PRXQW &RGH
.00
Box 12c $PRXQW &RGH
.00
Box 12d $PRXQW &RGH
.00
Box 1 Wages, tips, other compensation
.00
Box 8 Allocated tips
.00
Box 10 'HSHQGHQWFDUHEHQH¿WV
.00
Box 11 1RQTXDOL¿HGSODQV
.00
Box 1 Wages, tips, other compensation
.00
Box 8 Allocated tips
.00
Box 10 'HSHQGHQWFDUHEHQH¿WV
.00
Box 11 1RQTXDOL¿HGSODQV
.00
W-2 Record 1
W-2 Record 2
Employer’s name
Employer’s name
Box c Employer’s information
Box c Employer’s information
Employer’s address (number and street)
Employer’s address (number and street)
&LW\ 6WDWH =,3FRGH &RXQWU\
&LW\ 6WDWH =,3FRGH &RXQWU\
Do not detach or separateWKH:5HFRUGVEHORZ)LOH)RUP,7DVDQHQWLUHSDJHZLWK\RXUUHWXUQ6HHLQVWUXFWLRQVRQWKHEDFN
Box a Employee’s 6RFLDO6HFXULW\QXPEHU
for this W-2 Record
Box a Employee’s 6RFLDO6HFXULW\QXPEHU
for this W-2 Record
Box 16b 2WKHUVWDWHZDJHVWLSVHWF Box 17b 2WKHUVWDWHLQFRPHWD[ZLWKKHOG
.00 .00
Box 16b 2WKHUVWDWHZDJHVWLSVHWF Box 17b 2WKHUVWDWHLQFRPHWD[ZLWKKHOG
.00 .00
Box 14a $PRXQW 'HVFULSWLRQ
.00
Box 14b $PRXQW 'HVFULSWLRQ
.00
Box 14c $PRXQW 'HVFULSWLRQ
.00
Box 14d $PRXQW 'HVFULSWLRQ
.00
Box 14a $PRXQW 'HVFULSWLRQ
.00
Box 14b $PRXQW 'HVFULSWLRQ
.00
Box 14c $PRXQW 'HVFULSWLRQ
.00
Box 14d $PRXQW 'HVFULSWLRQ
.00
Box 16a 1<6ZDJHVWLSVHWF Box 17a 1<6LQFRPHWD[ZLWKKHOG
.00 .00
Box 16a 1<6ZDJHVWLSVHWF Box 17a 1<6LQFRPHWD[ZLWKKHOG
.00 .00
NY6WDWHLQIRUPDWLRQ
NY6WDWHLQIRUPDWLRQ
OtherVWDWHLQIRUPDWLRQ
OtherVWDWHLQIRUPDWLRQ
NYC and Yonkers
information (see instr.)
NYC and Yonkers
information (see instr.)
Do not detach.
Box 15a
1<6WDWH
Box 15a
1<6WDWH
Box 15b
other state
Box 15b
other state
Box 18 /RFDOZDJHVWLSVHWF  Box 19 /RFDOLQFRPHWD[ZLWKKHOG  Box 20 Locality name
Locality a .00 Locality a .00 Locality a
/RFDOLW\E .00 /RFDOLW\E .00 /RFDOLW\E
Box 18 /RFDOZDJHVWLSVHWF Box 19 /RFDOLQFRPHWD[ZLWKKHOG Box 20 Locality name
Locality a .00 Locality a .00 Locality a
/RFDOLW\E .00 /RFDOLW\E .00 /RFDOLW\E
&RUUHFWHG:F
&RUUHFWHG:F
Box 13 6WDWXWRU\HPSOR\HH
Box 13 6WDWXWRU\HPSOR\HH
Retirement plan
Retirement plan
7KLUGSDUW\VLFNSD\
7KLUGSDUW\VLFNSD\
NO HANDWRITTEN ENTRIES ON THIS FORM
ZACHRY T WOOD ZACHRY T WOOD
633441725 5222 BRADFORD DR
881303491 DALLAS TX 75235
5105000 310000 A 257657263607 FUEAL AND ENERG
0
0
999999
T X 109648 2601514
REV 01/27/23 INTUIT.CG.CFP.SP
102001224555
File by Mail Instructions for your 2022 California Tax Return
Important: Your taxes are not finished until all required steps are completed.
(If you prefer, you can still e-file. Go to the end of these instructions for
 more information.)
ZACHRY T WOOD
5222 Bradford Dr
Dallas, TX 75235-8313
Page 1 of 1
|
Balance | Your California state tax return (Form 540NR) shows no balance due or
Due/ | refund amount.
Refund |
______________________________________________________________________________________ |
|
What You | Your tax return - The official return for mailing is included in
Need to | this printout. Remember to sign and date the return.
Mail |
| Attach the following to your California tax return:
| - a copy of your federal return
| - all Form(s) W-2 and W-2G. Also attach any 592-B, 593,
| and 1099s that have California withholding to the
| front of your return.
|
| Mail your return and attachments to:
| Franchise Tax Board
| PO Box 942840
| Sacramento, CA 94240-0001
|
| Deadline: Postmarked by April 18, 2023
|
| Don't forget correct postage on the envelope.
______________________________________________________________________________________ |
|
What You | Keep these instructions and a copy of your return for your records.
Need to | You can download or print a copy of your return by logging into your
Keep | TurboTax account.
______________________________________________________________________________________ |
|
2022 | Taxable Income $ 0.00
California | Total Tax $ 0.00
Tax | No Refund or Amount Due $ 0.00
Return | Effective Tax Rate 0.00%
Summary |
______________________________________________________________________________________ |
|
Special | Your printed state tax forms may have special formatting on them,
Formatting | such as bar codes or other symbols. This is to enable fast
| processing. Don't worry, these forms have been approved by your
| taxing authority and are acceptable for printing and mailing.
______________________________________________________________________________________ |
|
Changed | You can still file electronically. Just go back to TurboTax, select
Your Mind | the File tab, then select the E-file category. We'll walk you
About | through the process. Once you file, we will let you know if your
e-filing? | return is accepted (or rejected) by the state taxing agency.
______________________________________________________________________________________ |
3131224 Form 540NR 2022 Side 1
●
● ● ●
●
Filing Status
6 If someone can claim you (or your spouse/RDP) as a dependent, check the box here. See instr. ...... 6
Exemptions
▶ For line 7, line 8, line 9, and line 10: Multiply the number you enter in the box by the pre-printed dollar amount for that line.
Whole dollars only 7 Personal: If you checked box 1, 3, or 4 above, enter 1 in the box. If you
checked box 2 or 5, enter 2. If you checked the box on line 6, see instructions. 7 X $140 =
X $140 =
X $140 =
$
$
$
8 Blind: If you (or your spouse/RDP) are visually impaired, enter 1;
if both are visually impaired, enter 2 .................................. 8
9 Senior: If you (or your spouse/RDP) are 65 or older, enter 1;
if both are 65 or older, enter 2. See instructions. ......................... 9
10 Dependents: Do not include yourself or your spouse/RDP.
Dependent 1 Dependent 2 Dependent 3
First Name
Last Name
SSN. See
instructions.
Dependent's
relationship
to you
California Nonresident or Part-Year
Resident Income Tax Return
1 Single
2
3
Married/RDP filing jointly. See instr.
Married/RDP filing separately.
4 Head of household (with qualifying person). See instructions.
5
If your California filing status is different from your federal filing status, check the box here ..............
Enter spouse’s/RDP’s SSN or ITIN above and full name here
See instructions.
TAXABLE YEAR
2022
CALIFORNIA FORM
540NR
Total dependent exemptions ...................................... ● 10 X $433 = $
Qualifying surviving spouse/RDP. Enter year spouse/RDP died.
APE ATTACH FEDERAL RETURN
1 140
633-44-1725 WOOD 22
ZACHRY T WOOD
5222 BRADFORD DR
DALLAS TX 75235-8313
10-15-1994
REV 02/03/23 INTUIT.CG.CFP.SP
175
Side 2 Form 540NR 2022 3132224
●
●
●
●
●
●● ●
● ● ●
●
●
●
●
●
●
●
●
11 Exemption amount: Add line 7 through line 10 ....................................... 11 $
Total Taxable Income
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
12 Total California wages from your federal
Form(s) W-2, box 16 ........................ 12
13 Enter federal AGI from federal Form 1040, 1040-SR, or 1040-NR, line 11 .............. 13
14 California adjustments – subtractions. Enter the amount from Schedule CA (540NR),
Part II, line 27, column B ................................................... 14
15 Subtract line 14 from line 13. If less than zero, enter the result in parentheses.
See instructions .......................................................... 15
16 California adjustments – additions. Enter the amount from Schedule CA (540NR), Part II,
line 27, column C ......................................................... 16
17
32
35
37
40
42
51
52
53
50
41
39
36
38
18
19
Adjusted gross income from all sources. Combine line 15 and line 16.................
CA adjusted gross income from Schedule CA
(540NR), Part IV, line 1. ...................
CA Taxable Income from Schedule CA (540NR), Part IV, line 5.......................
CA Tax Before Exemption Credits. Multiply line 35 by line 36 ........................
CA Regular Tax Before Credits. Subtract line 39 from line 37. If less than zero, enter -0-. . .
Add line 40 and line 41 .....................................................
Credit for joint custody head of household.
See instructions ..........................
Credit for dependent parent. See instructions....
Credit for senior head of household.
See instructions. ..........................
Nonrefundable Child and Dependent Care Expenses Credit. See instructions.
Attach form FTB 3506......................................................
Tax. See instructions. Check the box if from:
CA Prorated Exemption Credits. Multiply line 11 by line 38.
If the amount on line 13 is more than $229,908, see instructions ....................
CA Tax Rate. Divide line 31 by line 19 .......................
CA Exemption Credit Percentage. Divide line 35 by line 19.
If more than 1, enter 1.0000...............................
Enter the larger of: Your California itemized deductions from Schedule CA (540NR),
Part III, line 30; OR Your California standard deduction. See instructions ..............
Subtract line 18 from line 17. This is your total taxable income. If less than zero,
enter -0- ...............................................................
17
32
35
37
40
42
51
52
53
50
41
39
36
38
18
19
CA Taxable Income
31 Tax. Check the box if from: Tax Table Tax Rate Schedule
FTB 3800 FTB 3803 ................ 31
Schedule G-1 FTB 5870A
Special Credits
54 Credit percentage. Enter the amount from line 38 here.
If more than 1, enter 1.0000. See instructions ................ 54
55 Credit amount. See instructions .............................................. 55 . 00
Your name: Your SSN or ITIN: WOOD
5105000
5105000
5105000
633-44-1725
140
5202
5099798
0
0.0000
609806
0.1196
0
0
0
0
REV 02/03/23 INTUIT.CG.CFP.SP
175
3133224 Form 540NR 2022 Side 3
●
●
●
●
●
●
●
●
●
●
●
●
●
●
●
●
●
Special Credits continued
.
.
.
.
.
.
00
00
00
00
00
00
60 To claim more than two credits. See instructions..................................
61 Nonrefundable Renter’s Credit. See instructions ..................................
62 Add line 50 and line 55 through 61. These are your total credits ......................
63 Subtract line 62 from line 42. If less than zero, enter -0- ............................
58 Enter credit name
59 Enter credit name
60
61
62
63
58
59
code
code
and amount. . .
and amount. . .
Other Taxes
.
.
.
.
00
00
00
00
71 Alternative Minimum Tax. Attach Schedule P (540NR)..............................
72 Mental Health Services Tax. See instructions .....................................
73 Other taxes and credit recapture. See instructions .................................
74 Add line 63, line 71, line 72, and line 73. This is your total tax........................
71
72
73
74
Payments
.
.
.
.
.
.
.
.
.
.
.
00
00
00
00
00
00
00
00
00
00
81 California income tax withheld. See instructions ..................................
82 2022 CA estimated tax and other payments. See instructions ........................
83 Withholding (Form 592-B and/or Form 593). See instructions........................
84 Excess SDI (or VPDI) withheld. See instructions ..................................
85 Earned Income Tax Credit (EITC). See instructions ................................
88 Add line 81 through line 87. These are your total payments. See instructions ............
 Individual Shared Responsibility (ISR) Penalty. See instructions .......
92 Payments after Individual Shared Responsibility Penalty. If line 88 is more than line 91,
subtract line 91 from line 88..................................................
93 Individual Shared Responsibility Penalty Balance. If line 91 is more than line 88,
subtract line 88 from line 91..................................................
86 Young Child Tax Credit (YCTC). See instructions ..................................
87 Foster Youth Tax Credit (FYTC). See instructions . .................................
81
82
83
84
85
88
91
92
93
86
87
.
.
00
00
101 Overpaid tax. If line 92 is more than line 74, subtract line 74 from line 92...............
102 Amount of line 101 you want applied to your 2023 estimated tax .....................
101
102
Your name: Your SSN or ITIN:
91 If you and your household had full-year health care coverage, check the box.
See instructions. Medicare Part A or C coverage is qualifying health care coverage. ........ ●
If you did not check the box, see instructions.
ISR Penalty
●
Overpaid Tax/Tax Due
● 00
103 Overpaid tax available this year. Subtract line 102 from line 101 ...................... ● 103 . 00
WOOD 633-44-1725
0
0
0
0
REV 02/03/23 INTUIT.CG.CFP.SP
175
Side 4 Form 540NR 2022 3134224
●
●
●
●
●
●
●
●
●
●
●
●
●
●
●
●
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
00
California Peace Officer Memorial Foundation Voluntary Tax Contribution Fund..........
Keep Arts in Schools Voluntary Tax Contribution Fund .............................
California Sea Otter Voluntary Tax Contribution Fund ..............................
Suicide Prevention Voluntary Tax Contribution Fund ..............................
California Cancer Research Voluntary Tax Contribution Fund . . . . . . . . . . . . . . . . . . . . . . . .
Prevention of Animal Homelessness and Cruelty Voluntary Tax Contribution Fund .......
California Breast Cancer Research Voluntary Tax Contribution Fund...................
School Supplies for Homeless Children Voluntary Tax Contribution Fund ..............
California Senior Citizen Advocacy Voluntary Tax Contribution Fund ..................
California Firefighters’ Memorial Voluntary Tax Contribution Fund ....................
State Parks Protection Fund/Parks Pass Purchase . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
Native California Wildlife Rehabilitation Voluntary Tax Contribution Fund...............
Emergency Food for Families Voluntary Tax Contribution Fund ......................
Protect Our Coast and Oceans Voluntary Tax Contribution Fund......................
Rape Kit Backlog Voluntary Tax Contribution Fund ................................
Add amounts in code 400 through code 446. This is your total contribution ............
408
425
410
444
413
431
405
422
438
406
423
439
407
424
440
120 120
Contributions
Your name: Your SSN or ITIN:
Code Amount
●
●
●
.
.
.
00
00
00
California Seniors Special Fund. See instructions .................................
Alzheimer’s Disease and Related Dementia Voluntary Tax Contribution Fund ............
Rare and Endangered Species Preservation Voluntary Tax Contribution Program ........
400
401
403
104 Tax due. If line 92 is less than line 74, subtract line 92 from line 74 ................... 104 . 00
Mental Health Crisis Prevention Voluntary Tax Contribution Fund. .....................
California Community and Neighborhood Tree Voluntary Tax Contribution Fund ..........
445
446
●
●
● . 00
121 AMOUNT YOU OWE. Add line 93, line 104, and line 120. See instructions. Do not send cash.
Mail to: FRANCHISE TAX BOARD, PO BOX 942867, SACRAMENTO CA 94267-0001. . . . . 121
Amount
You Owe
Pay Online – Go to ftb.ca.gov/pay for more information.
WOOD 633-44-1725
REV 02/03/23 INTUIT.CG.CFP.SP
175
3135224 Form 540NR 2022 Side 5
●
●
●
●
●
●
●
●
● ●
● ●
● ● ●
Your name: Your SSN or ITIN:
.
.
.
00
00
00
122
124
123
Interest, late return penalties, and late payment penalties...........................
Total amount due. See instructions. Enclose, but do not staple, any payment ...........
Underpayment of estimated tax.
Check the box:
122
124
FTB 5805 attached FTB 5805F attached ........... 123
Interest and
Penalties Refund and Direct Deposit
.
.
.
00
00
00
125 REFUND OR NO AMOUNT DUE. Subtract line 120 from line 103. See instructions.
125
126
127
Mail to: FRANCHISE TAX BOARD, PO BOX 942840, SACRAMENTO CA 94240-0001......
Fill in the information to authorize direct deposit of your refund into one or two accounts. Do not attach a voided check or a deposit slip.
See instructions. Have you verified the routing and account numbers? Use whole dollars only.
All or the following amount of my refund (line 125) is authorized for direct deposit into the account shown below:
Routing number
Routing number
Type
Type
Checking
Checking
Savings
Savings
Account number
Account number
Direct deposit amount
Direct deposit amount
The remaining amount of my refund (line 125) is authorized for direct deposit into the account shown below:
IMPORTANT: Attach a copy of your complete federal return.
Our privacy notice can be found in annual tax booklets or online. Go to ftb.ca.gov/privacy to learn about our privacy policy statement, or go to ftb.ca.gov/forms and search for 1131
to locate FTB 1131 EN-SP, Franchise Tax Board Privacy Notice on Collection. To request this notice by mail, call 800.338.0505 and enter form code 948 when instructed.
Under penalties of perjury, I declare that I have examined this tax return, including accompanying schedules and statements, and to the best of my
knowledge and belief, it is true, correct, and complete.
Sign
Here
It is unlawful
to forge a
spouse’s/
RDP’s
signature.
Joint tax
return?
See
instructions.
Your signature Date Spouse’s/RDP’s signature (if a joint tax return, both must sign)
Your email address. Enter only one email address.
Print Third Party Designee’s Name
Firm’s name (or yours, if self-employed)
Firm’s address
Paid preparer’s signature (declaration of preparer is based on all information of which preparer has any knowledge)
Preferred phone number
Telephone Number
PTIN
Firm’s FEIN
Do you want to allow another person to discuss this tax return with us? See instructions...... Yes No
Voter
Info.
For voter registration information, check the box and go to sos.ca.gov/elections. See instructions ................
WOOD
4699050682
SELF-PREPARED
633-44-1725
0
REV 02/03/23 INTUIT.CG.CFP.SP
175
7741224 Schedule CA (540NR) 2022 Side 1
California Adjustments —
Nonresidents or Part-Year Residents
Important: Attach this schedule behind Form 540NR, Side 5 as a supporting California schedule.
Part I Residency Information. Complete all lines that apply to you and your spouse/RDP for taxable year 2022.
During 2022:
1 My California (CA) Residency (Check one)
a Myself: Nonresident Part-Year Resident Resident b Spouse: Nonresident Part-Year Resident Resident
Yourself Spouse/RDP
2 a I was domiciled in (enter two letter code, see instructions) ........................
b I was in the military and stationed in (enter two letter code) ........................
3 I became a CA resident (enter state of prior residence and date (mm/dd/yyyy) of move) . . . / / / /
4 I became a CA nonresident (enter new state of residence and date (mm/dd/yyyy) of move) . / / / /
5 I was a CA nonresident the entire year (enter state of residence) ......................
6 The number of days I spent in CA for any purpose was: ............................
7 I owned a home/property in CA (enter Y for Yes, N for No) ..........................
8 Before 2022: I was a CA resident for the period of ................................ / / – / / –
 / / / /
1 a Total amount from federal Form(s) W-2,
 box 1. See instructions .............. 1a
b Household employee wages not reported
 on federal Form(s) W-2 .............. 1b
c Tip income not reported on line 1a. .... 1c
d Medicaid waiver payments not reported
 on federal Form(s) W-2. See instr.. ..... 1d
e Taxable dependent care benefits from
 federal Form 2441, line 26 ........... 1e
f Employer-provided adoption benefits
 from federal Form 8839, line 29 ....... 1f
g Wages from federal Form 8919, line 6 . . 1g
h Other earned income. See instructions . . 1h
i Nontaxable combat pay election.
 See instructions ................... 1i
z Add line 1a through line 1i ........... 1z
2 Taxable interest. a . . 2b
3 Ordinary dividends. See instructions.
a . . . . . . . . . . . . 3b
4 IRA distributions. See instructions.
a . . . . . . . . . . . . 4b
5 Pensions and annuities. See
instructions. a . . . 5b
6 Social security benefits.
a . . . . . . . . . . . . 6b
7 Capital gain or (loss). See instructions . . . 7

Part II Income Adjustment Schedule A
Federal Amounts
(taxable amounts from
your federal tax return)
B
Subtractions
See instructions
(difference between
CA & federal law)
C
Additions
See instructions
(difference between
CA & federal law)
D
Total Amounts
Using CA Law
As If You Were a
CA Resident
(subtract col. B from
col. A; add col. C
to the result)
E
CA Amounts
(income earned or
received as a CA
resident and income
earned or received
from CA sources
as a nonresident)
SCHEDULE
CA (540NR)
TAXABLE YEAR
2022
Name(s) as shown on tax return SSN or ITIN
For Privacy Notice, get FTB 1131 EN-SP.
Section A — Income
 from federal Form 1040 or 1040-SR
ZACHRY T WOOD 633441725
T X
T X
N
0
5105000
0
5105000
5105000
0
5105000
REV 02/03/23 INTUIT.CG.CFP.SP
175
Side 2 Schedule CA (540NR) 2022 7742224
 1 Taxable refunds, credits, or offsets of state
and local income taxes ................ 1
 2a Alimony received. See instructions. . . . 2a
 3 Business income or (loss). See instructions. . 3
 4 Other gains or (losses) ............... 4
 5 Rental real estate, royalties, partnerships,
S corporations, trusts, etc ............. 5
 6 Farm income or (loss) ................ 6
 7 Unemployment compensation .......... 7
 8 Other income:
a Federal net operating loss .......... 8a ( )
b Gambling ....................... 8b
c Cancellation of debt ............... 8c
d Foreign earned income exclusion
from federal Form 2555............ 8d ( )
e Income from federal Form 8853 ..... 8e
f Income from federal Form 8889 ..... 8f
g Alaska Permanent Fund dividends .... 8g
h Jury duty pay.................... 8h
i Prizes and awards ................ 8i
j Activity not engaged in for profit income . . 8j
k Stock options.................... 8k
l Income from the rental of personal
property if you engaged in the rental
for profit but were not in the business
of renting such property ........... 8l
m Olympic and Paralympic medals
 and USOC prize money ............ 8m
n IRC Section 951(a) inclusion ........ 8n
o IRC Section 951A(a) inclusion....... 8o
p IRC Section 461(l) excess business
loss adjustment .................. 8p
q Taxable distributions from an ABLE
account ........................ 8q
r Scholarship and fellowship grants
 not reported on federal
 Form(s) W-2. .................... 8r
s Nontaxable amount of Medicaid
 waiver payments included on federal
 Form 1040, line 1a or line 1d........ 8s ( )
t Pension or annuity from a
 nonqualified deferred compensation
 plan or a nongovernmental IRC
 Section 457 plan ................. 8t
u Wages earned while incarcerated..... 8u
z Other income. List type and amount.
 9 a Total other income. Add line 8a
through line 8z................... 9a
Section B — Additional Income
 from federal Schedule 1 (Form 1040)
A
Federal Amounts
(taxable amounts from
your federal tax return)
B
Subtractions
See instructions
(difference between
CA & federal law)
C
Additions
See instructions
(difference between
CA & federal law)
D
Total Amounts
Using CA Law
As If You Were a
CA Resident
(subtract col. B from
col. A; add col. C
to the result)
E
CA Amounts
(income earned or
received as a CA
resident and income
earned or received
from CA sources
as a nonresident)
8z
REV 02/03/23 INTUIT.CG.CFP.SP
175
7743224 Schedule CA (540NR) 2022 Side 3
b1 Disaster loss deduction from form
FTB 3805V .................... 9b1
b2 NOL deduction from form
FTB 3805V .................... 9b2
b3 NOL from form FTB 3805Z,
FTB 3807, or FTB 3809 .......... 9b3
10 Total. Combine Section A, line 1z through
line 7, and Section B, line 1 through
line 7, line 9a and line 9b1 through line 9b3
(as applicable) in each column.
See instructions. Go to Section C ....... 10
11 Educator expenses .................. 11
12 Certain business expenses of reservists,
performing artists, and fee-basis
government officials ................ 12
13 Health savings account deduction ...... 13
14 Moving expenses. Attach form FTB 3913.
See instructions .................... 14
15 Deductible part of self-employment tax.
See instructions. ................... 15
16 Self-employed SEP, SIMPLE, and
qualified plans ..................... 16
17 Self-employed health insurance deduction.
See instructions. ................... 17
18 Penalty on early withdrawal of savings . . 18
19 a Alimony paid. b Enter recipient’s:
SSN – –
Last name 19a
20 IRA deduction ..................... 20
21 Student loan interest deduction ........ 21
22 Reserved for future use .............. 22
23 Archer MSA deduction ............... 23
24 Other adjustments:
a Jury duty pay ................... 24a
b Deductible expenses related to income
reported on line 8l from the rental of
personal property engaged in for
profit.......................... 24b
c Nontaxable amount of the value of
Olympic and Paralympic medals and
USOC prize money reported on line 8m 24c
d Reforestation amortization and
expenses....................... 24d
e Repayment of supplemental
unemployment benefits under the
federal Trade Act of 1974 .......... 24e
f Contributions to IRC
Section 501(c)(18)(D) pension plans. . 24f
g Contributions by certain chaplains to
IRC Section 403(b) plans .......... 24g
h Attorney fees and court costs for
actions involving certain unlawful
discrimination claims ............. 24h
Section B — Additional Income
 Continued
Section C — Adjustments to Income
 from federal Schedule 1 (Form 1040)
A
Federal Amounts
(taxable amounts from
your federal tax return)
B
Subtractions
See instructions
(difference between
CA & federal law)
C
Additions
See instructions
(difference between
CA & federal law)
D
Total Amounts
Using CA Law
As If You Were a
CA Resident
(subtract col. B from
col. A; add col. C
to the result)
E
CA Amounts
(income earned or
received as a CA
resident and income
earned or received
from CA sources
as a nonresident)
5105000 5105000
REV 02/03/23 INTUIT.CG.CFP.SP
175
Side 4 Schedule CA (540NR) 2022 7744224
1
2
3
4
5a
5b
5c
5d
5e
6
7
8a
8b
8c
8d
8e
9
10
11
12
13
14
1 Medical and dental expenses .........................
2 Enter amount from federal Form 1040 or 1040-SR, line 11 . .
3 Multiply line 2 by 7.5% (0.075) .......................
4 Subtract line 3 from line 1. If line 3 is more than line 1, enter 0.....................
5a State and local income tax or general sales taxes. ..............................
5b State and local real estate taxes ............................................
5c State and local personal property taxes ......................................
5d Add line 5a through line 5c................................................
5e Enter the smaller of line 5d or $10,000 ($5,000 if married filing separately) in column A . .
 Enter the amount from line 5a, column B in line 5e, column B ......................
 Enter the difference from line 5d and line 5e, column A in line 5e, column C ...........
6 Other taxes. List type ........................
7 Add line 5e and line 6 ....................................................
8a Home mortgage interest and points reported to you on federal Form 1098 ...........
8b Home mortgage interest not reported to you on federal Form 1098.................
8c Points not reported to you on federal Form 1098...............................
8d Reserved for future use ..................................................
8e Add line 8a through line 8c................................................
9 Investment interest......................................................
10 Add line 8e and line 9 ....................................................
11 Gifts by cash or check ...................................................
12 Other than by cash or check...............................................
13 Carryover from prior year.................................................
14 Add line 11 through line 13 ...............................................
Part III Adjustments to Federal Itemized Deductions
Check the box if you did NOT itemize for federal but will itemize for California ......... A Federal Amounts
(from federal
Schedule A (Form 1040))
B Subtractions
See instructions C Additions
See instructions
Medical and Dental Expenses See instructions.
Taxes You Paid
Interest You Paid
Gifts to Charity
i Attorney fees and court costs you paid in
connection with an award from the IRS for
information you provided that helped the
IRS detect tax law violations ........ 24i
j Housing deduction from federal
Form 2555 ...................... 24j
k Excess deductions of IRC Section 67(e)
expenses from federal Schedule K-1
(Form 1041) .................... 24k
z Other adjustments. List type and amount.
25 Total other adjustments. Add line 24a
through line 24z ..................... 25
26 Add line 11 through line 23 and line 25 in
each column, A through E ............. 26
27 Total. Subtract line 26 from line 10 in each
column, A through E. See instructions .... 27
Section C — Adjustments to Income
 Continued
A
Federal Amounts
(taxable amounts from
your federal tax return)
B
Subtractions
See instructions
(difference between
CA & federal law)
C
Additions
See instructions
(difference between
CA & federal law)
D
Total Amounts
Using CA Law
As If You Were a
CA Resident
(subtract col. B from
col. A; add col. C
to the result)
E
CA Amounts
(income earned or
received as a CA
resident and income
earned or received
from CA sources
as a nonresident)
24z
5105000
5105000
382875
515137128728 515137128728
0
515137128728
10000 515137128728 515137118728
10000 515137128728 515137118728
5105000
REV 02/03/23 INTUIT.CG.CFP.SP
175
7745224 Schedule CA (540NR) 2022 Side 5
15 Casualty or theft loss(es) (other than net qualified disaster losses).
 Attach federal Form 4684. See instructions ...................................
16 Other—from list in federal instructions ......................................
17 Add lines 4, 7, 10, 14, 15, and 16 in columns A, B, and C ........................
16
17
15
18 Total. Combine line 17 column A less column B plus column C ..................................................
Part III Adjustments to Federal Itemized Deductions
 Continued
A Federal Amounts
(from federal Schedule A
(Form 1040))
B Subtractions
See instructions C Additions
See instructions
Casualty and Theft Losses
Other Itemized Deductions
18
 1 California AGI. Enter your California AGI from Part II, line 27, column E .............................................  1
 2 Enter your deductions from line 30 .......................................................  2
 3 Deduction Percentage. Divide Part II, line 27, column E by Part II, line 27, column D. Carry the decimal
 to four places. If the result is greater than 1.0000, enter 1.0000. If less than zero, enter -0- ...........  3
 4 California Itemized/Standard Deductions. Multiply line 2 by the percentage on line 3 ..................................  4
 5 California Taxable Income. Subtract line 4 from line 1. Transfer this amount to Form 540NR, line 35. If less than
 zero, enter -0- ..........................................................................................  5
Part IV California Taxable Income
29 Is your federal AGI (Form 540NR, line 13) more than the amount shown below for your filing status?
Single or married/RDP filing separately ........................... $229,908
Head of household . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . $344,867
Married/RDP filing jointly or qualifying surviving spouse/RDP.......... $459,821
No. Transfer the amount on line 28 to line 29.
Yes. Complete the Itemized Deductions Worksheet in the instructions for Schedule CA (540NR), line 29 ..................
30 Enter the larger of the amount on line 29 or your standard deduction listed below:
Single or married/RDP filing separately. See instructions................ $5,202
Married/RDP filing jointly, head of household, or qualifying
surviving spouse/RDP ......................................... $10,404 .....................
Job Expenses and Certain Miscellaneous Deductions
19 Unreimbursed employee expenses: job travel, union dues, job education, etc.
 Attach federal Form 2106 if required. See instructions........................
20 Tax preparation fees. .................................................
21 Other expenses: investment, safe deposit box, etc. List type
22 Add line 19 through line 21 ............................................
23 Enter amount from federal Form 1040 or 1040-SR, line 11
24 Multiply line 23 by 2% (0.02). If less than zero, enter 0 .......................
25 Subtract line 24 from line 22. If line 24 is more than line 22, enter 0. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
26 Total Itemized Deductions. Add line 18 and line 25. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
27 Other adjustments. See instructions. Specify. .......
28 Combine line 26 and line 27. .............................................................................





19
20
21
22
24




25
26
27
28
 29
 30
10000 515137128728 515137118728
0
0
0
5105000
102100
0
0
0
0
5202
5202
0 0 0 0 0
0
0
REV 02/03/23 INTUIT.CG.CFP.SP
175
For Privacy Notice, get FTB 1131 EN-SP. 8661224 FTB 3853 2022 Side 1
Health Coverage Exemptions and Individual
Shared Responsibility Penalty
TAXABLE YEAR
2022
CALIFORNIA FORM
3853
Attach to your California Form 540, Form 540NR, or Form 540 2EZ.
Name(s) as shown on your California tax return SSN or ITIN
Part I Applicable Household Members. List all members of your applicable household whether or not they have an exemption or an Exemption
 Certificate Number (ECN) granted by the Marketplace. See instructions.
1
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
2
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
3
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
4
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
5
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
6
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
7
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
8
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
9
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
10
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
11
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
12
First Name Initial SSN Date of Birth (mm/dd/yyyy) Modified AGI
Last Name ECN 1 ECN 2 ECN 3
Part II Coverage Exemption Claimed on Your Tax Return for Your Household
1 If you are claiming a coverage exemption because your applicable household income or gross income is below the filing threshold, check
the box here. See instructions. .............................................................................. □
ZACHRY T WOOD 633-44-1725
ZACHRY T 633-44-1725 10/15/1994 5,105,000.
WOOD
REV 02/03/23 INTUIT.CG.CFP.SP
175
Side 2 FTB 3853 2022 8662224
Part IV Individual Shared Responsibility Penalty
1 Your Individual Shared Responsibility Penalty. Enter on Form 540, line 92; Form 540NR, line 91; or Form 540 2EZ, line 27.
 See instructions ............................................................................... ● 1
Part III Coverage and Exemptions Claimed on Your Tax Return for Individuals. If you and/or a member of your applicable household are reporting
 any coverage or are claiming exemptions for the tax year, complete Part III. See instructions.
Coverage and Exemption Codes
(a)
Full-year
(b)
Jan
(c)
Feb
(d)
Mar
(e)
Apr
(f)
May
(g)
June
(h)
July
(i)
Aug
(j)
Sept
(k)
Oct
(l)
Nov
(m)
Dec
1
First Name Initial
Last Name
2
First Name Initial
Last Name
3
First Name Initial
Last Name
4
First Name Initial
Last Name
5
First Name Initial
Last Name
6
First Name Initial
Last Name
7
First Name Initial
Last Name
8
First Name Initial
Last Name
9
First Name Initial
Last Name
10
First Name Initial
Last Name
11
First Name Initial
Last Name
12
First Name Initial
Last Name
0.
ZACHRY T E
WOOD
REV 02/03/23 INTUIT.CG.CFP.SP
175
Form 1040 U.S. Individual Income Tax Return 2022 Department of the Treasury—Internal Revenue Service
OMB No. 1545-0074 IRS Use Only—Do not write or staple in this space.
Filing Status
Check only
one box.
Single Married filing jointly Married filing separately (MFS) Head of household (HOH) Qualifying surviving
spouse (QSS)
If you checked the MFS box, enter the name of your spouse. If you checked the HOH or QSS box, enter the child’s name if the qualifying
person is a child but not your dependent:
Your first name and middle initial Last name Your social security number
If joint return, spouse’s first name and middle initial Last name Spouse’s social security number
Home address (number and street). If you have a P.O. box, see instructions. Apt. no.
City, town, or post office. If you have a foreign address, also complete spaces below. State ZIP code
Foreign country name Foreign province/state/county Foreign postal code
Presidential Election Campaign
Check here if you, or your
spouse if filing jointly, want $3
to go to this fund. Checking a
box below will not change
your tax or refund.
You Spouse
Digital
Assets
At any time during 2022, did you: (a) receive (as a reward, award, or payment for property or services); or (b) sell,
exchange, gift, or otherwise dispose of a digital asset (or a financial interest in a digital asset)? (See instructions.) Yes No
Standard
Deduction
Someone can claim: You as a dependent Your spouse as a dependent
Spouse itemizes on a separate return or you were a dual-status alien
Age/Blindness You: Were born before January 2, 1958 Are blind Spouse: Was born before January 2, 1958 Is blind
Dependents (see instructions):
If more
than four
dependents,
see instructions
and check
here . .
(2) Social security
number
(3) Relationship
to you
(4) Check the box if qualifies for (see instructions):
(1) First name Last name Child tax credit Credit for other dependents
Income
Attach Form(s)
W-2 here. Also
attach Forms
W-2G and
1099-R if tax
was withheld.
If you did not
get a Form
W-2, see
instructions.
1 a Total amount from Form(s) W-2, box 1 (see instructions) ............. 1a
b Household employee wages not reported on Form(s) W-2 ............. 1b
c Tip income not reported on line 1a (see instructions) .............. 1c
d Medicaid waiver payments not reported on Form(s) W-2 (see instructions) ........ 1d
e Taxable dependent care benefits from Form 2441, line 26 ............ 1e
f Employer-provided adoption benefits from Form 8839, line 29 ........... 1f
g Wages from Form 8919, line 6 ..................... 1g
h Other earned income (see instructions) .................. 1h
i Nontaxable combat pay election (see instructions) ....... 1i
z Add lines 1a through 1h ...................... 1z
Attach Sch. B
if required.
2a Tax-exempt interest . . . 2a b Taxable interest ..... 2b
3a Qualified dividends . . . 3a b Ordinary dividends ..... 3b
4a IRA distributions .... 4a b Taxable amount ...... 4b
5a Pensions and annuities . . 5a b Taxable amount ...... 5b
6a Social security benefits . . 6a b Taxable amount ...... 6b
c If you elect to use the lump-sum election method, check here (see instructions) .....
7 Capital gain or (loss). Attach Schedule D if required. If not required, check here ..... 7
8 Other income from Schedule 1, line 10 .................. 8
9 Add lines 1z, 2b, 3b, 4b, 5b, 6b, 7, and 8. This is your total income .......... 9
10 Adjustments to income from Schedule 1, line 26 ............... 10
11 Subtract line 10 from line 9. This is your adjusted gross income .......... 11
Standard
Deduction for—
• Single or
Married filing
separately,
$12,950
• Married filing
jointly or
Qualifying
surviving spouse,
$25,900
• Head of
household,
$19,400
• If you checked
any box under
Standard
Deduction,
see instructions.
12 Standard deduction or itemized deductions (from Schedule A) .......... 12
13 Qualified business income deduction from Form 8995 or Form 8995-A ......... 13
14 Add lines 12 and 13 ........................ 14
15 Subtract line 14 from line 11. If zero or less, enter -0-. This is your taxable income ..... 15
For Disclosure, Privacy Act, and Paperwork Reduction Act Notice, see separate instructions. Form 1040 (2022)
WOOD 633-44-1725
5222 Bradford Dr
Dallas TX 752358313
5,105,000.
5,105,000.
12,950.
12,950.
5,092,050.
5,105,000.
5,105,000.
0.
ZACHRY T
Form 1040 (2022) Page 2
Tax and
Credits
16 Tax (see instructions). Check if any from Form(s): 1 8814 2 4972 3 . . 16
17 Amount from Schedule 2, line 3 .................... 17
18 Add lines 16 and 17 . . . . . . . . . . . . . . . . . . . . . . . . 18
19 Child tax credit or credit for other dependents from Schedule 8812 .......... 19
20 Amount from Schedule 3, line 8 .................... 20
21 Add lines 19 and 20 ........................ 21
22 Subtract line 21 from line 18. If zero or less, enter -0- .............. 22
23 Other taxes, including self-employment tax, from Schedule 2, line 21 ......... 23
24 Add lines 22 and 23. This is your total tax ................. 24
Payments 25 Federal income tax withheld from:
a Form(s) W-2 .................. 25a
b Form(s) 1099 .................. 25b
c Other forms (see instructions) ............. 25c
d Add lines 25a through 25c ...................... 25d
26 2022 estimated tax payments and amount applied from 2021 return .......... 26 If you have a
qualifying child,
attach Sch. EIC.
27 Earned income credit (EIC) .............. 27
28 Additional child tax credit from Schedule 8812 ........ 28
29 American opportunity credit from Form 8863, line 8 ....... 29
30 Reserved for future use ............... 30
31 Amount from Schedule 3, line 15 ............ 31
32 Add lines 27, 28, 29, and 31. These are your total other payments and refundable credits . . 32
33 Add lines 25d, 26, and 32. These are your total payments ............ 33
Refund 34 If line 33 is more than line 24, subtract line 24 from line 33. This is the amount you overpaid . . 34
35a Amount of line 34 you want refunded to you. If Form 8888 is attached, check here .... 35a
Direct deposit?
See instructions.
b Routing number c Type: Checking Savings
d Account number
36 Amount of line 34 you want applied to your 2023 estimated tax ... 36
Amount
You Owe
37 Subtract line 33 from line 24. This is the amount you owe.
For details on how to pay, go to www.irs.gov/Payments or see instructions . . . . . . . . 37
38 Estimated tax penalty (see instructions) .......... 38
Third Party
Designee
Do you want to allow another person to discuss this return with the IRS? See
instructions . . . . . . . . . . . . . . . . . . . . . Yes. Complete below. No
Designee’s
name
Phone
no.
Personal identification
number (PIN)
Sign
Here
Joint return?
See instructions.
Keep a copy for
your records.
Under penalties of perjury, I declare that I have examined this return and accompanying schedules and statements, and to the best of my knowledge and
belief, they are true, correct, and complete. Declaration of preparer (other than taxpayer) is based on all information of which preparer has any knowledge.
Your signature Date Your occupation If the IRS sent you an Identity
Protection PIN, enter it here
(see inst.)
Spouse’s signature. If a joint return, both must sign. Date Spouse’s occupation If the IRS sent your spouse an
Identity Protection PIN, enter it here
(see inst.)
Phone no. Email address
Paid
Preparer
Use Only
Preparer’s name Preparer’s signature Date PTIN Check if:
Self-employed
Firm’s name Phone no.
Firm’s address Firm’s EIN
Go to www.irs.gov/Form1040 for instructions and the latest information. Form 1040 (2022)
Cook / Helper
(469)905-0682
1,888,138.
0.
1,888,138.
283,373,243,164.
283,375,131,302.
9 7 9 6 5 2
1,847,014.
1,847,014.
283,372,930,143.
283,372,930,143.
0 7 1 9 2 1 8 9 1
4 7 - 2 0 4 1 - 6 5 4 7
 Self-Prepared
No
1,847,014.
354,145.
2,201,159.
BAA REV 02/10/23 Intuit.cg.cfp.sp
SCHEDULE 2
(Form 1040)
2022 Additional Taxes
Department of the Treasury
Internal Revenue Service
Attach to Form 1040, 1040-SR, or 1040-NR.
Go to www.irs.gov/Form1040 for instructions and the latest information.
OMB No. 1545-0074
Attachment
Sequence No. 02
Name(s) shown on Form 1040, 1040-SR, or 1040-NR Your social security number
Part I Tax
1 Alternative minimum tax. Attach Form 6251 ................ 1
2 Excess advance premium tax credit repayment. Attach Form 8962 ....... 2
3 Add lines 1 and 2. Enter here and on Form 1040, 1040-SR, or 1040-NR, line 17 . . 3
Part II Other Taxes
4 Self-employment tax. Attach Schedule SE ................. 4
5 Social security and Medicare tax on unreported tip income.
Attach Form 4137 .................. 5
6 Uncollected social security and Medicare tax on wages. Attach
Form 8919 ..................... 6
7 Total additional social security and Medicare tax. Add lines 5 and 6 ...... 7
8 Additional tax on IRAs or other tax-favored accounts. Attach Form 5329 if required.
If not required, check here ..................... 8
9 Household employment taxes. Attach Schedule H ............. 9
10 Repayment of first-time homebuyer credit. Attach Form 5405 if required ..... 10
11 Additional Medicare Tax. Attach Form 8959 ................ 11
12 Net investment income tax. Attach Form 8960 ............... 12
13 Uncollected social security and Medicare or RRTA tax on tips or group-term life
insurance from Form W-2, box 12 .................... 13
14 Interest on tax due on installment income from the sale of certain residential lots
and timeshares ............................ 14
15 Interest on the deferred tax on gain from certain installment sales with a sales price
over $150,000 ............................ 15
16 Recapture of low-income housing credit. Attach Form 8611 .......... 16
(continued on page 2)
For Paperwork Reduction Act Notice, see your tax return instructions. Schedule 2 (Form 1040) 2022
ZACHRY T WOOD 633-44-1725
44,145.
310,000.
Schedule 2 (Form 1040) 2022 Page 2
Part II Other Taxes (continued)
17 Other additional taxes:
a Recapture of other credits. List type, form number, and amount:
17a
b Recapture of federal mortgage subsidy, if you sold your home
see instructions ................... 17b
c Additional tax on HSA distributions. Attach Form 8889 .... 17c
d Additional tax on an HSA because you didn’t remain an eligible
individual. Attach Form 8889 .............. 17d
e Additional tax on Archer MSA distributions. Attach Form 8853 . 17e
f Additional tax on Medicare Advantage MSA distributions. Attach
Form 8853 ..................... 17f
g Recapture of a charitable contribution deduction related to a
fractional interest in tangible personal property ....... 17g
h Income you received from a nonqualified deferred compensation
plan that fails to meet the requirements of section 409A . . . 17h
i Compensation you received from a nonqualified deferred
compensation plan described in section 457A ....... 17i
j Section 72(m)(5) excess benefits tax ........... 17j
k Golden parachute payments .............. 17k
l Tax on accumulation distribution of trusts ......... 17l
m Excise tax on insider stock compensation from an expatriated
corporation ..................... 17m
n Look-back interest under section 167(g) or 460(b) from Form
8697 or 8866 .................... 17n
o Tax on non-effectively connected income for any part of the
year you were a nonresident alien from Form 1040-NR .... 17o
p Any interest from Form 8621, line 16f, relating to distributions
from, and dispositions of, stock of a section 1291 fund .... 17p
q Any interest from Form 8621, line 24 ........... 17q
z Any other taxes. List type and amount:
17z
18 Total additional taxes. Add lines 17a through 17z .............. 18
19 Reserved for future use ........................ 19
20 Section 965 net tax liability installment from Form 965-A . . . 20
21 Add lines 4, 7 through 16, and 18. These are your total other taxes. Enter here and
on Form 1040 or 1040-SR, line 23, or Form 1040-NR, line 23b ......... 21
Schedule 2 (Form 1040) 2022
354,145.
BAA REV 02/10/23 Intuit.cg.cfp.sp
Form 8959
Department of the Treasury
Internal Revenue Service
Additional Medicare Tax
If any line does not apply to you, leave it blank. See separate instructions.
Attach to Form 1040, 1040-SR, 1040-NR, 1040-PR, or 1040-SS.
Go to www.irs.gov/Form8959 for instructions and the latest information.
OMB No. 1545-0074
2022
Attachment
Sequence No. 71
Name(s) shown on return Your social security number
Part I Additional Medicare Tax on Medicare Wages
1 Medicare wages and tips from Form W-2, box 5. If you have more than one
Form W-2, enter the total of the amounts from box 5 ........ 1
2 Unreported tips from Form 4137, line 6 ............. 2
3 Wages from Form 8919, line 6 ................ 3
4 Add lines 1 through 3 . . . . . . . . . . . . . . . . . . . 4
5 Enter the following amount for your filing status:
Married filing jointly ............... $250,000
Married filing separately .............. $125,000
Single, Head of household, or Qualifying surviving spouse . . . $200,000 5
6 Subtract line 5 from line 4. If zero or less, enter -0- . . . . . . . . . . . . . . . . . 6
7 Additional Medicare Tax on Medicare wages. Multiply line 6 by 0.9% (0.009). Enter here and go to
Part II ................................ 7
Part II Additional Medicare Tax on Self-Employment Income
8 Self-employment income from Schedule SE (Form 1040), Part I, line 6. If you
had a loss, enter -0- (Form 1040-PR or 1040-SS filers, see instructions.) . . 8
9 Enter the following amount for your filing status:
Married filing jointly................ $250,000
Married filing separately .............. $125,000
Single, Head of household, or Qualifying surviving spouse . . . $200,000 9
10 Enter the amount from line 4 ................ 10
11 Subtract line 10 from line 9. If zero or less, enter -0- ......... 11
12 Subtract line 11 from line 8. If zero or less, enter -0- ................. 12
13 Additional Medicare Tax on self-employment income. Multiply line 12 by 0.9% (0.009). Enter here and
go to Part III .............................. 13
Part III Additional Medicare Tax on Railroad Retirement Tax Act (RRTA) Compensation
14 Railroad retirement (RRTA) compensation and tips from Form(s) W-2, box 14
(see instructions) . . . . . . . . . . . . . . . . . . . . 14
15 Enter the following amount for your filing status:
Married filing jointly ............... $250,000
Married filing separately .............. $125,000
Single, Head of household, or Qualifying surviving spouse . . . $200,000 15
16 Subtract line 15 from line 14. If zero or less, enter -0- ................ 16
17 Additional Medicare Tax on railroad retirement (RRTA) compensation. Multiply line 16 by 0.9% (0.009).
Enter here and go to Part IV ......................... 17
Part IV Total Additional Medicare Tax
18 Add lines 7, 13, and 17. Also include this amount on Schedule 2 (Form 1040), line 11 (Form 1040-PR
or 1040-SS filers, see instructions), and go to Part V ................. 18
Part V Withholding Reconciliation
19 Medicare tax withheld from Form W-2, box 6. If you have more than one Form
W-2, enter the total of the amounts from box 6 .......... 19
20 Enter the amount from line 1 ................ 20
21 Multiply line 20 by 1.45% (0.0145). This is your regular Medicare tax
withholding on Medicare wages ............... 21
22 Subtract line 21 from line 19. If zero or less, enter -0-. This is your Additional Medicare Tax
withholding on Medicare wages ....................... 22
23 Additional Medicare Tax withholding on railroad retirement (RRTA) compensation from Form W-2, box
14 (see instructions) ........................... 23
24 Total Additional Medicare Tax withholding. Add lines 22 and 23. Also include this amount with
federal income tax withholding on Form 1040, 1040-SR, or 1040-NR, line 25c (Form 1040-PR or
1040-SS filers, see instructions) ....................... 24
For Paperwork Reduction Act Notice, see your tax return instructions. Form 8959 (2022)
44,145.
200,000.
5,105,000.
5,105,000.
4,905,000.
44,145.
74,023.
0.
0.
0.
5,105,000.
ZACHRY T WOOD 633-44-1725
BAA REV 02/10/23 Intuit.cg.cfp.sp
Form 8960
Department of the Treasury
Internal Revenue Service
Net Investment Income Tax—
Individuals, Estates, and Trusts
Attach to your tax return.
Go to www.irs.gov/Form8960 for instructions and the latest information.
OMB No. 1545-2227
2022
Attachment
Sequence No. 72
Name(s) shown on your tax return Your social security number or EIN
Part I Investment Income Section 6013(g) election (see instructions)
Section 6013(h) election (see instructions)
Regulations section 1.1411-10(g) election (see instructions)
1 Taxable interest (see instructions) . . . . . . . . . . . . . . . . . . . . . . . 1
2 Ordinary dividends (see instructions) ...................... 2
3 Annuities (see instructions) ......................... 3
4 a Rental real estate, royalties, partnerships, S corporations, trusts, etc. (see
instructions) ...................... 4a
b Adjustment for net income or loss derived in the ordinary course of a nonsection 1411 trade or business (see instructions) .......... 4b
c Combine lines 4a and 4b .......................... 4c
5a Net gain or loss from disposition of property (see instructions) ..... 5a
b Net gain or loss from disposition of property that is not subject to net
investment income tax (see instructions) ............ 5b
c Adjustment from disposition of partnership interest or S corporation stock (see
instructions) ...................... 5c
d Combine lines 5a through 5c ........................ 5d
6 Adjustments to investment income for certain CFCs and PFICs (see instructions) ....... 6
7 Other modifications to investment income (see instructions) .............. 7
8 Total investment income. Combine lines 1, 2, 3, 4c, 5d, 6, and 7 ............. 8
Part II Investment Expenses Allocable to Investment Income and Modifications
9a Investment interest expenses (see instructions) .......... 9a
b State, local, and foreign income tax (see instructions) ........ 9b
c Miscellaneous investment expenses (see instructions) ........ 9c
d Add lines 9a, 9b, and 9c .......................... 9d
10 Additional modifications (see instructions) .................... 10
11 Total deductions and modifications. Add lines 9d and 10 ............... 11
Part III Tax Computation
12 Net investment income. Subtract Part II, line 11, from Part I, line 8. Individuals, complete lines 13–17.
Estates and trusts, complete lines 18a–21. If zero or less, enter -0- ............ 12
Individuals:
13 Modified adjusted gross income (see instructions) ......... 13
14 Threshold based on filing status (see instructions) ......... 14
15 Subtract line 14 from line 13. If zero or less, enter -0- ........ 15
16 Enter the smaller of line 12 or line 15 ...................... 16
17 Net investment income tax for individuals. Multiply line 16 by 3.8% (0.038). Enter here and include
on your tax return (see instructions) ...................... 17
Estates and Trusts:
18a Net investment income (line 12 above) ............. 18a
b Deductions for distributions of net investment income and deductions under
section 642(c) (see instructions) ............... 18b
c Undistributed net investment income. Subtract line 18b from line 18a (see
instructions). If zero or less, enter -0- ............. 18c
19a Adjusted gross income (see instructions) ............ 19a
b Highest tax bracket for estates and trusts for the year (see instructions) . . 19b
c Subtract line 19b from line 19a. If zero or less, enter -0- ....... 19c
20 Enter the smaller of line 18c or line 19c ..................... 20
21 Net investment income tax for estates and trusts. Multiply line 20 by 3.8% (0.038). Enter here and
include on your tax return (see instructions) ................... 21
For Paperwork Reduction Act Notice, see your tax return instructions. Form 8960 (2022)
200,000.
ZACHRY T WOOD 633-44-1725
5,105,000.
4,905,000.
0.
0.
0.
BAA REV 02/10/23 Intuit.cg.cfp.sp

The scripts and documentation in this project are released under the [MIT License](LICENSE).
:Build::
publish.yml
