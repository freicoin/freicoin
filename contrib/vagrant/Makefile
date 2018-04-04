#
# Copyright © 2011-2018 Freicoin Developers.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

MAKEFILE := $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))

PROJECT  := freicoin

SHELL    := $(shell bash --help >/dev/null 2>&1 && echo ba)sh

AWK      := $(shell gawk --help >/dev/null 2>&1 && echo g)awk
GREP     := $(shell egrep --help >/dev/null 2>&1 && echo e)grep
PATCH    := $(shell gpatch --help >/dev/null 2>&1 && echo g)patch
SED      := $(shell gsed --help >/dev/null 2>&1 && echo g)sed
WGET     := wget --no-check-certificate \
                 --user-agent=$(shell wget --version | \
            $(SED) -n 's,GNU \(Wget\) \([0-9.]*\).*,\1/\2,p')

REQUIREMENTS := $(AWK) $(SHELL) diff find $(GREP) gzip $(MAKE) openssl	\
                packer $(PATCH) $(SED) sort tar vagrant xargs xz	\
                $(word 1,$(WGET))

BUILD_MANIFEST = cd '$(shell dirname '$(MAKEFILE)')'/../.. && \
	find $(1) -print0 | \
	xargs -0 -n1 openssl sha512 2>/dev/null | \
	openssl sha512 | \
	$(SED) -n 's,^.*\([0-9a-f]\{128\}\),\1,p'

VALIDATE_MANIFEST = \
	if [ -f "$(1)" ] && echo "$(2)" | diff "$(1)" - 2>&1 >/dev/null; then \
	    rm -f "$(1)"; \
	fi

# ===----------------------------------------------------------------------===

PKGS            :=
CACHE_DIR       := cache
HOST_CACHE_DIR  := $(CACHE_DIR)
GUEST_CACHE_DIR := /vagrant/$(CACHE_DIR)

SOURCEFORGE_MIRROR := downloads.sourceforge.net

PKG             := qt-everywhere-opensource-src-4.8.3.tar.gz
$(PKG)_CHECKSUM := 3791ffbea5e1e308d97339ca13638f3b48062119678158edd9fd2b8dc683ae915a9f158ab8ccde6a70c83a15453857cb093355a3087bb529a2556a79743c56d4
$(PKG)_URL      := http://mirror.csclub.uwaterloo.ca/qtproject/archive/qt/4.8/4.8.3/$(PKG)
PKGS            += $(PKG)

PKG             := db-4.8.30.NC.tar.gz
$(PKG)_CHECKSUM := 8d313f1f896e0b0c05cc510c0313324743de3fb660a0bd948c957d5a2d50f1625d8a9a36ec4e6fea09daf1d682dbe1ffccd5c3ec5f066eef72f7525343d0194c
$(PKG)_URL      := http://download.oracle.com/berkeley-db/$(PKG)
PKGS            += $(PKG)

PKG             := boost_1_50_0.tar.bz2
$(PKG)_CHECKSUM := 5909a2eca520a28af31de6a36c51f57b11fddcc0a51493a1e500ade00d9c4e78175c4892c04857ee385f3874f96e561b74b6427e1a155102e926421067d889fe
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/boost/boost/1.50.0/$(PKG)
PKGS            += $(PKG)

PKG             := gmp-5.1.2.tar.xz
$(PKG)_CHECKSUM := 2c135bb6be908e93e63fe8828b2128b4e22e8ba29adf3cc917493ab66b42d54654dad7f101f902105e854731a69a202c38e34f119f642828fa5568ef21075c5a
$(PKG)_URL      := http://ftp.gnu.org/gnu/gmp/$(PKG)
$(PKG)_URL_2    := ftp://ftp.cs.tu-berlin.de/pub/gnu/gmp/$(PKG)
PKGS            += $(PKG)

PKG             := libpng-1.5.9.tar.gz
$(PKG)_CHECKSUM := 490e26139d4f1411e489fc8c777a237699d9a20cd7ad2bac4b9c3e69e1a1637d048edfc3ebeb9a4bad2e1e9ecf5c0bca5312ca5175c500955043073be99cc7ae
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/libpng/libpng15/older-releases/1.5.9/$(PKG)
PKGS            += $(PKG)

