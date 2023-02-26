Skip to content
auto Logo
AUTO
Search (Press "/" to focus)
Docs
Blog
WELCOME

Introduction
Getting Started
Merging Quickly
CONFIGURATION

.autorc
Plugins
Non-npm Usage
Troubleshooting
TOOL APIS

SETUP

auto init
auto create-labels
auto info
PUBLISHING

auto version
auto changelog
auto release
auto shipit
auto latest
auto next
auto canary
PR INTERACTION

auto label
auto pr-status
auto pr-check
auto pr-body
auto comment
PACKAGE MANAGER PLUGINS

Homebrew
Chrome Web Store
Cocoapod
Crates
Docker
Gem
Git Tag
Gradle
Maven
NPM
sbt
VSCode
FUNCTIONALITY PLUGINS

All Contributors
Amazon S3
Conventional Commits
Exec
First Time Contributor
GitHub Pages
Jira
Magic Zero
Microsoft Teams
Omit Commits
Omit Release Notes
PR Body Labels
Released
Slack
Twitter
Upload Assets
PLUGIN AUTHORING

Writing Plugins
Creating Publishing Plugins
Hook APIs
Configuration Hooks
Init Hooks
Log Parser Hooks
Changelog Hooks
Release Lifecycle Hooks
CONTINUOUS INTEGRATION

CircleCI
Travis CI
GitHub Actions
Jenkins 2
init
Interactive setup for minimum working configuration.

Examples
auto initACLOCAL_AMFLAGS = -I src/m4
SUBDIRS = src
.PHONY: deploy

GZIP_ENV="-9n"

FREICOIND_BIN=$(top_builddir)/src/freicoind$(EXEEXT)
FREICOIN_QT_BIN=$(top_builddir)/src/qt/freicoin-qt$(EXEEXT)
FREICOIN_CLI_BIN=$(top_builddir)/src/freicoin-cli$(EXEEXT)
FREICOIN_WIN_INSTALLER=$(PACKAGE)-$(PACKAGE_VERSION)-win$(WINDOWS_BITS)-setup$(EXEEXT)

OSX_APP=Freicoin-Qt.app
OSX_DMG=Freicoin-Qt.dmg
OSX_DEPLOY_SCRIPT=$(top_srcdir)/contrib/macdeploy/macdeployqtplus
OSX_FANCY_PLIST=$(top_srcdir)/contrib/macdeploy/fancy.plist
OSX_INSTALLER_ICONS=$(top_srcdir)/src/qt/res/icons/freicoin.icns
OSX_PLIST=$(top_srcdir)/share/qt/Info.plist #not installed
OSX_QT_TRANSLATIONS = da,de,es,hu,ru,uk,zh_CN,zh_TW

