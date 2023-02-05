BEGIN'
GLOW4'
checkout' :'#'Checks'-out ':via '::'
  -' https://github.com/mowjoejoejoejoe/docs/compare/main...0-wiz-0:docs:TingluoHuang-patch-1
"dockerfile"::':Build::Publish ::
Issues.tmp :parameters.md :
\@@ -0,0 +1,2 @@
# WORKSFLOW
 AUTOMATE AUTOMATES BEGIN GLOW4 AUTOMATES#Test :tests :tests :Run'@ci: 
Actions
Projects
4
Security
Insights
Add automated spell check #17674
jdkato started this conversation in Ideas
Add automated spell check
#17674
@jdkato
jdkato
on May 6, 2022 · 3 comments
Return to top
Discussion options

jdkato
on May 6, 2022
Hi,

I'm the maintainer of Vale, a linter for prose that allows users to implement custom quality-assurance checks (spell check, repeated words, capitalization, etc.) for their documentation.

One of the challenges of implementing Vale (especially with Markdown content) is getting it to correctly handle what I call "non-standard" markup: templating, shortcodes, snippets, and so on. To make this easier, I'm in the process of creating reusable configurations (or, "packages") for common static site generators and template engines, and I chose this repo as a test case for the Liquid package.

Findings
The following are a few of the errors I found while testing the package. I aired on the side of caution while going through the results; I ignored cases like "collectd" / "Collectd" (casing inconsistencies) and "filesize" / "file size" (spacing inconsistencies), among others.

You can find the full list of cases that I ignored below.