PKG             := miniupnpc-1.6.tar.gz
$(PKG)_CHECKSUM := c635057e40aa2826fb07db51c474a335cbcecbf7bba09773826b1aff4a01024dced8a6122e2b90db544540ae499b687006392d6041f7605467b73111ccb368a8
$(PKG)_URL      := http://miniupnp.free.fr/files/$(PKG)
PKGS            += $(PKG)

PKG             := mpfr-3.1.2.tar.xz
$(PKG)_CHECKSUM := 8d594206afb2637ed39ad564d42c8c4d02b042b95925f5c6ec891e5cb87f7155195559c7ff477256a088ecaaa3c2b0d35a9d11a74ed526a1080d49b2950e5587
$(PKG)_URL      := http://ftp.gnu.org/pub/gnu/mpfr/$(PKG)
$(PKG)_URL_2    := http://www.mpfr.org/mpfr-3.1.2/$(PKG)
PKGS            += $(PKG)

PKG             := openssl-1.0.1c.tar.gz
$(PKG)_CHECKSUM := 14f766daab0828a2f07c65d6da8469a4a5a2b839ff3da188538c4e2db3e3e2f37217fb37e269617fb438463b75fb77dab0b155f36831ff48edbc9e7f2903ebd3
$(PKG)_URL      := http://www.openssl.org/source/$(PKG)
PKGS            += $(PKG)

PKG             := osslsigncode-1.7.1.tar.gz
$(PKG)_CHECKSUM := cc5a7e0c5baa2a98db93f1d2cc9d86e732e2a8a55fc20bf8e6aa67e2120af37c6be857dfe4b8eb8c82fd40604dbb3c845190b59c7e6b4147f06b710a256b877f
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/osslsigncode/osslsigncode/$(PKG)
PKGS            += $(PKG)

PKG             := osslsigncode-Backports-to-1.7.1.patch
$(PKG)_CHECKSUM := 182127638206492a609b4f909465b702f7fa89b3cd69f08f86a2efde86dbe597081fb0fd862560fac89e85baf74976c9bcb6b56d17f0e9015ea0c7e33cae1e3a
$(PKG)_URL      := http://bitcoincore.org/cfields/osslsigncode-Backports-to-1.7.1.patch
PKGS            += $(PKG)

PKG             := qrencode-3.2.0.tar.bz2
$(PKG)_CHECKSUM := 64f1e2ccf143f5e2654fcc2f8d41b184acbb91e83269abb01dc71a7b27b395f33a5f5302cba1eb0fb6fac86bea8d92ebcd5fd29b245a60416b4533e3e6c741ca
$(PKG)_URL      := http://fukuchi.org/works/qrencode/$(PKG)
PKGS            += $(PKG)

PKG             := zlib-1.2.6.tar.gz
$(PKG)_CHECKSUM := f812ab3049fc2920a8da4649f6e60340ac365d58a0e76ace5219426aeb0759c0a474cfb2b9902cd0471158fa32a4d2c35692309d266e66013444bdced8ed00d9
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/libpng/zlib/1.2.6/$(PKG)
PKGS            += $(PKG)

# ===----------------------------------------------------------------------===

VAGRANT_UP = \
	vagrant up

VAGRANT_HALT = \
	vagrant halt

VAGRANT_RELOAD = \
	vagrant reload

VAGRANT_DESTROY = \
	vagrant destroy --force

# ===----------------------------------------------------------------------===

.PHONY: all
all: linux win32

.PHONY: mostlyclean
mostlyclean:

.PHONY: clean
clean: mostlyclean
	-rm -rf box
	-rm -rf output
	-rm -f .stamp-*
	-$(call VAGRANT_DESTROY)
	-rm -rf .vagrant

.PHONY: distclean
distclean: clean
	-rm -rf cache
	-rm -rf output-gitian-host-xenial64
	-rm -rf packer_cache

