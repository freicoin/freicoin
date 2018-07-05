#
# Copyright © 2011-2018 The Freicoin developers.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of version 3 of the GNU Affero General Public
# License as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public
# License along with this program.  If not, see
# <https://www.gnu.org/licenses/>.
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

PKG             := 10cc648683617cca8bcbeae507888099b41b530c.tar.gz
$(PKG)_CHECKSUM := 2ce3841eafd80de37d04d8626eb2885fe758536eab438d65e187e9437148edd3f1931cb4997872cd29e4ca5ce528b3d9343c1f44ce6e64cb909b957140956c6e
$(PKG)_URL      := https://github.com/mingwandroid/toolchain4/archive/$(PKG)
PKGS            += $(PKG)

PKG             := boost_1_55_0.tar.bz2
$(PKG)_CHECKSUM := dc606477f4c303e8f40de2586c16394b6d758e198b35bf3a7d3e576a2f49171aadc4f95e8d685fa731bc4e61e19869d5a24e1e816febfca9de078d66e096e041
$(PKG)_URL      := https://$(SOURCEFORGE_MIRROR)/project/boost/boost/1.55.0/$(PKG)
PKGS            += $(PKG)

PKG             := boost-mingw-gas-cross-compile-2013-03-03.patch
$(PKG)_CHECKSUM := 9d30298e395936dcffc3547186488858441ba6328e8a3ae7df9040f966ba7ebe56220a71898bb200edcd68a620e94a28903f975511fb64688f1b146560d8c291
$(PKG)_URL      := https://svn.boost.org/trac/boost/raw-attachment/ticket/7262/boost-mingw.patch
PKGS            += $(PKG)

PKG             := cctools-809.tar.gz
$(PKG)_CHECKSUM := 1349b3e6b3b48d9fa88dade187c05c80f161c3895fc6451a530880a256eb82dc93376b3cfd0f4d65e83f5fe00dc2baab386c5f78ce5b096f2c69fe53e1a55e24
$(PKG)_URL      := https://www.opensource.apple.com/tarballs/cctools/$(PKG)
PKGS            += $(PKG)

PKG             := cdrkit-1.1.11.tar.gz
$(PKG)_CHECKSUM := e5afcd2cb68d39aeff680a0d5b0a7877f94cf6de111b3cb7388261c665fbd3209ce98a20a01911875af7d6b832a156801b1fa46a4481f7c8ba60b22eac0a5b05
$(PKG)_URL      := http://cdn-fastly.deb.debian.org/debian/pool/main/c/cdrkit/cdrkit_1.1.11.orig.tar.gz
PKGS            += $(PKG)

PKG             := cdrkit-deterministic.patch
$(PKG)_CHECKSUM := d936b1574747052a18d8ede786204fd5dfc83a824be6c2a0857b254095f3bd3d95cef909fcfe95876a2fe2cc016a0ae0b1fc5a52d2be38cf93d36f96ee032ba3
$(PKG)_URL      := https://raw.githubusercontent.com/theuni/osx-cross-depends/master/patches/cdrtools/genisoimage.diff
PKGS            += $(PKG)

PKG             := clang-llvm-3.2-x86-linux-ubuntu-12.04.tar.gz
$(PKG)_CHECKSUM := 48d13c49d4155a5f54dbb1284152027c5cb69b4318c94bad9863abc80a1af6eb9593fe534f0d4028272f5b8f9cefeb96e2f8cda05efe3e5b2e0315e518abdefc
$(PKG)_URL      := https://llvm.org/releases/3.2/clang+llvm-3.2-x86-linux-ubuntu-12.04.tar.gz
PKGS            += $(PKG)

PKG             := db-4.8.30.NC.tar.gz
$(PKG)_CHECKSUM := 8d313f1f896e0b0c05cc510c0313324743de3fb660a0bd948c957d5a2d50f1625d8a9a36ec4e6fea09daf1d682dbe1ffccd5c3ec5f066eef72f7525343d0194c
$(PKG)_URL      := https://download.oracle.com/berkeley-db/$(PKG)
PKGS            += $(PKG)