accept.txt (ignored cases)
(?i)addassigneestoassignable
(?i)addlabelstolabelable
(?i)api
(?i)bluetooth
(?i)codeql
(?i)cpp
(?i)cpu
(?i)crt
(?i)css
(?i)dev
(?i)docx
(?i)env
(?i)facebook
(?i)gc
(?i)gifs?
(?i)github
(?i)gpg
(?i)graphql
(?i)gz
(?i)html
(?i)https?
(?i)jpg
(?i)js
(?i)json
(?i)mov
(?i)nasa
(?i)npm
(?i)nvm
(?i)pdf
(?i)php
(?i)png
(?i)pptx
(?i)rdoc
(?i)rsa
(?i)rss
(?i)scim
(?i)sha
(?i)svg
(?i)svn
(?i)tmp
(?i)todo
(?i)toml
(?i)tsv
(?i)tv
(?i)txt
(?i)ubuntu
(?i)uri
(?i)vmg
(?i)vue(:js)?
(?i)wifi
(?i)xlsx
(?i)xml
(?i)yaml
(?i)yml
[aA]llowlist(?:ing)?
[aA]utogenerated
[aA]utolink(?:s|ed)?
[cC]odespaces?
[cC]ollectd
[eE]lasticsearch
[eE]xfiltrating
[gG]radle
[hH]ubcat
[iI]denticon
[jJ]inja
[kK]ustomize
[lL]inux
[lL]ucene
[mM]icrosoft
[mM]ultiline
[oO]cto(?:kit|cat)?
[pP]ageviews
[pP]arallelization
[pP]re
[pP]roxying
[pP]seudonymized
[rR]ebased?
[rR]ebasing
[rR]erequest
[rR]evokable
[rR]ostered
[sS]everability
[sS]trikethrough
[sS]ubprocessing
[sS]ubprocessor
[sS]udo
[tT]akedown
[tT]ransclusion
[tT]riaging
[uU]ncomment
[uU]nfollow
[uU]nhid(?:e|ing)
[uU]npublishing
[uU]nresolving
[uU]nretire
[uU]nreviewed
[uU]nstar
[uU]nsuspend
[uU]ntrusted
[uU]nverify
[uU]nversioned
[uU]nwatch
abcd
adminable
Adoptium
Affero
Aland
alia
anonymized
approvers?
archivability
Arq
asc
Atlassian
attrs
auditlog
Authy
autobuild
Autoconf
autodetect
Autofetch
autofills?
autograding
automations
Automattic
autoscalers?
autoscaling
backfilled
Bazel
becca
benbalter
benefitting
benjaminp
bert
blockchain
bolding
bolton
boolean
bootcamps?
boto
botocore
Braintree
brettcannon
brower
Bundler
Caicos
callout
Camo
captcha
Carbonite
Carlini
carrotsearch
certifi
chardet
chroots?
Citrix
Clearbit
Cliquez
Cobertura
codeblock
codec
Codium
combatting
committish
composable
configs?
cppy
cpython
cron
crontab
cryptocurrency
cryptomining
csproj
cybercrime
datacenters?
datastores?
datetime
dateutil
deallocate
deauthorized
deauthorizes
decompile
dedent
defunkt
deidentify
deliverables?
demianbrecht
demilestoned
Dependabot
deprovision
deprovisioned
dereferenced?
discoverability
dmnfarrell
Dockerfile
dotenv
dotfiles?
dotnet
downscope
downvoting
Eloqua
enablement
enthought
enums?
exfiltrated?
failover
fairyfloss
fakeaction
fastai
fayland
filepaths?
filesize
Fixup
fnmatch
forkable
formatters
fpco
fprime
friedman
frontmatter
fullname
futbol
Gazit
gcloud
Gebru
Gemfiles?
gemrc
geo
gh
gidgethub
gists?
gitattributes?
gitk
gjtorikian
gollum
Grafana
Gravatar
hardcode
hardcoded
hardcoding
Hashicorp
Hashimoto
hh
Homebrew
hostname
hotpackage
hotpatch
hotpatching
hovercards?
hppc
Hubot
Hyperscan
iana
ianare
iceland
ici
idna
ies
infringers?
innersource
innersourcing
interdependencies
isor
iss
itsdangerous
jaeteekae
Janky
JavaScript
jemoji
Jira
jkeylu
jlord
jmespath
Joomla
journalctl
jpaugh
jq
jts
kanban
kansas
Kbuild
kenya
keycutter
keyfiles?
keypair
kjd
kohsuke
kramdown
Kumiko
Laravel
launchd
learnings
legislations
Liberapay
libsaas
Libsodium
licensors?
licensure
locationtech
lockfiles?
lodash
Logstash
london
lowercased
Luhansk
lxml
Macports
Mada
madler
Mailgun
Majeure
Maki
manpage
markupsafe
matplotlib
matrixes
mdo
Memcache
menubar
mergeability
mergeable
metacpan
michael
middleware
milestoned
Miniconda
minio
Mmmmm
monospaced?
Moodle
mozilla
multithread
multithreaded
myorg
Nagios
nameservers?
namespace
nano
nanoc
nat
nbviewer
Nexmo
Nginx
ngrok
noreply
nuget
numpy
nuspec
oauth
obtenir
Okta
onboarded
onboarding
onwards
opencv
openssh
Otechie
overconsumption
passwordless
Patreon
perl
pexpect
philschatz
pipenv
Pithub
pksunkara
plaintext
plu
pluggy
Pluralsight
postsecondary
PowerPoint
PowerShell
Probot
programatically
protectable
pseudonymisation
ptyprocess
publickey
py
Pygments
pypa
pyparsing
pyserial
pytest
pytz
pyyaml
qlpacks?
qmake
Quickstarts
rauhryan
Ravi
Raynes
rb
readme
realtime
reauthenticate
reblame
recategorized
redactions?
redcarpet
redirections
Redis
reimplement
reinstatements?
remediations
renderable
Replit
repls
repo
reselecting
Resque
resync
retargeted
retrievability
retrigger
reusability
roadmaps?
rollout
rsync
Rubocop
Rubygems
runtimes?
russia
sanitization
scipy
sdepold
semver
Sendgrid
serverless
setoff
severities
shipit
shortcode
shumway
signup
signups
simplestyle
Smee
softprops
spammy
sponsorable
src
Statsd
stringifying
styleguide
subcommand
subfields?
subfolders?
sublicensable
sublicense
subnetworks?
subprocesors?
subprocessor
subprojects?
substring
subtrees?
syntaxes
syslog
tada
Tailscale
tdunning
teardown
Termux
textarea
textbox
themself
tibdex
Tidelift
Tiferet
timeframe
timestamping
tkintertable
toolchains?
tooltips?
torvalds
traceroute
transformative
treemap
triaged
twbs
Twilio
typeaheads
Typora
tz
uiri
unactionable
unarchived
unarchives?
unarchiving
unassign
uncurated
unencoded
unencrypted
unescaped
unicode
Unlicense
unlink
unmark
unmarking
unmerged
unminimized
unpatched
unpause
unpublish
unpublished
unpushed
unredacted
unresolve
unsave
unscoped
unselect
unstash
unstashing
untrack
untracked
updatepullrequest
updatepullrequest
updatePullRequest
upscaled
upvoted
urls?
usr
validator
vendored
vendoring
Vijzelstraat
vimrc
von
vscode
Waf
waitlist
walkthrough
wanstrath
webcrawlers?
webos
webpages?
werkzeug
wget
whistleblower
whiteinge
whitepaper
Wiet
wireframe
wonkiness
www
Xcode
Zendesk
Zenodo
zlib
Zsh
Zuora
Error	Correction	Location
from from	from	53:246
secert	secret	78:230
the the	the	45:256
be be	be	28:212
worflows	workflows	206:86
Luhasnk	Luhansk	51:45
transfering	transferring	535:154
Nothwithstanding	Notwithstanding	287:70
apprioriate	appropriate	121:283
currenly	currently	23:259
vulnerabilites	vulnerabilities	43:36
organizaton	organization	213:136
offical	official	29:39
Commiters	Committers	100:143
Configuration
If you'd like to add Vale to this repo, here's the configuration I used:

StylesPath = .github/styles
MinAlertLevel = suggestion

# The accept.txt file is given above
Vocab = Base

SkippedScopes = script, style, pre, figure, alt, strong

[*.md]
BasedOnStyles = Vale

TokenIgnores = ({%.+?%}), ({{.+?}})

BlockIgnores = (?s) *({% raw %}\n.*?\n{% endraw %})
This generally worked pretty good. There were still a few edge cases that I needed to disabled Vale on (using <!-- vale off --> comments), such as the tables in migrating-from-circleci-to-github-actions.md.

I understand if this isn't something you're interested in, but I figured I'd share my work just in case.

You can't vote on a locked discussion
sarahs reacted with heart emoji
Replies:3 comments
Comment options

ramyaparimi
on May 9, 2022
@jdkato Thanks so much for sharing your thoughts in here. We have been trying to implement Vale on this repo since quite some time. We faced a few blockers owing to the challenges while handling non standard markup situations. We raised raised this and this issue in the past with the challenges we had.

With your suggestion, I am currently using TokenIgnores to ignore liquids during linting. The use of regex in BlockedIgnores is something I haven't tried so I am going to check out your configuration.

Thanks so much for choosing the GitHub docs repo as a test for your use case. I will get back to you once I test this and discuss with the team 💖 .

You can't vote on a locked discussion
shukla2004 reacted with thumbs up emoji
0 replies
Comment options 
:Build::
Add :Automates.yml/spell-check.yml :
Update CI · mowjoejoejoejoe/WORKSFLOW@23a1ea3usr/bin/.sh env :
BEGIN
GLOW4
Name :buildthen-deployee-title: 	ci :C:\zieskr/repositories/bitore.sig env
BEGIN
Name :build-then-deployee-title: 
title :ci :C:\I.yml :	title :ci :C:\I.yml :
runs-on :D'jango'.c.i :	runs-on :D'jango'.c.i :
#Kind:kite.i::	#Kind:kite.i::
on:	on:
  push:	  push:
    branches: [ "master" ]	    branches: [ "master" ]
  pull_request:	  pull_request:
    branches: [ "master" ]	    branches: [ "master" ]
jobs:	jobs:
  build:	  build:
    runs-on: ubuntu-latest	    runs-on: ubuntu-latest
    strategy:	    strategy:
      max-parallel: 4	      max-parallel: 4
      matrix:	      matrix:
        python-version: [3.7, 3.8, 3.9]	        python-version: [3.7, 3.8, 3.9]
    steps:	    steps:
    - uses: actions/checkout@v3	    - uses: actions/checkout@v3
    - name: Set up Python ${{ matrix.python-version }}	    - name: Set up Python ${{ matrix.python-version }}
      uses: actions/setup-python@v3	      uses: actions/setup-python@v3
      with:	      with:
        python-version: ${{ matrix.python-version }}	        python-version: ${{ matrix.python-version }}
    - name: Install Dependencies	    - name: Install Dependencies
      run: |	      run: |
        python -m pip install --upgrade pip	        python -m pip install --upgrade pip
        pip install -r requirements.txt	        pip install -r requirements.txt
    - name: Run Tests	    - name: Run Tests
      run: |	      run: |
        python manage.py-CHARM/Thimbal/Graddle/WHIDK'@Django.c.i	        python manage.py-CHARM/Thimbal/Graddle/WHIDK'@Django.c.i