.PHONY: maintainer-clean
maintainer-clean: distclean
	@echo 'This command is intended for maintainers to use; it'
	@echo 'deletes files that may need special tools to rebuild.'

.PHONY: dist
dist: all

# ===----------------------------------------------------------------------===

.PHONY: check-requirements
define CHECK_REQUIREMENT
	@if ! $(1) --help &>/dev/null; then \
	    if ! which $(1) &>/dev/null; then \
	        echo; \
	        echo 'Missing requirement: $(1)'; \
	        echo; \
	        echo 'Please have a look at "README" to ensure'; \
	        echo 'that your system meets all requirements.'; \
	        echo; \
	        exit 1; \
	    fi; \
	fi

endef
define CHECK_REQUIREMENT_VERSION
	@if ! $(1) --version | head -1 | grep ' \($(2)\)$$' >/dev/null; then \
	    echo; \
	    echo 'Wrong version of requirement: $(1)'; \
	    echo; \
	    echo 'Please have a look at "README" to ensure'; \
	    echo 'that your system meets all requirements.'; \
	    echo; \
	    exit 1; \
	fi

endef
check-requirements: .stamp-check-requirements.h
.stamp-check-requirements.h: $(MAKEFILE)
	@echo '[check requirements]'
	$(foreach REQUIREMENT,$(REQUIREMENTS),$(call CHECK_REQUIREMENT,$(REQUIREMENT)))
	$(call CHECK_REQUIREMENT_VERSION,vagrant,[2-9]\.[0-9]\.[0-9])
	@touch "$@"

# ===----------------------------------------------------------------------===

.PHONY: download
download: $(addprefix download-,$(PKGS))

.PHONY: download-depends
download-depends: .stamp-download-depends.h
.stamp-download-depends.h: $(HOST_CACHE_DIR)/src-local.manifest
	mkdir -p cache/gitian/cache/common
	make -C ../../depends download SOURCES_PATH="`pwd`/cache/gitian/cache/common"
	@touch "$@"

PKG_CHECKSUM = \
	openssl sha512 '$(HOST_CACHE_DIR)/$(1)' 2>/dev/null | $(SED) -n 's,^.*\([0-9a-f]\{128\}\)$$,\1,p'

CHECK_PKG_ARCHIVE = \
	[ x'$($(1)_CHECKSUM)' == x"`$$(call PKG_CHECKSUM,$(1))`" ]

DOWNLOAD_PKG_ARCHIVE = \
	mkdir -p '$(HOST_CACHE_DIR)' && \
	$(if $($(1)_URL_2), \
	    ( $(WGET) -T 30 -t 3 -O- '$($(1)_URL)' || $(WGET) -O- '$($(1)_URL_2)' ), \
	    $(WGET) -O- '$($(1)_URL)') \
	$(if $($(1)_FIX_GZIP), \
	    | gzip -d | gzip -9n, \
	    ) \
	> '$(HOST_CACHE_DIR)/$(1)'

define PKG_RULE
.PHONY: download-$(1)
download-$(1): $(HOST_CACHE_DIR)/$(1)
$(HOST_CACHE_DIR)/$(1): .stamp-check-requirements.h
	@echo -n "Checking cached package $(1)... "; \
	if ! $(call CHECK_PKG_ARCHIVE,$(1)); then \
		echo "failed"; \
	     $(call DOWNLOAD_PKG_ARCHIVE,$(1)); \
	     $(call CHECK_PKG_ARCHIVE,$(1)) \
	        || { echo 'Wrong checksum!'; exit 1; }; \
	else \
		echo "ok"; \
	fi

endef
$(foreach PKG,$(PKGS),$(eval $(call PKG_RULE,$(PKG))))

# ===----------------------------------------------------------------------===

GITIAN_HOST_FILES    := contrib/vagrant/Makefile \
                        contrib/vagrant/gitian-host.json \
                        contrib/vagrant/config/preseed.cfg \
                        contrib/vagrant/config/vagrant.sh \
                        contrib/vagrant/config/sshd.sh \
                        contrib/vagrant/config/packages.sh \
                        contrib/vagrant/config/cleanup.sh \
                        contrib/vagrant/Vagrantfile