PKG             := dyld-195.5.tar.gz
$(PKG)_CHECKSUM := f316d32f3e417cf0898a8e231df66572d3424765831375863799d3ff30f8e28342ca692426d0ece7a8d069b341a3b9ca79c625edc322d90e3f26f528ea555324
$(PKG)_URL      := https://www.opensource.apple.com/tarballs/dyld/dyld-195.5.tar.gz
PKGS            += $(PKG)

PKG             := ld64-127.2.tar.gz
$(PKG)_CHECKSUM := a87181eca9307518aa21fc52a4d665c11ad51106c318c229d7f08650228f771484fd0b8c01c63639d577503aa9bc86d0792a3524643dc18cff19c3754aed9fc8
$(PKG)_URL      := https://www.opensource.apple.com/tarballs/ld64/ld64-127.2.tar.gz
PKGS            += $(PKG)

PKG             := libdmg-hfsplus-v0.1.tar.gz
$(PKG)_CHECKSUM := 761f1802cd0e98a87ce4f81c62eacb02e0ab968addfc68bfb25b088ddba3b393ab11aa90d16b17769fd457a3f353ce38bcfa0afea3e76cdcb883e23917bd1b9d
$(PKG)_URL      := https://github.com/theuni/libdmg-hfsplus/archive/$(PKG)
PKGS            += $(PKG)

PKG             := libpng-1.6.8.tar.gz
$(PKG)_CHECKSUM := 1b0de10acf39b300e22fd02fd6a0766a358a02358d081989e9d4f0619918c7ab5be830a232bd58c67a1eb1b592ed0d956588c5dcf489885320c499bb0bd35a74
$(PKG)_URL      := ftp://ftp.simplesystems.org/pub/png/src/history/libpng16/$(PKG)
PKGS            += $(PKG)

PKG             := MacOSX10.7.sdk.tar.gz
$(PKG)_CHECKSUM := d6d816d6505a92b5434af78d8e8863fb7c6efedb18b2928821b50eb4fc152b30a7eb851eaa6dd237c14c7c0168bbf9e88aa11a1f8e0e0c2adf4cc89bd1cf278e
$(PKG)_URL      := https://people.torproject.org/~mikeperry/mirrors/sources/$(PKG)
PKGS            += $(PKG)

PKG             := miniupnpc-1.9.20140701.tar.gz
$(PKG)_CHECKSUM := ad7962aee76e89bd7414e3f5d40b324bf176e4b900fb9774151c286560cd915602f53e301fabaa12d6800a45225d48d4711124a6f227c543ac7faa9c3efa6993
$(PKG)_URL      := https://z.cash/depends-sources/$(PKG)
PKGS            += $(PKG)

PKG             := openssl-1.0.1k.tar.gz
$(PKG)_CHECKSUM := 8b000fbd1bf919d9913a314f99aedd48a69f6caa4ccf43237889e73e08cbe0d82bfc27e9c7c4cade09fc459f91d6c4a831a9b3fc8bca0344fb864eadd7d1e8e8
$(PKG)_URL      := https://www.openssl.org/source/$(PKG)
PKGS            += $(PKG)

PKG             := osslsigncode-1.7.1.tar.gz
$(PKG)_CHECKSUM := cc5a7e0c5baa2a98db93f1d2cc9d86e732e2a8a55fc20bf8e6aa67e2120af37c6be857dfe4b8eb8c82fd40604dbb3c845190b59c7e6b4147f06b710a256b877f
$(PKG)_URL      := https://$(SOURCEFORGE_MIRROR)/project/osslsigncode/osslsigncode/$(PKG)
PKGS            += $(PKG)

PKG             := osslsigncode-Backports-to-1.7.1.patch
$(PKG)_CHECKSUM := 182127638206492a609b4f909465b702f7fa89b3cd69f08f86a2efde86dbe597081fb0fd862560fac89e85baf74976c9bcb6b56d17f0e9015ea0c7e33cae1e3a
$(PKG)_URL      := https://bitcoincore.org/cfields/osslsigncode-Backports-to-1.7.1.patch
PKGS            += $(PKG)