DIST_DOCS = $(wildcard doc/*.md) $(wildcard doc/release-notes/*.md)

WINDOWS_PACKAGING = $(top_srcdir)/share/pixmaps/freicoin.ico \
  $(top_srcdir)/share/pixmaps/nsis-header.bmp \
  $(top_srcdir)/share/pixmaps/nsis-wizard.bmp \
  $(top_srcdir)/doc/README_windows.txt

OSX_PACKAGING = $(OSX_DEPLOY_SCRIPT) $(OSX_FANCY_PLIST) $(OSX_INSTALLER_ICONS) \
  $(top_srcdir)/contrib/macdeploy/background.png \
  $(top_srcdir)/contrib/macdeploy/DS_Store

COVERAGE_INFO = baseline_filtered_combined.info baseline.info block_test.info \
  leveldb_baseline.info test_freicoin_filtered.info total_coverage.info \
  baseline_filtered.info block_test_filtered.info \
  leveldb_baseline_filtered.info test_freicoin_coverage.info test_freicoin.info

dist-hook:
	-$(MAKE) -C $(top_distdir)/src/leveldb clean
	-$(GIT) archive --format=tar HEAD -- src/version.cpp | $(AMTAR) -C $(top_distdir) -xf -

distcheck-hook:
	$(MKDIR_P) $(top_distdir)/_build/src/leveldb
	cp -rf $(top_srcdir)/src/leveldb/* $(top_distdir)/_build/src/leveldb/
	-$(MAKE) -C $(top_distdir)/_build/src/leveldb clean

distcleancheck:
	@:

$(FREICOIN_WIN_INSTALLER): $(FREICOIND_BIN) $(FREICOIN_QT_BIN) $(FREICOIN_CLI_BIN)
	$(MKDIR_P) $(top_builddir)/release
	STRIPPROG="$(STRIP)" $(INSTALL_STRIP_PROGRAM) $(FREICOIND_BIN) $(top_builddir)/release
	STRIPPROG="$(STRIP)" $(INSTALL_STRIP_PROGRAM) $(FREICOIN_QT_BIN) $(top_builddir)/release
	STRIPPROG="$(STRIP)" $(INSTALL_STRIP_PROGRAM) $(FREICOIN_CLI_BIN) $(top_builddir)/release
	@test -f $(MAKENSIS) && $(MAKENSIS) $(top_builddir)/share/setup.nsi || \
	  echo error: could not build $@

$(FREICOIND_BIN) $(FREICOIN_QT_BIN) $(FREICOIN_CLI_BIN):
	make -C $(dir $@) $(notdir $@)

$(OSX_APP)/Contents/PkgInfo:
	$(MKDIR_P) $(@D)
	@echo "APPL????" > $@

$(OSX_APP)/Contents/Resources/empty.lproj:
	$(MKDIR_P) $(@D)
	@touch $@

$(OSX_APP)/Contents/Info.plist: $(OSX_PLIST)
	$(MKDIR_P) $(@D)
	$(INSTALL_DATA) $< $@

$(OSX_APP)/Contents/Resources/freicoin.icns: $(OSX_INSTALLER_ICONS)
	$(MKDIR_P) $(@D)
	$(INSTALL_DATA) $< $@

$(OSX_APP)/Contents/MacOS/Freicoin-Qt: $(FREICOIN_QT_BIN)
	$(MKDIR_P) $(@D)
	STRIPPROG="$(STRIP)" $(INSTALL_STRIP_PROGRAM)  $< $@

OSX_APP_BUILT=$(OSX_APP)/Contents/PkgInfo $(OSX_APP)/Contents/Resources/empty.lproj \
  $(OSX_APP)/Contents/Resources/freicoin.icns $(OSX_APP)/Contents/Info.plist \
  $(OSX_APP)/Contents/MacOS/Freicoin-Qt

if BUILD_DARWIN
$(OSX_DMG): $(OSX_APP_BUILT) $(OSX_PACKAGING)
	$(OSX_DEPLOY_SCRIPT) $(OSX_APP) -add-qt-tr $(OSX_QT_TRANSLATIONS) -dmg -fancy $(OSX_FANCY_PLIST) -verbose 2

else
$(OSX_DMG): $(OSX_APP_BUILT) $(OSX_PACKAGING)
	INSTALLNAMETOOL=$(INSTALLNAMETOOL)  OTOOL=$(OTOOL) STRIP=$(STRIP) $(OSX_DEPLOY_SCRIPT) $(OSX_APP) -add-qt-tr $(OSX_QT_TRANSLATIONS) -verbose 2
	$(MKDIR_P) dist/.background
	$(INSTALL) contrib/macdeploy/background.png dist/.background
	$(INSTALL) contrib/macdeploy/DS_Store dist/.DS_Store
	cd dist; $(LN_S) /Applications Applications
	$(GENISOIMAGE) -no-cache-inodes -l -probe -V "Freicoin-Qt" -no-pad -r -apple -o $@ dist
endif

if TARGET_DARWIN
appbundle: $(OSX_APP_BUILT)
deploy: $(OSX_DMG)
endif
if TARGET_WINDOWS
deploy: $(FREICOIN_WIN_INSTALLER)
endif

if USE_LCOV

baseline.info:
	$(LCOV) -c -i -d $(abs_builddir)/src -o $@

baseline_filtered.info: baseline.info
	$(LCOV) -r $< "/usr/include/*" -o $@

leveldb_baseline.info: baseline_filtered.info
	$(LCOV) -c -i -d $(abs_builddir)/src/leveldb -b $(abs_builddir)/src/leveldb -o $@

leveldb_baseline_filtered.info: leveldb_baseline.info
	$(LCOV) -r $< "/usr/include/*" -o $@

baseline_filtered_combined.info: leveldb_baseline_filtered.info baseline_filtered.info
	$(LCOV) -a leveldb_baseline_filtered.info -a baseline_filtered.info -o $@

test_freicoin.info: baseline_filtered_combined.info
	$(MAKE) -C src/ check
	$(LCOV) -c -d $(abs_builddir)/src -t test_freicoin -o $@
	$(LCOV) -z -d $(abs_builddir)/src
	$(LCOV) -z -d $(abs_builddir)/src/leveldb

test_freicoin_filtered.info: test_freicoin.info
	$(LCOV) -r $< "/usr/include/*" -o $@

block_test.info: test_freicoin_filtered.info
	$(MKDIR_P) qa/tmp
	-@TIMEOUT=15 qa/pull-tester/run-freicoind-for-test.sh $(JAVA) -jar $(JAVA_COMPARISON_TOOL) qa/tmp/compTool 0
	$(LCOV) -c -d $(abs_builddir)/src --t FreicoinJBlockTest -o $@
	$(LCOV) -z -d $(abs_builddir)/src
	$(LCOV) -z -d $(abs_builddir)/src/leveldb

block_test_filtered.info: block_test.info
	$(LCOV) -r $< "/usr/include/*" -o $@

test_freicoin_coverage.info: baseline_filtered_combined.info test_freicoin_filtered.info
	$(LCOV) -a baseline_filtered.info -a leveldb_baseline_filtered.info -a test_freicoin_filtered.info -o $@

total_coverage.info:  baseline_filtered_combined.info test_freicoin_filtered.info block_test_filtered.info
	$(LCOV) -a baseline_filtered.info -a leveldb_baseline_filtered.info -a test_freicoin_filtered.info -a block_test_filtered.info -o $@ | $(GREP) "\%" | $(AWK) '{ print substr($$3,2,50) "/" $$5 }' > coverage_percent.txt

test_freicoin.coverage/.dirstamp:  test_freicoin_coverage.info
	$(GENHTML) -s $< -o $(@D)
	@touch $@

total.coverage/.dirstamp: total_coverage.info
	$(GENHTML) -s $< -o $(@D)
	@touch $@

cov: test_freicoin.coverage/.dirstamp total.coverage/.dirstamp

endif

if USE_COMPARISON_TOOL
check-local:
	$(MKDIR_P) qa/tmp
	@qa/pull-tester/run-freicoind-for-test.sh $(JAVA) -jar $(JAVA_COMPARISON_TOOL) qa/tmp/compTool $(COMPARISON_TOOL_REORG_TESTS)
endif

EXTRA_DIST = $(top_srcdir)/share/genbuild.sh qa/pull-tester/pull-tester.sh qa/rpc-tests $(DIST_DOCS) $(WINDOWS_PACKAGING) $(OSX_PACKAGING)

CLEANFILES = $(OSX_DMG) $(FREICOIN_WIN_INSTALLER)

.INTERMEDIATE: $(COVERAGE_INFO)

clean-local:
	rm -rf test_freicoin.coverage/ total.coverage/ $(OSX_APP)