GITIAN_HOST_FILES    := $(sort $(GITIAN_HOST_FILES))
GITIAN_HOST_MANIFEST := $(shell $(call BUILD_MANIFEST,$(GITIAN_HOST_FILES)))

_ := $(shell $(call \
	VALIDATE_MANIFEST, \
	.stamp-gitian-host.manifest, \
	$(GITIAN_HOST_MANIFEST) \
))

.PHONY: gitian-host
gitian-host: .stamp-gitian-host.manifest
.stamp-gitian-host.manifest: \
	.stamp-check-requirements.h \
	$(foreach FILE,$(GITIAN_HOST_FILES),$(shell echo $(FILE) | $(SED) 's:^contrib/vagrant/::g'))
	
	-$(call VAGRANT_DESTROY)
	
	# Remove any temporary files from interupted builds that would
	# interfere if present.
	if [ -e output-gitian-host-xenial64 ]; then \
	    rm -rf output-gitian-host-xenial64; \
	fi
	
	packer build gitian-host.json
	vagrant box add --name gitian-host-xenial64 --force box/virtualbox/gitian-host-xenial64-0.box
	-rm -rf box
	
	$(call VAGRANT_UP)
	
	-$(call VAGRANT_HALT)
	
	rm -f .stamp-lxc-base.manifest
	
	echo $(GITIAN_HOST_MANIFEST) > "$@"

# ===----------------------------------------------------------------------===

LXC_BASE_FILES    := contrib/vagrant/Makefile
LXC_BASE_FILES    := $(sort $(LXC_BASE_FILES))
LXC_BASE_MANIFEST := $(shell $(call BUILD_MANIFEST,$(LXC_BASE_FILES)))

_ := $(shell $(call \
	VALIDATE_MANIFEST, \
	.stamp-lxc-base.manifest, \
	$(LXC_BASE_MANIFEST) \
))

.PHONY: lxc-base
lxc-base: .stamp-lxc-base.manifest
.stamp-lxc-base.manifest: \
	.stamp-gitian-host.manifest \
	$(foreach FILE,$(LXC_BASE_FILES),$(shell echo $(FILE) | $(SED) 's:^contrib/vagrant/::g'))
	
	$(call VAGRANT_UP)
	
	vagrant ssh --command "\
	    if [ -d ~/gitian-builder ]; then \
	        sudo rm -rf ~/gitian-builder; \
	    fi"
	vagrant ssh --command "\
	    git clone 'https://github.com/devrandom/gitian-builder' ~/gitian-builder"
	vagrant ssh --command "cd ~/gitian-builder && \
	    git checkout ee1b69d6949810069453d5540af7a0b3ca63ea8d"
	vagrant ssh --command "cd ~/gitian-builder && \
	    sed -i 's:archive.ubuntu.com:old-releases.ubuntu.com:g' \
	        bin/make-base-vm target-bin/bootstrap-fixup.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    sed -i 's:security.ubuntu.com:old-releases.ubuntu.com:g' \
	        bin/make-base-vm target-bin/bootstrap-fixup.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    echo 'lxc.autodev = 0' >> etc/lxc.config.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    echo 'lxc.cgroup.devices.allow = c 108:0 rwm' >> etc/lxc.config.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    echo 'lxc.cgroup.devices.allow = b 7:0 rwm' >> etc/lxc.config.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    echo 'lxc.cgroup.devices.allow = c 10:200 rwm' >> etc/lxc.config.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    sed -i 's:grep /lxc/gitian /proc/1/cgroup > /dev/null:true:g' \
	        target-bin/bootstrap-fixup.in"
	vagrant ssh --command "cd ~/gitian-builder && \
	    ln -s $(GUEST_CACHE_DIR) inputs"
	
	vagrant ssh --command "\
	    cd ~/gitian-builder; \
	    if [ ! -f $(GUEST_CACHE_DIR)/lxc-base/$(LXC_BASE_MANIFEST)/base-vm.tar.gz ]; then \
	        env LXC_BRIDGE=lxcbr0 LXC_GUEST_IP=10.0.3.2 GITIAN_HOST_IP=10.0.3.1 \
	            bin/make-base-vm --lxc --suite lucid --arch i386 || exit 1; \
	        env LXC_BRIDGE=lxcbr0 LXC_GUEST_IP=10.0.3.2 GITIAN_HOST_IP=10.0.3.1 \
	            bin/make-base-vm --lxc --suite lucid --arch amd64 || exit 1; \
	        for vm in base-*; do \
	            tar -Srvf base-vm.tar $$vm || exit 1; \
	            rm -f $$vm; \
	        done; \
	        gzip --fast base-vm.tar || exit 1; \
	        mkdir -p $(GUEST_CACHE_DIR)/lxc-base/$(LXC_BASE_MANIFEST) || exit 1; \
	        rsync -av --remove-source-files base-vm.tar.gz $(GUEST_CACHE_DIR)/lxc-base/$(LXC_BASE_MANIFEST); \
	        tar -tf $(GUEST_CACHE_DIR)/lxc-base/$(LXC_BASE_MANIFEST)/base-vm.tar.gz || \
	            rm -rf $(GUEST_CACHE_DIR)/lxc-base/$(LXC_BASE_MANIFEST); \
	    fi"
	vagrant ssh --command "cd ~/gitian-builder && \
	    tar -Sxzvf '$(GUEST_CACHE_DIR)/lxc-base/$(LXC_BASE_MANIFEST)/base-vm.tar.gz'"
	
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif
	
	echo $(LXC_BASE_MANIFEST) > "$@"