PKG             := protobuf-2.5.0.tar.bz2
$(PKG)_CHECKSUM := 5994b3669808b82fef5c860ecad36358c0767f84acac877e7bfcf722e59d972835a955714149bdd4158fbd1328a51d01397a563991d26475351ee72be48142ee
$(PKG)_URL      := https://github.com/google/protobuf/releases/download/v2.5.0/$(PKG)
PKGS            += $(PKG)

PKG             := qrencode-3.4.3.tar.bz2
$(PKG)_CHECKSUM := eba9d6220d0d5e08da614bd05904a08e11c45b7b293c45aa8417345c3267eae8790e83d9338b6cbadbd3fe15ac4579e0fb9e4e23b4f7e1d56e5fb3729afb9cf5
$(PKG)_URL      := https://fukuchi.org/works/qrencode/$(PKG)
PKGS            += $(PKG)

PKG             := qt-everywhere-opensource-src-4.6.4.tar.gz
$(PKG)_CHECKSUM := 3441b74bd7c0f981bed4886abef8934a6193ab9d0a6d31a7d850ea8ff49172295a6d9c8b26893d88748d6f8759e8e0305b8242230e5e8519ffd35b641566621f
$(PKG)_URL      := https://mirror.csclub.uwaterloo.ca/qtproject/archive/qt/4.6/$(PKG)
PKGS            += $(PKG)

PKG             := qt-everywhere-opensource-src-5.2.0.tar.gz
$(PKG)_CHECKSUM := 4108edc16e48202f5fe45afcd84f2c13c9930e57a81b894696ccaf00aa3221be884d5489b53c2af5b20932eb6b239614a265793e91be05c6b637f5a9b462f272
$(PKG)_URL      := https://mirror.csclub.uwaterloo.ca/qtproject/archive/qt/5.2/5.2.0/single/$(PKG)
PKGS            += $(PKG)

PKG             := qt-everywhere-opensource-src-5.2.1.tar.gz
$(PKG)_CHECKSUM := c594c5aebd991d93028fc4345fbc710388dc1937709001d104db936db4ae78039ef6c0fb36d78740958601aec67e41c91b244fa6a9fb729539de2321a443c1ac
$(PKG)_URL      := https://mirror.csclub.uwaterloo.ca/qtproject/archive/qt/5.2/5.2.1/single/$(PKG)
PKGS            += $(PKG)

PKG             := zlib-1.2.8.tar.gz
$(PKG)_CHECKSUM := ece209d4c7ec0cb58ede791444dc754e0d10811cbbdebe3df61c0fd9f9f9867c1c3ccd5f1827f847c005e24eef34fb5bf87b5d3f894d75da04f1797538290e4a
$(PKG)_URL      := https://$(SOURCEFORGE_MIRROR)/project/libpng/zlib/1.2.8/$(PKG)
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
all: linux osx win

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

.PHONY: shell
shell: gitian-host
	$(call VAGRANT_UP)
	vagrant ssh
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif

.PHONY: pass
pass: check-requirements pass-gitian-host pass-lxc-base

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

.PHONY: pass-gitian-host
pass-gitian-host: check-requirements
	echo $(GITIAN_HOST_MANIFEST) > .stamp-gitian-host.manifest

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
	    fi; \
	    git clone 'https://github.com/devrandom/gitian-builder' ~/gitian-builder || exit 1; \
	    cd ~/gitian-builder; \
	    git checkout 4703d74479f8a26158d475f1ef23deeb1b4ed5e5 || exit 1; \
	    echo 'lxc.autodev = 0' >> etc/lxc.config.in; \
	    echo 'lxc.cgroup.devices.allow = c 108:0 rwm' >> etc/lxc.config.in; \
	    echo 'lxc.cgroup.devices.allow = b 7:0 rwm' >> etc/lxc.config.in; \
	    echo 'lxc.cgroup.devices.allow = c 10:200 rwm' >> etc/lxc.config.in; \
	    ln -s '$(GUEST_CACHE_DIR)' inputs; \
	    env LXC_BRIDGE=lxcbr0 LXC_GUEST_IP=10.0.3.2 GITIAN_HOST_IP=10.0.3.1 \
	        bin/make-base-vm --lxc --suite precise --arch i386 && \
	    env LXC_BRIDGE=lxcbr0 LXC_GUEST_IP=10.0.3.2 GITIAN_HOST_IP=10.0.3.1 \
	        bin/make-base-vm --lxc --suite precise --arch amd64"
	
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif
	
	echo $(LXC_BASE_MANIFEST) > "$@"