Name :Build and Deploy :title :
title :Change*Log.md :
# pkg.m4 - Macros to locate and utilise pkg-config.            -*- Autoconf -*-
# serial 1 (pkg-config-0.24)
# Copyright © 2004-09-17 :ZACHRY T WOOD <li>cr12753750.00bitore341731337@gmail.com<li>
AC_DEFUN([PKG_PROG_PKG_CONFIG],
[m4_pattern_forbid([^_?PKG_[A-Z_]+$])
m4_pattern_allow([^PKG_CONFIG(_(PATH|LIBDIR|SYSROOT_DIR|ALLOW_SYSTEM_(CFLAGS|LIBS)))?$])
m4_pattern_allow([^PKG_CONFIG_(DISABLE_UNINSTALLED|TOP_BUILD_DIR|DEBUG_SPEW)$])
AC_ARG_VAR([PKG_CONFIG], [path to pkg-config utility])
AC_ARG_VAR([PKG_CONFIG_PATH], [directories to add to pkg-config's search path])
AC_ARG_VAR([PKG_CONFIG_LIBDIR], [path overriding pkg-config's built-in search path])

if test "x$ac_cv_env_PKG_CONFIG_set" != "xset"; then
	AC_PATH_TOOL([PKG_CONFIG], [pkg-config])
fi
if test -n "$PKG_CONFIG"; then
	_pkg_min_version=m4_default([$1], [0.9.0])
	AC_MSG_CHECKING([pkg-config is at least version $_pkg_min_version])
	if $PKG_CONFIG --atleast-pkgconfig-version $_pkg_min_version; then
		AC_MSG_RESULT([yes])
	else
		AC_MSG_RESULT([no])
		PKG_CONFIG=""
	fi
fi[]dnl
])# PKG_PROG_PKG_CONFIG

# PKG_CHECK_EXISTS(MODULES, [ACTION-IF-FOUND], [ACTION-IF-NOT-FOUND])
#
# Check to see whether a particular set of modules exists.  Similar
# to PKG_CHECK_MODULES(), but does not set variables or print errors.
#
# Please remember that m4 expands AC_REQUIRE([PKG_PROG_PKG_CONFIG])
# only at the first occurence in configure.ac, so if the first place
# it's called might be skipped (such as if it is within an "if", you
# have to call PKG_CHECK_EXISTS manually
# --------------------------------------------------------------
AC_DEFUN([PKG_CHECK_EXISTS],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
if test -n "$PKG_CONFIG" && \
    AC_RUN_LOG([$PKG_CONFIG --exists --print-errors "$1"]); then
  m4_default([$2], [:])
m4_ifvaln([$3], [else
  $3])dnl
fi])

# _PKG_CONFIG([VARIABLE], [COMMAND], [MODULES])
# ---------------------------------------------
m4_define([_PKG_CONFIG],
[if test -n "$$1"; then
    pkg_cv_[]$1="$$1"
 elif test -n "$PKG_CONFIG"; then
    PKG_CHECK_EXISTS([$3],
                     [pkg_cv_[]$1=`$PKG_CONFIG --[]$2 "$3" 2>/dev/null`
		      test "x$?" != "x0" && pkg_failed=yes ],
		     [pkg_failed=yes])
 else
    pkg_failed=untried
fi[]dnl
])# _PKG_CONFIG

# _PKG_SHORT_ERRORS_SUPPORTED
# -----------------------------
AC_DEFUN([_PKG_SHORT_ERRORS_SUPPORTED],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])
if $PKG_CONFIG --atleast-pkgconfig-version 0.20; then
        _pkg_short_errors_supported=yes
else
        _pkg_short_errors_supported=no
fi[]dnl
])# _PKG_SHORT_ERRORS_SUPPORTED