# ===----------------------------------------------------------------------===

ifeq ($(shell git log -1 2>&1 >/dev/null && echo true),true)
SOURCE_FILES := $(shell \
	git ls-tree --name-only --full-tree -r `git log -1 --format="%H"` \
	    | $(GREP) -v '^contrib/vagrant/' \
	    | sort)
else
SOURCE_FILES := $(shell cd ../.. && \
	find -L . -type f -print \
	    | $(SED) 's:^\./::g' \
	    | $(GREP) -v '^\.git/' \
	    | $(GREP) -v '^contrib/vagrant/' \
	    | sort)
endif

SOURCE_MANIFEST := $(shell $(call BUILD_MANIFEST,$(SOURCE_FILES)))

_ := $(shell $(call \
	VALIDATE_MANIFEST, \
	$(HOST_CACHE_DIR)/src-local.manifest, \
	$(SOURCE_MANIFEST) \
))

.PHONY: bundle-source
bundle-source: $(HOST_CACHE_DIR)/src-local.manifest
$(HOST_CACHE_DIR)/src-local.manifest: $(HOST_CACHE_DIR)/src-local.tar.xz
	@echo $(SOURCE_MANIFEST) >'$@'
$(HOST_CACHE_DIR)/src-local.tar.xz: \
	$(foreach FILE,$(SOURCE_FILES),$(shell echo $(FILE) | $(SED) 's:^:../../:g'))
	
	mkdir -p '$(HOST_CACHE_DIR)'
	rm -f '$(HOST_CACHE_DIR)'/src-local.{tar,tar.xz}
	if git log -1 2>&1 >> /dev/null && [ -z "$(shell git status --untracked-files=no --porcelain)" ]; then \
	    pushd ../../; \
	    git archive HEAD --format tar --output contrib/vagrant/'$(HOST_CACHE_DIR)'/src-local.tar; \
	    popd; \
	else \
	    COPYFILE_DISABLE=1 tar -C ../.. -rf '$(HOST_CACHE_DIR)'/src-local.tar $(SOURCE_FILES); \
	fi
	xz '$(HOST_CACHE_DIR)'/src-local.tar
	echo "Gitian Builder" > '$(HOST_CACHE_DIR)'/src-local.committer-name
	echo "vagrant@vagrant" > '$(HOST_CACHE_DIR)'/src-local.committer-email
	echo "Gitian Builder <vagrant@vagrant>" > '$(HOST_CACHE_DIR)'/src-local.author
	echo `date` > '$(HOST_CACHE_DIR)'/src-local.committer-date
	cp '$(HOST_CACHE_DIR)'/src-local.committer-date '$(HOST_CACHE_DIR)'/src-local.author-date
	if git log -1 2>&1 >> /dev/null; then \
	    if [ -z "$(shell git status --untracked-files=no --porcelain)" ]; then \
	        git show --format=format:"%cn" | head -n 1 | tee '$(HOST_CACHE_DIR)'/src-local.committer-name; \
	        git show --format=format:"%ce" | head -n 1 | tee '$(HOST_CACHE_DIR)'/src-local.committer-email; \
	        git show --format=format:"%cd" | head -n 1 | tee '$(HOST_CACHE_DIR)'/src-local.committer-date; \
	        git show --format=format:"%an, <%ae>" | head -n 1 | tee '$(HOST_CACHE_DIR)'/src-local.author; \
	        git show --format=format:"%ad" | head -n 1 | tee '$(HOST_CACHE_DIR)'/src-local.author-date; \
	    else \
	        echo `git config user.name`, '<'`git config user.email`'>' > '$(HOST_CACHE_DIR)'/src-local.author; \
	    fi; \
	fi