.PHONY: pass-lxc-base
pass-lxc-base: pass-gitian-host
	echo $(LXC_BASE_MANIFEST) > .stamp-lxc-base.manifest

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

rightparen=)
CLIENT_VERSION_MAJOR := $(shell $(GREP) _CLIENT_VERSION_MAJOR ../../configure.ac | head -n 1 | $(AWK) -F'[ $(rightparen)]' '{print $$2}')
CLIENT_VERSION_MINOR := $(shell $(GREP) _CLIENT_VERSION_MINOR ../../configure.ac | head -n 1 | $(AWK) -F'[ $(rightparen)]' '{print $$2}')
CLIENT_VERSION_REVISION := $(shell $(GREP) _CLIENT_VERSION_REVISION ../../configure.ac | head -n 1 | $(AWK) -F'[ $(rightparen)]' '{print $$2}')
ifeq ($(CLIENT_VERSION_REVISION), 99)
SERIES := $(CLIENT_VERSION_MAJOR).$(shell expr 1 + $(CLIENT_VERSION_MINOR))
else
SERIES := $(CLIENT_VERSION_MAJOR).$(CLIENT_VERSION_MINOR)
endif

OUTPUT_DIR         := output
HOST_OUTPUT_DIR    := $(OUTPUT_DIR)
GUEST_OUTPUT_DIR   := /vagrant/$(OUTPUT_DIR)

TARGETS            :=

PLATFORM := linux
.PHONY: $(PLATFORM)
$(PLATFORM): $(PROJECT)-$(PLATFORM)

TARGET             := boost-$(PLATFORM)
$(TARGET)_VERSION  := 1.55.0-gitian-r1
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).zip \
                      $(TARGET)64-$($(TARGET)_VERSION).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := boost_1_55_0.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := deps-$(PLATFORM)
$(TARGET)_VERSION  := gitian-r9
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).zip \
                      $(TARGET)64-$($(TARGET)_VERSION).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz \
                      miniupnpc-1.9.20140701.tar.gz \
                      openssl-1.0.1k.tar.gz \
                      protobuf-2.5.0.tar.bz2 \
                      qrencode-3.4.3.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := qt-$(PLATFORM)
