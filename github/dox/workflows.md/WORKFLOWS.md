ci :C:\I-on :
  push:
    branches: [ "trunk" ]
  pull_request:
    branches: [ "mainbranch" ]

jobs:
  build:

    runs-on: ubuntu-latest
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
      {
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
    "typescript": "helm"
  }
}
'require'' ':'' 'test'' :
:Build::
Pub;ish pom.YML ":    steps:
    - uses: actions/checkout@v3
    - name: Build the site in the jekyll/builder container
      run: |
        docker run \
        -v ${{ github.workspace }}:/srv/jekyll -v ${{ github.workspace }}/_site:/srv/jekyll/_site \
        jekyll/builder:latest /bin/bash -p <port> 4999 :localhost -R 8333 /srv/jekyll && jekyll build --future"