# ===----------------------------------------------------------------------===

# rightparen=)
# CLIENT_VERSION_MAJOR := $(shell $(GREP) _CLIENT_VERSION_MAJOR ../../configure.ac | head -n 1 | $(AWK) -F'[ $(rightparen)]' '{print $$2}')
# CLIENT_VERSION_MINOR := $(shell $(GREP) _CLIENT_VERSION_MINOR ../../configure.ac | head -n 1 | $(AWK) -F'[ $(rightparen)]' '{print $$2}')
# CLIENT_VERSION_REVISION := $(shell $(GREP) _CLIENT_VERSION_REVISION ../../configure.ac | head -n 1 | $(AWK) -F'[ $(rightparen)]' '{print $$2}')
# ifeq ($(CLIENT_VERSION_REVISION), 99)
# SERIES := $(CLIENT_VERSION_MAJOR).$(shell expr 1 + $(CLIENT_VERSION_MINOR))
# else
# SERIES := $(CLIENT_VERSION_MAJOR).$(CLIENT_VERSION_MINOR)
# endif

SERIES := 0.8.6.1-4

OUTPUT_DIR         := output
HOST_OUTPUT_DIR    := $(OUTPUT_DIR)
GUEST_OUTPUT_DIR   := /vagrant/$(OUTPUT_DIR)

TARGETS            :=

TARGET             := linux
$(TARGET)_NAME     := $(TARGET)-$(SERIES)
$(TARGET)_OUTPUT   := $($(TARGET)_NAME).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian.yml
$(TARGET)_PKGS     := miniupnpc-1.6.tar.gz \
                      qrencode-3.2.0.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/$(HOST_CACHE_DIR)/src-local.tar.xz
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

PLATFORM := win32

TARGET             := boost-$(PLATFORM)
$(TARGET)_VERSION  := 1.50.0-gitian2
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUT   := $($(TARGET)_NAME).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := deps-$(PLATFORM)
$(TARGET)_VERSION  := 0.0.5
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUT   := $($(TARGET)_NAME).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz \
                      gmp-5.1.2.tar.xz \
                      libpng-1.5.9.tar.gz \
                      miniupnpc-1.6.tar.gz \
                      mpfr-3.1.2.tar.xz \
                      openssl-1.0.1c.tar.gz \
                      qrencode-3.2.0.tar.bz2 \
                      zlib-1.2.6.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := qt-$(PLATFORM)
$(TARGET)_VERSION  := 4.8.3-gitian-r1
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUT   := $($(TARGET)_NAME).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-4.8.3.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := $(PLATFORM)
$(TARGET)_NAME     := $(TARGET)-$(SERIES)
$(TARGET)_OUTPUT   := $($(TARGET)_NAME).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(TARGET).yml
$(TARGET)_PKGS     := boost-win32-1.50.0-gitian2.zip \
                      deps-win32-0.0.5.zip \
                      qt-win32-4.8.3-gitian-r1.zip
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/$(HOST_CACHE_DIR)/src-local.tar.xz
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