$(TARGET)_VERSION  := 4.6.4-gitian-r1
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).tar.gz \
                      $(TARGET)64-$($(TARGET)_VERSION).tar.gz
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-4.6.4.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := $(PROJECT)-$(PLATFORM)
$(TARGET)_NAME     := $(TARGET)-$(SERIES)
$(TARGET)_DISTFILE := $(PROJECT)-\`cat ../version\`-$(PLATFORM)-gitian.zip
$(TARGET)_CLOSURE  := zip -r $($(TARGET)_DISTFILE) *
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(PLATFORM).yml
$(TARGET)_PKGS     := boost-linux32-1.55.0-gitian-r1.zip \
                      boost-linux64-1.55.0-gitian-r1.zip \
                      deps-linux32-gitian-r9.zip \
                      deps-linux64-gitian-r9.zip \
                      qt-linux32-4.6.4-gitian-r1.tar.gz \
                      qt-linux64-4.6.4-gitian-r1.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $(SOURCE_FILES)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

PLATFORM := osx
.PHONY: $(PLATFORM)
$(PLATFORM): $(PROJECT)-$(PLATFORM)

TARGET             := $(PLATFORM)-depends
$(TARGET)_VERSION  := r8
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $($(TARGET)_NAME).tar.gz
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(TARGET).yml
$(TARGET)_PKGS     := boost_1_55_0.tar.bz2 \
                      db-4.8.30.NC.tar.gz \
                      MacOSX10.7.sdk.tar.gz \
                      miniupnpc-1.9.20140701.tar.gz \
                      openssl-1.0.1k.tar.gz \
                      osx-native-depends-r3.tar.gz \
                      protobuf-2.5.0.tar.bz2 \
                      qrencode-3.4.3.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := $(PLATFORM)-native
$(TARGET)_VERSION  := r3
$(TARGET)_NAME     := $(TARGET)-depends-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $($(TARGET)_NAME).tar.gz
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(TARGET).yml
$(TARGET)_PKGS     := 10cc648683617cca8bcbeae507888099b41b530c.tar.gz \
                      cctools-809.tar.gz \
                      cdrkit-1.1.11.tar.gz \
                      cdrkit-deterministic.patch \
                      clang-llvm-3.2-x86-linux-ubuntu-12.04.tar.gz \
                      dyld-195.5.tar.gz \
                      ld64-127.2.tar.gz \
                      libdmg-hfsplus-v0.1.tar.gz \
                      MacOSX10.7.sdk.tar.gz \
                      protobuf-2.5.0.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := $(PLATFORM)-qt
$(TARGET)_VERSION  := 5.2.1-r7
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(PLATFORM)-depends-qt-$($(TARGET)_VERSION).tar.gz
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(TARGET).yml
$(TARGET)_PKGS     := MacOSX10.7.sdk.tar.gz \
                      osx-depends-r8.tar.gz \
                      osx-native-depends-r3.tar.gz \
                      qt-everywhere-opensource-src-5.2.1.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := $(PROJECT)-$(PLATFORM)
$(TARGET)_NAME     := $(TARGET)-$(SERIES)
$(TARGET)_DISTFILE := $(PROJECT)-\`cat ../version\`-$(PLATFORM).dmg
$(TARGET)_CLOSURE  := mv $(PROJECT)-qt.dmg $($(TARGET)_DISTFILE)
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(PLATFORM)-$(PROJECT).yml
$(TARGET)_PKGS     := MacOSX10.7.sdk.tar.gz \
                      osx-depends-qt-5.2.1-r7.tar.gz \
                      osx-depends-r8.tar.gz \
                      osx-native-depends-r3.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $(SOURCE_FILES)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

PLATFORM := win
.PHONY: $(PLATFORM)
$(PLATFORM): $(PROJECT)-$(PLATFORM)

TARGET             := boost-$(PLATFORM)
$(TARGET)_VERSION  := 1.55.0-gitian-r6
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).zip \
                      $(TARGET)64-$($(TARGET)_VERSION).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := boost_1_55_0.tar.bz2 \
                      boost-mingw-gas-cross-compile-2013-03-03.patch
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := deps-$(PLATFORM)
$(TARGET)_VERSION  := gitian-r16
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).zip \
                      $(TARGET)64-$($(TARGET)_VERSION).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz \
                      libpng-1.6.8.tar.gz \
                      miniupnpc-1.9.20140701.tar.gz \
                      openssl-1.0.1k.tar.gz \
                      qrencode-3.4.3.tar.bz2 \
                      zlib-1.2.8.tar.gz
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := protobuf-$(PLATFORM)
$(TARGET)_VERSION  := 2.5.0-gitian-r4
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).zip \
                      $(TARGET)64-$($(TARGET)_VERSION).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := protobuf-2.5.0.tar.bz2
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := qt-$(PLATFORM)
$(TARGET)_VERSION  := 5.2.0-gitian-r3
$(TARGET)_NAME     := $(TARGET)-$($(TARGET)_VERSION)
$(TARGET)_OUTPUTS  := $(TARGET)32-$($(TARGET)_VERSION).zip \
                      $(TARGET)64-$($(TARGET)_VERSION).zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$(TARGET).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-5.2.0.tar.gz \
                      deps-win32-gitian-r16.zip \
                      deps-win64-gitian-r16.zip
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

TARGET             := $(PROJECT)-$(PLATFORM)
$(TARGET)_NAME     := $(TARGET)-$(SERIES)
$(TARGET)_DISTFILE := $(PROJECT)-\`cat ../version\`-$(PLATFORM)-gitian.zip
$(TARGET)_CLOSURE  := zip -r $($(TARGET)_DISTFILE) *
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/gitian-$(PLATFORM).yml
$(TARGET)_PKGS     := boost-win32-1.55.0-gitian-r6.zip \
                      boost-win64-1.55.0-gitian-r6.zip \
                      deps-win32-gitian-r16.zip \
                      deps-win64-gitian-r16.zip \
                      protobuf-win32-2.5.0-gitian-r4.zip \
                      protobuf-win64-2.5.0-gitian-r4.zip \
                      qt-win32-5.2.0-gitian-r3.zip \
                      qt-win64-5.2.0-gitian-r3.zip
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $(SOURCE_FILES)
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

DEPLOY_SOURCE_BUNDLE = \
	vagrant ssh --command "\
	    rm -rf ~/'$(1)'; \
	    mkdir -p ~/'$(1)' || exit 1; \
	    cd ~/'$(1)' || exit 1; \
	    tar -xf $(GUEST_CACHE_DIR)/src-local.tar.xz || exit 1; \
	    git init || exit 1; \
	    git config user.name 'Gitian Builder' || exit 1; \
	    git config user.email 'vagrant@vagrant' || exit 1; \
	    find . -not \\( -path ./.git -prune \\) -type f -print0 | xargs -0 git add -f || exit 1; \
	    env GIT_COMMITTER_NAME='`cat '$(HOST_CACHE_DIR)'/src-local.committer-name`' \
	        GIT_COMMITTER_EMAIL='`cat '$(HOST_CACHE_DIR)'/src-local.committer-email`' \
	        GIT_COMMITTER_DATE='`cat '$(HOST_CACHE_DIR)'/src-local.committer-date`' \
	    git commit --author='`cat '$(HOST_CACHE_DIR)'/src-local.author`' \
	               --date='`cat '$(HOST_CACHE_DIR)'/src-local.author-date`' \
	               -m tip"

.PHONY: deploy-source
deploy-source: $(HOST_CACHE_DIR)/src-local.manifest
	$(call VAGRANT_UP)
	$(call DEPLOY_SOURCE_BUNDLE,$(PROJECT))
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif

define OUTPUT_RULE
$(HOST_CACHE_DIR)/$(1): $(HOST_OUTPUT_DIR)/$(1)
	cp '$(HOST_OUTPUT_DIR)/$(1)' '$(HOST_CACHE_DIR)/$(1)'
$(HOST_OUTPUT_DIR)/$(1): .stamp-$(2).manifest
endef

define TARGET_RULE
.PHONY: $(1)
$(1): $(foreach OUTPUT,$($(1)_OUTPUTS),$(HOST_OUTPUT_DIR)/$(OUTPUT)) .stamp-$(1).manifest
$(foreach OUTPUT,$($(1)_OUTPUTS),$(eval $(call OUTPUT_RULE,$(OUTPUT),$(1))))
.stamp-$(1).manifest: \
	.stamp-lxc-base.manifest \
	$(HOST_CACHE_DIR)/src-local.manifest \
	$(foreach TARGET,$($(1)_DEPS),$(TARGET)) \
	$(foreach PACKAGE,$($(1)_PKGS),$(HOST_CACHE_DIR)/$(PACKAGE))
	
	mkdir -p $(HOST_OUTPUT_DIR)
	
	$(call VAGRANT_UP)
	
	$(call DEPLOY_SOURCE_BUNDLE,$(PROJECT))
	
	echo `$($(1)_MANIFEST)` > .$(1).manifest
	
	if ! cmp --silent '.$(1).manifest' '.stamp-$(1).manifest'; then \
	    vagrant ssh --command "\
	        rm -f ~/gitian-builder/cache; \
	        mkdir -p '$(GUEST_CACHE_DIR)/gitian/cache'; \
	        mkdir -p '$(GUEST_CACHE_DIR)/$(1)/`cat .$(1).manifest`/'; \
	        cd ~/gitian-builder; \
	        ln -s '$(GUEST_CACHE_DIR)/gitian/cache' cache || exit 1; \
	        env LXC_BRIDGE=lxcbr0 LXC_GUEST_IP=10.0.3.2 GITIAN_HOST_IP=10.0.3.1 USE_LXC=1 \
	            bin/gbuild ../$(PROJECT)/$($(1)_SCRIPT) --memory 2000 \
	                       --url $(PROJECT)=~/$(PROJECT) \
	                       --commit $(PROJECT)=master" || exit 1; \
	    $(foreach OUTPUT,$($(1)_OUTPUTS),vagrant ssh --command "cd ~/gitian-builder && \
	        mv 'build/out/$(OUTPUT)' \
	           '$(GUEST_CACHE_DIR)/$(1)/`cat .$(1).manifest`/'" || exit 1;) \
	    $(if $(or $($(1)_CLOSURE),$($(1)_DISTFILE)),vagrant ssh --command " \
	        cd ~/gitian-builder/build/out || exit 1; \
	        echo \`basename src/*.tar.gz | sed -e s:.tar.gz::\` >../basename || exit 1; \
	        tar -xf src/*.tar.gz \`cat ../basename\`/src/clientversion.h \
	                             \`cat ../basename\`/src/version.h \
	                             \`cat ../basename\`/src/version.cpp 2>&1 >/dev/null || exit 1; \
	        pushd \`cat ../basename\`/src; \
	        echo '#include <string>'             >main.cpp && \
	        echo '#include <iostream>'          >>main.cpp && \
	        echo '#include \"version.h\"'       >>main.cpp && \
	        echo 'int main(int, char**) {'      >>main.cpp && \
	        echo '  std::cout << CLIENT_BUILD;' >>main.cpp && \
	        echo '  return 0;'                  >>main.cpp && \
	        echo '}'                            >>main.cpp; \
	        c++ version.cpp main.cpp 2>&1 >/dev/null || exit 1; \
	        ./a.out | tee '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`/version \
	                      >../../../version || exit 1; \
	        popd; \
	        rm -rf \`cat ../basename\`" || exit 1;) \
	    $(if $($(1)_CLOSURE),vagrant ssh --command "cd ~/gitian-builder/build/out || exit 1; \
	        $($(1)_CLOSURE)" || exit 1;) \
	    $(if $($(1)_DISTFILE),vagrant ssh --command "cd ~/gitian-builder/build/out && \
	        mv \"$($(1)_DISTFILE)\" \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`/" || exit 1;) \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv result/*-res.yml \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-res.yml' || exit 1; \
	        mv var/build.log \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-build.log' || exit 1; \
	        mv var/install.log \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-install.log'" || exit 1; \
	fi
	
	$(foreach OUTPUT,$($(1)_OUTPUTS),cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(OUTPUT)' '$(HOST_OUTPUT_DIR)/';)
	$(if $($(1)_DISTFILE),vagrant ssh --command "mkdir -p ~/gitian-builder/build/out && \
	    cd ~/gitian-builder/build/out && \
	    cp \"$(GUEST_CACHE_DIR)/$(1)/`cat .$(1).manifest`/version\" .. && \
	    cp \"$(GUEST_CACHE_DIR)/$(1)/`cat .$(1).manifest`/$($(1)_DISTFILE)\" \
	       '$(GUEST_OUTPUT_DIR)'")
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-res.yml' '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-build.log' '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_NAME)-gitian-install.log' '$(HOST_OUTPUT_DIR)/'
	
	mv .$(1).manifest .stamp-$(1).manifest
	touch .stamp-$(1).manifest
	
	vagrant ssh --command "rm -rf ~/$(PROJECT)"
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif

endef
$(foreach TARGET,$(TARGETS),$(eval $(call TARGET_RULE,$(TARGET))))

#
# End of File
#