# PKG_CHECK_MODULES(VARIABLE-PREFIX, MODULES, [ACTION-IF-FOUND],
# [ACTION-IF-NOT-FOUND])
#
#
# Note that if there is a possibility the first call to
# PKG_CHECK_MODULES might not happen, you should be sure to include an
# explicit call to PKG_PROG_PKG_CONFIG in your configure.ac
#
#
# --------------------------------------------------------------
AC_DEFUN([PKG_CHECK_MODULES],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
AC_ARG_VAR([$1][_CFLAGS], [C compiler flags for $1, overriding pkg-config])dnl
AC_ARG_VAR([$1][_LIBS], [linker flags for $1, overriding pkg-config])dnl

pkg_failed=no
AC_MSG_CHECKING([for $1])

_PKG_CONFIG([$1][_CFLAGS], [cflags], [$2])
_PKG_CONFIG([$1][_LIBS], [libs], [$2])

m4_define([_PKG_TEXT], [Alternatively, you may set the environment variables $1[]_CFLAGS
and $1[]_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.])

if test $pkg_failed = yes; then
   	AC_MSG_RESULT([no])
        _PKG_SHORT_ERRORS_SUPPORTED
        if test $_pkg_short_errors_supported = yes; then
	        $1[]_PKG_ERRORS=`$PKG_CONFIG --short-errors --print-errors --cflags --libs "$2" 2>&1`
        else 
	        $1[]_PKG_ERRORS=`$PKG_CONFIG --print-errors --cflags --libs "$2" 2>&1`
        fi
	# Put the nasty error message in config.log where it belongs
	echo "$$1[]_PKG_ERRORS" >&AS_MESSAGE_LOG_FD

	m4_default([$4], [AC_MSG_ERROR(
[Package requirements ($2) were not met:

$$1_PKG_ERRORS

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

_PKG_TEXT])[]dnl
        ])
elif test $pkg_failed = untried; then
     	AC_MSG_RESULT([no])
	m4_default([$4], [AC_MSG_FAILURE(
[The pkg-config script could not be found or is too old.  Make sure it
is in your PATH or set the PKG_CONFIG environment variable to the full
path to pkg-config.

_PKG_TEXT

To get pkg-config, see <http://pkg-config.freedesktop.org/>.])[]dnl
        ])
else
	$1[]_CFLAGS=$pkg_cv_[]$1[]_CFLAGS
	$1[]_LIBS=$pkg_cv_[]$1[]_LIBS
        AC_MSG_RESULT([yes])
	$3
fi[]dnl
])# PKG_CHECK_MODULES


# PKG_INSTALLDIR(DIRECTORY)
# -------------------------
# Substitutes the variable pkgconfigdir as the location where a module
# should install pkg-config .pc files. By default the directory is
# $libdir/pkgconfig, but the default can be changed by passing
# DIRECTORY. The user can override through the --with-pkgconfigdir
# parameter.
AC_DEFUN([PKG_INSTALLDIR],
[m4_pushdef([pkg_default], [m4_default([$1], ['${libdir}/pkgconfig'])])
m4_pushdef([pkg_description],
    [pkg-config installation directory @<:@]pkg_default[@:>@])
AC_ARG_WITH([pkgconfigdir],
    [AS_HELP_STRING([--with-pkgconfigdir], pkg_description)],,
    [with_pkgconfigdir=]pkg_default)
AC_SUBST([pkgconfigdir], [$with_pkgconfigdir])
m4_popdef([pkg_default])
m4_popdef([pkg_description])
]) dnl PKG_INSTALLDIR


# PKG_NOARCH_INSTALLDIR(DIRECTORY)
# -------------------------
# Substitutes the variable noarch_pkgconfigdir as the location where a
# module should install arch-independent pkg-config .pc files. By
# default the directory is $datadir/pkgconfig, but the default can be
# changed by passing DIRECTORY. The user can override through the
# --with-noarch-pkgconfigdir parameter.
AC_DEFUN([PKG_NOARCH_INSTALLDIR],
[m4_pushdef([pkg_default], [m4_default([$1], ['${datadir}/pkgconfig'])])
m4_pushdef([pkg_description],
    [pkg-config arch-independent installation directory @<:@]pkg_default[@:>@])
AC_ARG_WITH([noarch-pkgconfigdir],
    [AS_HELP_STRING([--with-noarch-pkgconfigdir], pkg_description)],,
    [with_noarch_pkgconfigdir=]pkg_default)
AC_SUBST([noarch_pkgconfigdir], [$with_noarch_pkgconfigdir])
m4_popdef([pkg_default])
m4_popdef([pkg_description])
]) dnl PKG_NOARCH_INSTALLDIR


# PKG_CHECK_VAR(VARIABLE, MODULE, CONFIG-VARIABLE,
# [ACTION-IF-FOUND], [ACTION-IF-NOT-FOUND])
# -------------------------------------------
# Retrieves the value of the pkg-config variable for the given module.
AC_DEFUN([PKG_CHECK_VAR],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
AC_ARG_VAR([$1], [value of $3 for $2, overriding pkg-config])dnl

_PKG_CONFIG([$1], [variable="][$3]["], [$2])
AS_VAR_COPY([$1], [pkg_cv_][$1])

AS_VAR_IF([$1], [""], [$5], [$4])dnl
])# PKG_CHECK_VAR