DEPLOY_SOURCE_BUNDLE = \
	vagrant ssh --command "rm -rf ~/'$(1)' || true"; \
	vagrant ssh --command "mkdir -p ~/'$(1)'" || exit 1; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    tar -xf $(GUEST_CACHE_DIR)/src-local.tar.xz" || exit 1; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    git init" || exit 1; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    git config user.name 'Gitian Builder'" || exit 1; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    git config user.email 'vagrant@vagrant'" || exit 1; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    find . -not \\( -path ./.git -prune \\) -type f -print0 | xargs -0 git add -f" || exit 1; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    env GIT_COMMITTER_NAME='`cat '$(HOST_CACHE_DIR)'/src-local.committer-name`' \
	        GIT_COMMITTER_EMAIL='`cat '$(HOST_CACHE_DIR)'/src-local.committer-email`' \
	        GIT_COMMITTER_DATE='`cat '$(HOST_CACHE_DIR)'/src-local.committer-date`' \
	    git commit --author='`cat '$(HOST_CACHE_DIR)'/src-local.author`' \
	               --date='`cat '$(HOST_CACHE_DIR)'/src-local.author-date`' \
	               -m tip" || exit 1

define TARGET_RULE
.PHONY: $(1)
$(1): $(HOST_OUTPUT_DIR)/$($(1)_OUTPUT)
$(HOST_CACHE_DIR)/$($(1)_OUTPUT): $(HOST_OUTPUT_DIR)/$($(1)_OUTPUT)
	cp '$(HOST_OUTPUT_DIR)/$($(1)_OUTPUT)' '$(HOST_CACHE_DIR)/$($(1)_OUTPUT)'
$(HOST_OUTPUT_DIR)/$($(1)_OUTPUT): \
	.stamp-lxc-base.manifest \
	$(HOST_CACHE_DIR)/src-local.manifest \
	$(foreach TARGET,$($(1)_DEPS),$(TARGET)) \
	$(foreach PACKAGE,$($(1)_PKGS),$(HOST_CACHE_DIR)/$(PACKAGE))
	
	mkdir -p $(HOST_OUTPUT_DIR)
	
	$(call VAGRANT_UP)
	
	$(call DEPLOY_SOURCE_BUNDLE,$(PROJECT))
	
	echo `$($(1)_MANIFEST)` > .$(1).manifest
	
	if [ ! -f $(HOST_CACHE_DIR)/$(1)/`cat .$(1).manifest`/$($(1)_OUTPUT) ]; then \
	    vagrant ssh --command "rm -f ~/gitian-builder/cache"; \
	    vagrant ssh --command "mkdir -p '$(GUEST_CACHE_DIR)/gitian/cache'" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        ln -s '$(GUEST_CACHE_DIR)/gitian/cache' cache" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        env LXC_BRIDGE=lxcbr0 LXC_GUEST_IP=10.0.3.2 GITIAN_HOST_IP=10.0.3.1 USE_LXC=1 \
	            bin/gbuild ../$(PROJECT)/$($(1)_SCRIPT) --memory 2000 --url $(PROJECT)=~/$(PROJECT) --commit $(PROJECT)=master" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder/build/out && \
	        if [ ! -f $($(1)_OUTPUT) ]; then \
	            zip -r $($(1)_OUTPUT) * || exit 1; \
	        fi" || exit 1; \
	    vagrant ssh --command "mkdir -p '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`/" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv build/out/$($(1)_OUTPUT) \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`/" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv result/*-res.yml \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-res.yml'" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv var/build.log \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-build.log'" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv var/install.log \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-install.log'" || exit 1; \
	fi
	
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_OUTPUT)' '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-res.yml' '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-build.log' '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-install.log' '$(HOST_OUTPUT_DIR)/'
	
	rm -f .$(1).manifest
	
	vagrant ssh --command "rm -rf ~/$(PROJECT)"
	
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif

endef
$(foreach TARGET,$(TARGETS),$(eval $(call TARGET_RULE,$(TARGET))))

#
# End of File
#
