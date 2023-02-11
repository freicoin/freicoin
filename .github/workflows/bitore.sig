name: C/C++ CI

on:
  push:
    branches: [ "master" ]
  pull_request:
    branches: [ "master" ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    - name: configure
      run: ./configure
    - name: make
      run: make
    - name: make check
      run: make check
    - name: make distcheck
      run: make distcheck
Skip to content
Search or jump to…
Pull requests
Issues
Codespaces
Marketplace
Explore
 
@mowjoejoejoejoe 
Your account has been flagged.
Because of that, your profile is hidden from the public. If you believe this is a mistake, contact support to have your account status reviewed.
mowjoejoejoejoe
/
freicoin
Public
forked from freicoin/freicoin
Fork your own copy of mowjoejoejoejoe/freicoin
Code
Pull requests
1
Actions
Projects
Wiki
Security
Insights
Settings
Python Package using Conda
Create python-package-conda.yml #1
Jobs
Run details
build-linux
failed last week in 10s
Search logs
2s
2s
  Receiving objects:  96% (892/929)
  Receiving objects:  97% (902/929)
  Receiving objects:  98% (911/929)
  remote: Total 929 (delta 117), reused 485 (delta 90), pack-reused 0        
  Receiving objects:  99% (920/929)
  Receiving objects: 100% (929/929)
  Receiving objects: 100% (929/929), 4.23 MiB | 18.06 MiB/s, done.
  Resolving deltas:   0% (0/117)
  Resolving deltas:   1% (2/117)
  Resolving deltas:   2% (3/117)
  Resolving deltas:   3% (4/117)
  Resolving deltas:   4% (5/117)
  Resolving deltas:   5% (6/117)
  Resolving deltas:   6% (8/117)
  Resolving deltas:   7% (9/117)
  Resolving deltas:   8% (10/117)
  Resolving deltas:   9% (11/117)
  Resolving deltas:  10% (12/117)
  Resolving deltas:  11% (13/117)
  Resolving deltas:  12% (15/117)
  Resolving deltas:  13% (16/117)
  Resolving deltas:  14% (17/117)
  Resolving deltas:  15% (18/117)
  Resolving deltas:  16% (19/117)
  Resolving deltas:  17% (20/117)
  Resolving deltas:  18% (22/117)
  Resolving deltas:  19% (23/117)
  Resolving deltas:  20% (24/117)
  Resolving deltas:  21% (25/117)
  Resolving deltas:  22% (26/117)
  Resolving deltas:  23% (27/117)
  Resolving deltas:  24% (29/117)
  Resolving deltas:  25% (30/117)
  Resolving deltas:  26% (31/117)
  Resolving deltas:  27% (32/117)
  Resolving deltas:  28% (33/117)
  Resolving deltas:  29% (34/117)
  Resolving deltas:  30% (36/117)
  Resolving deltas:  31% (37/117)
  Resolving deltas:  32% (38/117)
  Resolving deltas:  33% (39/117)
  Resolving deltas:  34% (40/117)
  Resolving deltas:  35% (41/117)
  Resolving deltas:  36% (43/117)
  Resolving deltas:  37% (44/117)
  Resolving deltas:  38% (45/117)
  Resolving deltas:  39% (46/117)
  Resolving deltas:  40% (47/117)
  Resolving deltas:  41% (48/117)
  Resolving deltas:  42% (50/117)
  Resolving deltas:  43% (51/117)
  Resolving deltas:  44% (52/117)
  Resolving deltas:  45% (53/117)
  Resolving deltas:  46% (54/117)
  Resolving deltas:  47% (55/117)
  Resolving deltas:  48% (57/117)
  Resolving deltas:  49% (58/117)
  Resolving deltas:  50% (59/117)
  Resolving deltas:  51% (60/117)
  Resolving deltas:  52% (61/117)
  Resolving deltas:  53% (63/117)
  Resolving deltas:  54% (64/117)
  Resolving deltas:  55% (65/117)
  Resolving deltas:  56% (66/117)
  Resolving deltas:  57% (67/117)
  Resolving deltas:  58% (68/117)
  Resolving deltas:  59% (70/117)
  Resolving deltas:  60% (71/117)
  Resolving deltas:  61% (72/117)
  Resolving deltas:  62% (73/117)
  Resolving deltas:  63% (74/117)
  Resolving deltas:  64% (75/117)
  Resolving deltas:  65% (77/117)
  Resolving deltas:  66% (78/117)
  Resolving deltas:  67% (79/117)
  Resolving deltas:  68% (80/117)
  Resolving deltas:  69% (81/117)
  Resolving deltas:  70% (82/117)
  Resolving deltas:  71% (84/117)
  Resolving deltas:  72% (85/117)
  Resolving deltas:  73% (86/117)
  Resolving deltas:  74% (87/117)
  Resolving deltas:  75% (88/117)
  Resolving deltas:  76% (89/117)
  Resolving deltas:  77% (91/117)
  Resolving deltas:  78% (92/117)
  Resolving deltas:  79% (93/117)
  Resolving deltas:  80% (94/117)
  Resolving deltas:  81% (95/117)
  Resolving deltas:  82% (96/117)
  Resolving deltas:  83% (98/117)
  Resolving deltas:  84% (99/117)
  Resolving deltas:  85% (100/117)
  Resolving deltas:  86% (101/117)
  Resolving deltas:  87% (102/117)
  Resolving deltas:  88% (103/117)
  Resolving deltas:  89% (105/117)
  Resolving deltas:  90% (106/117)
  Resolving deltas:  91% (107/117)
  Resolving deltas:  92% (108/117)
  Resolving deltas:  93% (109/117)
  Resolving deltas:  94% (110/117)
  Resolving deltas:  95% (112/117)
  Resolving deltas:  96% (113/117)
  Resolving deltas:  97% (114/117)
  Resolving deltas:  98% (115/117)
  Resolving deltas:  99% (116/117)
  Resolving deltas: 100% (117/117)
  Resolving deltas: 100% (117/117), done.
  From https://github.com/mowjoejoejoejoe/freicoin
   * [new ref]         f1abeda956315a1d7d8b9c964d837a4303485b3c -> origin/master
Determining the checkout info
Checking out the ref
  /usr/bin/git checkout --progress --force -B master refs/remotes/origin/master
  Reset branch 'master'
  branch 'master' set up to track 'origin/master'.
/usr/bin/git log -1 --format='%H'
'f1abeda956315a1d7d8b9c964d837a4303485b3c'
0s
Run actions/setup-python@v3
  with:
    python-version: 3.10
    token: ***
Warning: The `set-output` command is deprecated and will be disabled soon. Please upgrade to using Environment Files. For more information see: https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/
Successfully setup CPython (3.10.9)
0s
Run # $CONDA is an environment variable pointing to the root of the miniconda directory
  # $CONDA is an environment variable pointing to the root of the miniconda directory
  echo $CONDA/bin >> $GITHUB_PATH
  shell: /usr/bin/bash -e {0}
  env:
    pythonLocation: /opt/hostedtoolcache/Python/3.10.9/x64
    LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.10.9/x64/lib
4s
Run conda env update --file environment.yml --name base
  conda env update --file environment.yml --name base
  shell: /usr/bin/bash -e {0}
  env:
    pythonLocation: /opt/hostedtoolcache/Python/3.10.9/x64
    LD_LIBRARY_PATH: /opt/hostedtoolcache/Python/3.10.9/x64/lib

SpecNotFound: Invalid name 'base', try the format: user/package

Error: Process completed with exit code 1.
0s
0s
0s
0s
Post job cleanup.
/usr/bin/git version
git version 2.39.1
Temporarily overriding HOME='/home/runner/work/_temp/636997a4-c6e6-410e-b860-5c886a32f905' before making global git config changes
Adding repository directory to the temporary git global config as a safe directory
/usr/bin/git config --global --add safe.directory /home/runner/work/freicoin/freicoin
/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
http.https://github.com/.extraheader
/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
0s
Cleaning up orphan processes
Create python-package-conda.yml · mowjoejoejoejoe/freicoin@f1abeda
