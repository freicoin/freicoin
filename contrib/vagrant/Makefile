#
# Copyright © 2011-2013 Bitcoin Developers.
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

VERSION  := 0.8.3-1

SHELL    := $(shell bash --help >/dev/null 2>&1 && echo ba)sh

GREP     := $(shell egrep --help >/dev/null 2>&1 && echo e)grep
PATCH    := $(shell gpatch --help >/dev/null 2>&1 && echo g)patch
SED      := $(shell gsed --help >/dev/null 2>&1 && echo g)sed
WGET     := wget --no-check-certificate \
                 --user-agent=$(shell wget --version | \
                 $(SED) -n 's,GNU \(Wget\) \([0-9.]*\).*,\1/\2,p')

REQUIREMENTS := $(SHELL) bzip2 cut diff $(GREP) gzip $(MAKE) openssl $(PATCH) \
                ruby $(SED) sort tar vagrant wget xargs xz

BUILD_MANIFEST = cd '$(shell dirname '$(MAKEFILE)')'/../.. && \
	find $(1) -print0 | \
	xargs -0 -n1 openssl sha256 2>/dev/null | \
	openssl sha256 | \
	$(SED) -n 's,^.*\([0-9a-f]\{64\}\),\1,p'

VALIDATE_MANIFEST = \
	if [ -f "$(1)" ] && echo "$(2)" | diff "$(1)" - 2>&1 >/dev/null; then \
	    rm -f "$(1)"; \
	fi

# ===----------------------------------------------------------------------===

PKGS            :=
CACHE_DIR       := cache
HOST_CACHE_DIR  := $(CACHE_DIR)
GUEST_CACHE_DIR := /vagrant/$(CACHE_DIR)

SOURCEFORGE_MIRROR := hivelocity.dl.sourceforge.net

PKG             := Tatsh-xchain-ab41b58.tar.gz
$(PKG)_CHECKSUM := f004c27dc636c791c28f8d8224deace00e7ea3bbd71a6ca0c7931ce9284ffe07
$(PKG)_URL      := https://github.com/Tatsh/xchain/tarball/ab41b58
PKGS            += $(PKG)

PKG             := autoconf-2.65.tar.xz
$(PKG)_CHECKSUM := 3e07179feb2ba724ae557872d0cb5878655c58b49b6eaea068210c0bf22661f5
$(PKG)_URL      := http://ftp.gnu.org/gnu/autoconf/$(PKG)
$(PKG)_URL_2    := http://mirrors.usc.edu/pub/gnu/autoconf/$(PKG)
PKGS            += $(PKG)

PKG             := automake-1.11.1.tar.bz2
$(PKG)_CHECKSUM := 5b159d3c0e0a1f87de71b68bcb9f1a1c49e9e71749c9b723f17e2e1e0295c7ae
$(PKG)_URL      := http://ftp.gnu.org/gnu/automake/$(PKG)
$(PKG)_URL_2    := http://mirrors.usc.edu/pub/gnu/automake/$(PKG)
PKGS            += $(PKG)

PKG             := binutils-2.21.1a.tar.bz2
$(PKG)_CHECKSUM := cdecfa69f02aa7b05fbcdf678e33137151f361313b2f3e48aba925f64eabf654
$(PKG)_URL      := http://ftp.gnu.org/gnu/binutils/$(PKG)
PKGS            += $(PKG)

PKG             := binutils-2.22.tar.bz2
$(PKG)_CHECKSUM := 6c7af8ed1c8cf9b4b9d6e6fe09a3e1d3d479fe63984ba8b9b26bf356b6313ca9
$(PKG)_URL      := http://ftp.gnu.org/gnu/binutils/$(PKG)
PKGS            += $(PKG)

PKG             := boost_1_50_0.tar.bz2
$(PKG)_CHECKSUM := dd748a7f5507a7e7af74f452e1c52a64e651ed1f7263fce438a06641d2180d3c
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/boost/boost/1.50.0/$(PKG)
PKGS            += $(PKG)

PKG             := cctools-806.tar.gz
$(PKG)_CHECKSUM := 6116c06920112c634f6df2fa8b2f171ee3b90ff2176137da5856336695a6a676
$(PKG)_URL      := http://opensource.apple.com/tarballs/cctools/$(PKG)
PKGS            += $(PKG)

PKG             := cloog-ppl-0.15.11.tar.gz
$(PKG)_CHECKSUM := 7cd634d0b2b401b04096b545915ac67f883556e9a524e8e803a6bf6217a84d5f
$(PKG)_URL      := http://gcc.cybermirror.org/infrastructure/$(PKG)
$(PKG)_URL_2    := http://www.netgull.com/gcc/infrastructure/$(PKG)
PKGS            += $(PKG)

PKG             := crosstool-ng-1.15.2.tar.bz2
$(PKG)_CHECKSUM := 58efdc97cc9e51c743d3f83c049ee1c1ca1f4cf8160ca7fc28d1480760ec5b4e
$(PKG)_URL      := http://crosstool-ng.org/download/crosstool-ng/$(PKG)
PKGS            += $(PKG)

PKG             := db-4.8.30.NC.tar.gz
$(PKG)_CHECKSUM := 12edc0df75bf9abd7f82f821795bcee50f42cb2e5f76a6a281b85732798364ef
$(PKG)_URL      := http://download.oracle.com/berkeley-db/$(PKG)
PKGS            += $(PKG)

PKG             := dbus-1.5.12.tar.gz
$(PKG)_CHECKSUM := 5d3e09a831259ca64b15357cfa1c60a5a7ab06ef469d5b82c2308de9cadf1094
$(PKG)_URL      := http://dbus.freedesktop.org/releases/dbus/$(PKG)
PKGS            += $(PKG)

PKG             := dbus-1.7.4.tar.gz
$(PKG)_CHECKSUM := 5fba6b7a415d761a843fb8e0aee72db61cf13057a9ef8cdc795e5d369dc74cf1
$(PKG)_URL      := http://dbus.freedesktop.org/releases/dbus/$(PKG)
PKGS            += $(PKG)

PKG             := expat-2.1.0.tar.gz
$(PKG)_CHECKSUM := 823705472f816df21c8f6aa026dd162b280806838bb55b3432b0fb1fcca7eb86
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/expat/expat/2.1.0/$(PKG)
PKGS            += $(PKG)

PKG             := gcc-4.5.2.tar.bz2
$(PKG)_CHECKSUM := 1d9362275ffd9d19fd41f1c3dae0805d6e3991c4d5aa80851f2eaf1bbaa21f88
$(PKG)_URL      := http://ftp.gnu.org/gnu/gcc/gcc-4.5.2/$(PKG)
$(PKG)_URL_2    := http://gcc.fyxm.net/releases/gcc-4.5.2/$(PKG)
PKGS            += $(PKG)

PKG             := gcc-4.7.0.tar.bz2
$(PKG)_CHECKSUM := a680083e016f656dab7acd45b9729912e70e71bbffcbf0e3e8aa1cccf19dc9a5
$(PKG)_URL      := http://ftp.gnu.org/gnu/gcc/gcc-4.7.0/$(PKG)
$(PKG)_URL_2    := http://gcc.fyxm.net/releases/gcc-4.7.0/$(PKG)
PKGS            += $(PKG)

PKG             := gcc-5666.3.tar.gz
$(PKG)_CHECKSUM := 6c46f4376d11ada5be0cfc3894b9296edf574af3c616ab71803ea78edfd7015b
$(PKG)_URL      := http://opensource.apple.com/tarballs/gcc/$(PKG)
PKGS            += $(PKG)

PKG             := glibc-2.11.tar.bz2
$(PKG)_CHECKSUM := 9ef10e498fac4acc458029898fd8fa76c3cedee1f63d23fedf0c579c505ed62c
$(PKG)_URL      := http://ftp.gnu.org/gnu/libc/$(PKG)
PKGS            += $(PKG)

PKG             := gmp-5.0.2.tar.bz2
$(PKG)_CHECKSUM := dbc2db76fdd4e99f85d5e35aa378ed62c283e0d586b91bd8703aff75a7804c28
$(PKG)_URL      := ftp://ftp.gmplib.org/pub/gmp-5.0.2/$(PKG)
$(PKG)_URL_2    := ftp://ftp.cs.tu-berlin.de/pub/gnu/gmp/$(PKG)
PKGS            += $(PKG)

PKG             := gmp-5.0.4.tar.bz2
$(PKG)_CHECKSUM := 35d4aade3e4bdf0915c944599b10d23f108ffedf6c3188aeec52221c5cf9a06f
$(PKG)_URL      := ftp://ftp.gmplib.org/pub/gmp-5.0.2/$(PKG)
$(PKG)_URL_2    := ftp://ftp.cs.tu-berlin.de/pub/gnu/gmp/$(PKG)
PKGS            += $(PKG)

PKG             := gmp-5.1.2.tar.xz
$(PKG)_CHECKSUM := e87015a825a2445e169931ee27849d52576a2d9e338d1383dcb36fed68d0006f
$(PKG)_URL      := ftp://ftp.gmplib.org/pub/gmp-5.0.5/$(PKG)
$(PKG)_URL_2    := ftp://ftp.cs.tu-berlin.de/pub/gnu/gmp/$(PKG)
PKGS            += $(PKG)

PKG             := libelf-0.8.13.tar.gz
$(PKG)_CHECKSUM := 591a9b4ec81c1f2042a97aa60564e0cb79d041c52faa7416acb38bc95bd2c76d
$(PKG)_URL      := http://fossies.org/linux/misc/$(PKG)
$(PKG)_URL_2    := http://www.mr511.de/software/$(PKG)
PKGS            += $(PKG)

PKG             := libpng-1.6.3.tar.gz
$(PKG)_CHECKSUM := b75dae26151f9b031062c8d2f577a094b08da0ae44fe8c11175d0b9ff434cc02
$(PKG)_URL      := ftp://ftp.simplesystems.org/pub/libpng/png/src/$(PKG)
$(PKG)_URL_2    := http://image_magick.veidrodis.com/image_magick/delegates/$(PKG)
PKGS            += $(PKG)

PKG             := libtool-2.2.6b.tar.lzma
$(PKG)_CHECKSUM := 66ebad3c02e5cb6672bfbda1183fb6fc919d33d676eb8be4b7834aa7c3b8b7ae
$(PKG)_URL      := http://ftp.gnu.org/gnu/libtool/$(PKG)
$(PKG)_URL_2    := http://mirrors.usc.edu/pub/gnu/libtool/$(PKG)
PKGS            += $(PKG)

PKG             := linux-2.6.27.62.tar.bz2
$(PKG)_CHECKSUM := 0424ddc6289471e849aec434d88aacb14c6b4c109fc036d429a9d97828afb32a
$(PKG)_URL      := http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.27/$(PKG)
PKGS            += $(PKG)

PKG             := llvmgcc42-2335.15.tar.gz
$(PKG)_CHECKSUM := 45a8f91a82872208c5ce9c0e173954c75d7039008460e11c193ae30e6582cf65
$(PKG)_URL      := http://opensource.apple.com/tarballs/llvmgcc42/$(PKG)
PKGS            += $(PKG)

PKG             := m4-1.4.13.tar.xz
$(PKG)_CHECKSUM := a69ce082cdbd732204c36059c18b2a671c5eb92f4453bcc5ea1ab12dc6f88ed0
$(PKG)_URL      := http://ftp.gnu.org/gnu/m4/$(PKG)
$(PKG)_URL_2    := http://mirror.anl.gov/pub/gnu/m4/$(PKG)
PKGS            += $(PKG)

PKG             := make-3.81.tar.bz2
$(PKG)_CHECKSUM := f3e69023771e23908f5d5592954d8271d3d6af09693cecfd29cee6fde8550dc8
$(PKG)_URL      := http://ftp.gnu.org/gnu/make/$(PKG)
$(PKG)_URL_2    := http://mirrors.usc.edu/pub/gnu/make/$(PKG)
PKGS            += $(PKG)

PKG             := mingw-w64-v2.0.3.tar.gz
$(PKG)_CHECKSUM := e5cac81a2a7fc80cd5f2e52ee7cd666f59ba059ccc583793ee373990be997210
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/mingw-w64/mingw-w64/mingw-w64-release/$(PKG)
PKGS            += $(PKG)

PKG             := mingwrt-3.20-mingw32-dev.tar.gz
$(PKG)_CHECKSUM := a41717c319093e2508a3034e384aaebbc0f94278f4d59d9d0681dd1c2f2828f2
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/mingw/MinGW/Base/mingw-rt/mingwrt-3.20/$(PKG)
PKGS            += $(PKG)

PKG             := miniupnpc-1.8.tar.gz
$(PKG)_CHECKSUM := bbd6b756e6af44b5a5b0f9b93eada3fb8922ed1d6451b7d6f184d0ae0c813994
$(PKG)_URL      := http://miniupnp.free.fr/files/$(PKG)
PKGS            += $(PKG)

PKG             := mpc-0.9.tar.gz
$(PKG)_CHECKSUM := fd3efe422f0d454592059e80f2c00d1a2e381bf2beda424c5094abd4deb049ac
$(PKG)_URL      := http://www.multiprecision.org/mpc/download/$(PKG)
PKGS            += $(PKG)

PKG             := mpfr-3.1.0.tar.bz2
$(PKG)_CHECKSUM := 74a7bbbad168dd1cc414f1c9210b8fc16ccfc8e422d34b3371a8978e31eab680
$(PKG)_URL      := http://www.mpfr.org/mpfr-3.1.0/$(PKG)
$(PKG)_URL_2    := http://ftp.gnu.org/gnu/mpfr/$(PKG)
PKGS            += $(PKG)

PKG             := mpfr-3.1.0.tar.xz
$(PKG)_CHECKSUM := 84fdb2d65e7323ae717f82ebf524280afe076393188e83ebc278a6bd91cf4ed0
$(PKG)_URL      := http://www.mpfr.org/mpfr-3.1.0/$(PKG)
$(PKG)_URL_2    := http://ftp.gnu.org/gnu/mpfr/$(PKG)
PKGS            += $(PKG)

PKG             := mpfr-3.1.2.tar.xz
$(PKG)_CHECKSUM := 49d5acc32dbeec30a8e26af9c19845763d63feacb8bf97b12876008419f5a17a
$(PKG)_URL      := ftp://ftp.gnu.org/pub/gnu/$(PKG)/$(PKG)
$(PKG)_URL_2    := http://www.mpfr.org/mpfr-3.1.2/$(PKG)
PKGS            += $(PKG)

PKG             := openssl-1.0.1c.tar.gz
$(PKG)_CHECKSUM := 2a9eb3cd4e8b114eb9179c0d3884d61658e7d8e8bf4984798a5f5bd48e325ebe
$(PKG)_URL      := http://www.openssl.org/source/$(PKG)
$(PKG)_URL_2    := ftp://ftp.openssl.org/source/$(PKG)
PKGS            += $(PKG)

PKG             := ppl-0.11.2.tar.lzma
$(PKG)_CHECKSUM := 5012c05dd7af7f61c6cb2214b2caf6f3817d8f024949a78414a5babac9822f4e
$(PKG)_URL      := http://bugseng.com/products/ppl/download/ftp/releases/0.11.2/$(PKG)
PKGS            += $(PKG)

PKG             := qrencode-3.4.2.tar.bz2
$(PKG)_CHECKSUM := 03c4bc7cd9a75747c3815d509bbe061907d615764f2357923f0db948c567068f
$(PKG)_URL      := http://fukuchi.org/works/qrencode/$(PKG)
PKGS            += $(PKG)

PKG             := qt-everywhere-opensource-src-4.8.3.tar.gz
$(PKG)_CHECKSUM := 97195ebce8a46f9929fb971d9ae58326d011c4d54425389e6e936514f540221e
$(PKG)_URL      := http://releases.qt-project.org/qt4/source/$(PKG)
$(PKG)_URL_2    := http://get.qt.nokia.com/qt/source/$(PKG)
PKGS            += $(PKG)

PKG             := qt-mac-opensource-4.8.2.dmg
$(PKG)_CHECKSUM := 058459800a9e58e4e8a48fda58036133c6033480f49817db50e936fd644e2692
$(PKG)_URL      := http://releases.qt-project.org/qt4/source/$(PKG)
$(PKG)_URL_2    := http://get.qt.nokia.com/qt/source/$(PKG)
PKGS            += $(PKG)

PKG             := tonytheodore-mxe-1213449.tar.gz
$(PKG)_CHECKSUM := 01c2dc636403e7e5f638e349d56866899d823015d5573b89c404a320e5437475
$(PKG)_URL      := https://github.com/tonytheodore/mxe/tarball/1213449
PKGS            += $(PKG)

PKG             := w32api-3.17-2-mingw32-dev.tar.lzma
$(PKG)_CHECKSUM := 672b60779bedb13b44aa519c4378394b04fca32f926056596bd439628819090a
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/project/mingw/MinGW/Base/w32api/w32api-3.17/$(PKG)
PKGS            += $(PKG)

PKG             := xcode322_2148_developerdvd.dmg
$(PKG)_CHECKSUM := 5c92607aec9b9f9e9dd76c5040cf18bd301b458229fed0caf51f415ae89ec7a0
PKGS            += $(PKG)

PKG             := zlib-1.2.8.tar.gz
$(PKG)_CHECKSUM := 21235e08552e6feba09ea5e8d750805b3391c62fb81c71a235c0044dc7a8a61b
$(PKG)_URL      := http://zlib.net/$(PKG)
$(PKG)_URL_2    := http://$(SOURCEFORGE_MIRROR)/project/libpng/zlib/1.2.8/$(PKG)
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
all: freicoind Freicoin-Qt

.PHONY: mostlyclean
mostlyclean:

.PHONY: clean
clean: mostlyclean
	-rm -rf output
	-rm -f .stamp-*
	-$(call VAGRANT_DESTROY)

.PHONY: distclean
distclean: clean
	-rm -rf cache

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
	$(call CHECK_REQUIREMENT_VERSION,vagrant,1\.[0-9]\.[0-9])
	@touch "$@"

# ===----------------------------------------------------------------------===

.PHONY: download
download: $(addprefix download-,$(PKGS))

PKG_CHECKSUM = \
	openssl sha256 '$(HOST_CACHE_DIR)/$(1)' 2>/dev/null | $(SED) -n 's,^.*\([0-9a-f]\{64\}\)$$,\1,p'

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

HOST_VM_FILES    := contrib/vagrant/Makefile \
                    contrib/vagrant/Vagrantfile \
                    contrib/vagrant/patch/host-vm-etc-network-interfaces-100-add_lxc_br0.patch \
                    contrib/vagrant/patch/host-vm-etc-sysctl.conf-100-enable_ipv4_forward.patch
HOST_VM_FILES    := $(sort $(HOST_VM_FILES))
HOST_VM_MANIFEST := $(shell $(call BUILD_MANIFEST,$(HOST_VM_FILES)))

_ := $(shell $(call \
	VALIDATE_MANIFEST, \
	.stamp-host-vm.manifest, \
	$(HOST_VM_MANIFEST) \
))

.PHONY: host-vm
host-vm: .stamp-host-vm.manifest
.stamp-host-vm.manifest: \
	.stamp-check-requirements.h \
	$(foreach FILE,$(HOST_VM_FILES),$(shell echo $(FILE) | $(SED) 's:^contrib/vagrant/::g'))
	
	-$(call VAGRANT_DESTROY)
	
	$(call VAGRANT_UP)
	
	vagrant ssh --command "echo 'grub-common hold' | sudo dpkg --set-selections"
	
	vagrant ssh --command "sudo apt-get update"
	vagrant ssh --command "sudo apt-get upgrade -y"
	$(call VAGRANT_RELOAD)
	
	vagrant ssh --command "sudo apt-get install -y \
	    debootstrap git lxc python-vm-builder ruby patch zip"
	
	vagrant ssh --command "sudo apt-get install -y bridge-utils"
	vagrant ssh --command "sudo brctl addbr br0"
	vagrant ssh --command "sudo $(SHELL) -c 'cd /etc/network && \
	    patch -p1 < /vagrant/patch/host-vm-etc-network-interfaces-100-add_lxc_br0.patch'"
	vagrant ssh --command "sudo $(SHELL) -c 'cd /etc && \
	    patch -p1 < /vagrant/patch/host-vm-etc-sysctl.conf-100-enable_ipv4_forward.patch'"
	
	vagrant ssh --command "sudo apt-get install -y apt-cacher-ng"
	
	-$(call VAGRANT_HALT)
	
	echo $(HOST_VM_MANIFEST) > "$@"

# ===----------------------------------------------------------------------===

GITIAN_VM_FILES    := contrib/vagrant/Makefile \
                      contrib/vagrant/patch/gitian-builder-69bd6a53.patch
GITIAN_VM_FILES    := $(sort $(GITIAN_VM_FILES))
GITIAN_VM_MANIFEST := $(shell $(call BUILD_MANIFEST,$(GITIAN_VM_FILES)))

_ := $(shell $(call \
	VALIDATE_MANIFEST, \
	.stamp-gitian-guest-vm.manifest, \
	$(GITIAN_VM_MANIFEST) \
))

.PHONY: gitian-guest-vm
gitian-guest-vm: .stamp-gitian-guest-vm.manifest
.stamp-gitian-guest-vm.manifest: \
	.stamp-host-vm.manifest \
	$(foreach FILE,$(GITIAN_VM_FILES),$(shell echo $(FILE) | $(SED) 's:^contrib/vagrant/::g'))
	
	$(call VAGRANT_UP)
	
	vagrant ssh --command "\
	    if [ -d ~/gitian-builder ]; then \
	        rm -rf ~/gitian-builder; \
	    fi"
	vagrant ssh --command "\
	    git clone 'https://github.com/devrandom/gitian-builder' ~/gitian-builder"
	vagrant ssh --command "cd ~/gitian-builder && \
	    git checkout 69bd6a53"
	vagrant ssh --command "cd ~/gitian-builder && \
	    patch -p1 < /vagrant/patch/gitian-builder-69bd6a53.patch"
	vagrant ssh --command "cd ~/gitian-builder && \
	    ln -s $(GUEST_CACHE_DIR) inputs"
	
	vagrant ssh --command "\
	    cd ~/gitian-builder; \
	    if [ -e $(GUEST_CACHE_DIR)/gitian-guest-vm/$(GITIAN_VM_MANIFEST) ]; then \
	        rsync -av $(GUEST_CACHE_DIR)/gitian-guest-vm/$(GITIAN_VM_MANIFEST)/base-* . || exit 1; \
	    else \
	        bin/make-base-vm --lxc --suite precise --arch i386  || exit 1; \
	        bin/make-base-vm --lxc --suite lucid   --arch i386  || exit 1; \
	        bin/make-base-vm --lxc --suite lucid   --arch amd64 || exit 1; \
	        echo base-* | xargs -n1 gzip --fast; \
	        mkdir -p $(GUEST_CACHE_DIR)/gitian-guest-vm/$(GITIAN_VM_MANIFEST) || exit 1; \
	        rsync -av base-* $(GUEST_CACHE_DIR)/gitian-guest-vm/$(GITIAN_VM_MANIFEST) || \
	            rm -rf $(GUEST_CACHE_DIR)/gitian-guest-vm/$(GITIAN_VM_MANIFEST); \
	        [ -e $(GUEST_CACHE_DIR)/gitian-guest-vm/$(GITIAN_VM_MANIFEST) ] || \
	            exit 1; \
	    fi; \
	    echo base-*.gz | xargs -n1 gunzip"
	
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif
	
	echo $(GITIAN_VM_MANIFEST) > "$@"

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
	echo $(SOURCE_MANIFEST) >'$@'
$(HOST_CACHE_DIR)/src-local.tar.xz: \
	$(foreach FILE,$(SOURCE_FILES),$(shell echo $(FILE) | $(SED) 's:^:../../:g'))
	
	mkdir -p '$(HOST_CACHE_DIR)'
	rm -f '$(HOST_CACHE_DIR)'/src-local.{tar,tar.xz}
	COPYFILE_DISABLE=1 tar -C ../.. -rf '$(HOST_CACHE_DIR)'/src-local.tar $(SOURCE_FILES)
	xz '$(HOST_CACHE_DIR)'/src-local.tar

# ===----------------------------------------------------------------------===

OUTPUT_DIR         := output
HOST_OUTPUT_DIR    := $(OUTPUT_DIR)
GUEST_OUTPUT_DIR   := /vagrant/$(OUTPUT_DIR)
PATCH_DIR          := patch
HOST_PATCH_DIR     := $(PATCH_DIR)
GUEST_PATCH_DIR    := /vagrant/$(PATCH_DIR)

TARGETS            :=

Freicoin-Qt: Freicoin-Qt-i686-pc-linux-gnu \
             Freicoin-Qt-x86_64-pc-linux-gnu \
             Freicoin-Qt-i686-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := Freicoin-Qt-$(ARCH)
$(TARGET)_NAME     := Freicoin-Qt
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      dbus-$(ARCH) \
                      expat-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      qt-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := Freicoin-Qt-$(ARCH)
$(TARGET)_NAME     := Freicoin-Qt
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      dbus-$(ARCH) \
                      expat-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      qt-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := Freicoin-Qt-$(ARCH)
$(TARGET)_NAME     := Freicoin-Qt
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := Freicoin-Qt-$(ARCH)
$(TARGET)_NAME     := Freicoin-Qt
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := Freicoin-Qt-$(ARCH)
$(TARGET)_NAME     := Freicoin-Qt
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      qt-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := Freicoin-Qt-$(ARCH)
$(TARGET)_NAME     := Freicoin-Qt
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      qt-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

boost: boost-i686-pc-linux-gnu \
       boost-x86_64-pc-linux-gnu \
       boost-i686-apple-darwin10 \
       boost-x86_64-apple-darwin10 \
       boost-i686-static-mingw32 \
       boost-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := boost-$(ARCH)
$(TARGET)_NAME     := boost
$(TARGET)_VERSION  := 1_50_0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := boost-$(ARCH)
$(TARGET)_NAME     := boost
$(TARGET)_VERSION  := 1_50_0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := boost-$(ARCH)
$(TARGET)_NAME     := boost
$(TARGET)_VERSION  := 1_50_0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := boost-$(ARCH)
$(TARGET)_NAME     := boost
$(TARGET)_VERSION  := 1_50_0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := boost-$(ARCH)
$(TARGET)_NAME     := boost
$(TARGET)_VERSION  := 1_50_0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := boost-$(ARCH)
$(TARGET)_NAME     := boost
$(TARGET)_VERSION  := 1_50_0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := boost_1_50_0.tar.bz2
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

db: db-i686-pc-linux-gnu \
    db-x86_64-pc-linux-gnu \
    db-i686-apple-darwin10 \
    db-x86_64-apple-darwin10 \
    db-i686-static-mingw32 \
    db-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := db-$(ARCH)
$(TARGET)_NAME     := db
$(TARGET)_VERSION  := 4.8.30.NC
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := db-$(ARCH)
$(TARGET)_NAME     := db
$(TARGET)_VERSION  := 4.8.30.NC
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := db-$(ARCH)
$(TARGET)_NAME     := db
$(TARGET)_VERSION  := 4.8.30.NC
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := db-$(ARCH)
$(TARGET)_NAME     := db
$(TARGET)_VERSION  := 4.8.30.NC
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := db-$(ARCH)
$(TARGET)_NAME     := db
$(TARGET)_VERSION  := 4.8.30.NC
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := db-$(ARCH)
$(TARGET)_NAME     := db
$(TARGET)_VERSION  := 4.8.30.NC
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := db-4.8.30.NC.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

dbus: dbus-i686-pc-linux-gnu \
      dbus-x86_64-pc-linux-gnu \
      dbus-i686-apple-darwin10 \
      dbus-x86_64-apple-darwin10 \
      dbus-i686-static-mingw32 \
      dbus-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := dbus-$(ARCH)
$(TARGET)_NAME     := dbus
$(TARGET)_VERSION  := 1.7.4
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := dbus-1.7.4.tar.gz
$(TARGET)_DEPS     := expat-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := dbus-$(ARCH)
$(TARGET)_NAME     := dbus
$(TARGET)_VERSION  := 1.7.4
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := dbus-1.7.4.tar.gz
$(TARGET)_DEPS     := expat-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := dbus-$(ARCH)
$(TARGET)_NAME     := dbus
$(TARGET)_VERSION  := 1.7.4
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := dbus-1.7.4.tar.gz
$(TARGET)_DEPS     := expat-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := dbus-$(ARCH)
$(TARGET)_NAME     := dbus
$(TARGET)_VERSION  := 1.7.4
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := dbus-1.7.4.tar.gz
$(TARGET)_DEPS     := expat-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := dbus-$(ARCH)
$(TARGET)_NAME     := dbus
$(TARGET)_VERSION  := 1.7.4
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := dbus-1.7.4.tar.gz
$(TARGET)_DEPS     := expat-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := dbus-$(ARCH)
$(TARGET)_NAME     := dbus
$(TARGET)_VERSION  := 1.7.4
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := dbus-1.7.4.tar.gz
$(TARGET)_DEPS     := expat-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

expat: expat-i686-pc-linux-gnu \
       expat-x86_64-pc-linux-gnu \
       expat-i686-apple-darwin10 \
       expat-x86_64-apple-darwin10 \
       expat-i686-static-mingw32 \
       expat-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := expat-$(ARCH)
$(TARGET)_NAME     := expat
$(TARGET)_VERSION  := 2.1.0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := expat-2.1.0.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := expat-$(ARCH)
$(TARGET)_NAME     := expat
$(TARGET)_VERSION  := 2.1.0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := expat-2.1.0.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := expat-$(ARCH)
$(TARGET)_NAME     := expat
$(TARGET)_VERSION  := 2.1.0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := expat-2.1.0.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := expat-$(ARCH)
$(TARGET)_NAME     := expat
$(TARGET)_VERSION  := 2.1.0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := expat-2.1.0.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := expat-$(ARCH)
$(TARGET)_NAME     := expat
$(TARGET)_VERSION  := 2.1.0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := expat-2.1.0.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := expat-$(ARCH)
$(TARGET)_NAME     := expat
$(TARGET)_VERSION  := 2.1.0
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := expat-2.1.0.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

freicoind: freicoind-i686-pc-linux-gnu \
           freicoind-x86_64-pc-linux-gnu \
           freicoind-i686-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := freicoind-$(ARCH)
$(TARGET)_NAME     := freicoind
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := freicoind-$(ARCH)
$(TARGET)_NAME     := freicoind
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := freicoind-$(ARCH)
$(TARGET)_NAME     := freicoind
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := freicoind-$(ARCH)
$(TARGET)_NAME     := freicoind
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := freicoind-$(ARCH)
$(TARGET)_NAME     := freicoind
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := freicoind-$(ARCH)
$(TARGET)_NAME     := freicoind
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := boost-$(ARCH) \
                      db-$(ARCH) \
                      gmp-$(ARCH) \
                      libpng-$(ARCH) \
                      miniupnpc-$(ARCH) \
                      mpfr-$(ARCH) \
                      openssl-$(ARCH) \
                      qrencode-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

gmp: gmp-i686-pc-linux-gnu \
     gmp-x86_64-pc-linux-gnu \
     gmp-i686-apple-darwin10 \
     gmp-x86_64-apple-darwin10 \
     gmp-i686-static-mingw32 \
     gmp-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := gmp-$(ARCH)
$(TARGET)_NAME     := gmp
$(TARGET)_VERSION  := 5.0.5
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := gmp-5.1.2.tar.xz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := gmp-$(ARCH)
$(TARGET)_NAME     := gmp
$(TARGET)_VERSION  := 5.0.5
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := gmp-5.1.2.tar.xz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := gmp-$(ARCH)
$(TARGET)_NAME     := gmp
$(TARGET)_VERSION  := 5.0.5
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := gmp-5.1.2.tar.xz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := gmp-$(ARCH)
$(TARGET)_NAME     := gmp
$(TARGET)_VERSION  := 5.0.5
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := gmp-5.1.2.tar.xz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := gmp-$(ARCH)
$(TARGET)_NAME     := gmp
$(TARGET)_VERSION  := 5.0.5
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := gmp-5.1.2.tar.xz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := gmp-$(ARCH)
$(TARGET)_NAME     := gmp
$(TARGET)_VERSION  := 5.0.5
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := gmp-5.1.2.tar.xz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

libpng: libpng-i686-pc-linux-gnu \
        libpng-x86_64-pc-linux-gnu \
        libpng-i686-apple-darwin10 \
        libpng-x86_64-apple-darwin10 \
        libpng-i686-static-mingw32 \
        libpng-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := libpng-$(ARCH)
$(TARGET)_NAME     := libpng
$(TARGET)_VERSION  := 1.6.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := libpng-1.6.3.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := libpng-$(ARCH)
$(TARGET)_NAME     := libpng
$(TARGET)_VERSION  := 1.6.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := libpng-1.6.3.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := libpng-$(ARCH)
$(TARGET)_NAME     := libpng
$(TARGET)_VERSION  := 1.6.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := libpng-1.6.3.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := libpng-$(ARCH)
$(TARGET)_NAME     := libpng
$(TARGET)_VERSION  := 1.6.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := libpng-1.6.3.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := libpng-$(ARCH)
$(TARGET)_NAME     := libpng
$(TARGET)_VERSION  := 1.6.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := libpng-1.6.3.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := libpng-$(ARCH)
$(TARGET)_NAME     := libpng
$(TARGET)_VERSION  := 1.6.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := libpng-1.6.3.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

miniupnpc: miniupnpc-i686-pc-linux-gnu \
           miniupnpc-x86_64-pc-linux-gnu \
           miniupnpc-i686-apple-darwin10 \
           miniupnpc-x86_64-apple-darwin10 \
           miniupnpc-i686-static-mingw32 \
           miniupnpc-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := miniupnpc-$(ARCH)
$(TARGET)_NAME     := miniupnpc
$(TARGET)_VERSION  := 1.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := miniupnpc-1.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := miniupnpc-$(ARCH)
$(TARGET)_NAME     := miniupnpc
$(TARGET)_VERSION  := 1.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := miniupnpc-1.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := miniupnpc-$(ARCH)
$(TARGET)_NAME     := miniupnpc
$(TARGET)_VERSION  := 1.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := miniupnpc-1.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := miniupnpc-$(ARCH)
$(TARGET)_NAME     := miniupnpc
$(TARGET)_VERSION  := 1.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := miniupnpc-1.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := miniupnpc-$(ARCH)
$(TARGET)_NAME     := miniupnpc
$(TARGET)_VERSION  := 1.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := miniupnpc-1.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := miniupnpc-$(ARCH)
$(TARGET)_NAME     := miniupnpc
$(TARGET)_VERSION  := 1.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := miniupnpc-1.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

mpfr: mpfr-i686-pc-linux-gnu \
      mpfr-x86_64-pc-linux-gnu \
      mpfr-i686-apple-darwin10 \
      mpfr-x86_64-apple-darwin10 \
      mpfr-i686-static-mingw32 \
      mpfr-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := mpfr-$(ARCH)
$(TARGET)_NAME     := mpfr
$(TARGET)_VERSION  := 3.1.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := mpfr-3.1.2.tar.xz
$(TARGET)_DEPS     := gmp-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := mpfr-$(ARCH)
$(TARGET)_NAME     := mpfr
$(TARGET)_VERSION  := 3.1.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := mpfr-3.1.2.tar.xz
$(TARGET)_DEPS     := gmp-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := mpfr-$(ARCH)
$(TARGET)_NAME     := mpfr
$(TARGET)_VERSION  := 3.1.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := mpfr-3.1.2.tar.xz
$(TARGET)_DEPS     := gmp-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := mpfr-$(ARCH)
$(TARGET)_NAME     := mpfr
$(TARGET)_VERSION  := 3.1.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := mpfr-3.1.2.tar.xz
$(TARGET)_DEPS     := gmp-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := mpfr-$(ARCH)
$(TARGET)_NAME     := mpfr
$(TARGET)_VERSION  := 3.1.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := mpfr-3.1.2.tar.xz
$(TARGET)_DEPS     := gmp-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := mpfr-$(ARCH)
$(TARGET)_NAME     := mpfr
$(TARGET)_VERSION  := 3.1.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := mpfr-3.1.2.tar.xz
$(TARGET)_DEPS     := gmp-$(ARCH) toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

openssl: openssl-i686-pc-linux-gnu \
         openssl-x86_64-pc-linux-gnu \
         openssl-i686-apple-darwin10 \
         openssl-x86_64-apple-darwin10 \
         openssl-i686-static-mingw32 \
         openssl-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := openssl-$(ARCH)
$(TARGET)_NAME     := openssl
$(TARGET)_VERSION  := 1.0.1c
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := openssl-1.0.1c.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := openssl-$(ARCH)
$(TARGET)_NAME     := openssl
$(TARGET)_VERSION  := 1.0.1c
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := openssl-1.0.1c.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := openssl-$(ARCH)
$(TARGET)_NAME     := openssl
$(TARGET)_VERSION  := 1.0.1c
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := openssl-1.0.1c.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := openssl-$(ARCH)
$(TARGET)_NAME     := openssl
$(TARGET)_VERSION  := 1.0.1c
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := openssl-1.0.1c.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := openssl-$(ARCH)
$(TARGET)_NAME     := openssl
$(TARGET)_VERSION  := 1.0.1c
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := openssl-1.0.1c.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := openssl-$(ARCH)
$(TARGET)_NAME     := openssl
$(TARGET)_VERSION  := 1.0.1c
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := openssl-1.0.1c.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

qrencode: qrencode-i686-pc-linux-gnu \
          qrencode-x86_64-pc-linux-gnu \
          qrencode-i686-apple-darwin10 \
          qrencode-x86_64-apple-darwin10 \
          qrencode-i686-static-mingw32 \
          qrencode-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := qrencode-$(ARCH)
$(TARGET)_NAME     := qrencode
$(TARGET)_VERSION  := 3.4.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qrencode-3.4.2.tar.bz2
$(TARGET)_DEPS     := libpng-$(ARCH) toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := qrencode-$(ARCH)
$(TARGET)_NAME     := qrencode
$(TARGET)_VERSION  := 3.4.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qrencode-3.4.2.tar.bz2
$(TARGET)_DEPS     := libpng-$(ARCH) toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := qrencode-$(ARCH)
$(TARGET)_NAME     := qrencode
$(TARGET)_VERSION  := 3.4.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qrencode-3.4.2.tar.bz2
$(TARGET)_DEPS     := libpng-$(ARCH) toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := qrencode-$(ARCH)
$(TARGET)_NAME     := qrencode
$(TARGET)_VERSION  := 3.4.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qrencode-3.4.2.tar.bz2
$(TARGET)_DEPS     := libpng-$(ARCH) toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := qrencode-$(ARCH)
$(TARGET)_NAME     := qrencode
$(TARGET)_VERSION  := 3.4.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qrencode-3.4.2.tar.bz2
$(TARGET)_DEPS     := libpng-$(ARCH) toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := qrencode-$(ARCH)
$(TARGET)_NAME     := qrencode
$(TARGET)_VERSION  := 3.4.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qrencode-3.4.2.tar.bz2
$(TARGET)_DEPS     := libpng-$(ARCH) toolchain-$(ARCH) zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

qt: qt-i686-pc-linux-gnu \
    qt-x86_64-pc-linux-gnu \
    qt-i686-static-mingw32 \
    qt-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := qt-$(ARCH)
$(TARGET)_NAME     := qt
$(TARGET)_VERSION  := 4.8.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-4.8.3.tar.gz
$(TARGET)_DEPS     := dbus-$(ARCH) \
                      expat-$(ARCH) \
                      libpng-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := qt-$(ARCH)
$(TARGET)_NAME     := qt
$(TARGET)_VERSION  := 4.8.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-4.8.3.tar.gz
$(TARGET)_DEPS     := dbus-$(ARCH) \
                      expat-$(ARCH) \
                      libpng-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := qt-$(ARCH)
$(TARGET)_NAME     := qt
$(TARGET)_VERSION  := 4.8.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-4.8.3.tar.gz
$(TARGET)_DEPS     := libpng-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := qt-$(ARCH)
$(TARGET)_NAME     := qt
$(TARGET)_VERSION  := 4.8.3
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := qt-everywhere-opensource-src-4.8.3.tar.gz
$(TARGET)_DEPS     := libpng-$(ARCH) \
                      toolchain-$(ARCH) \
                      zlib-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

release: release-linux-tar-xz \
         release-windows-setup \
         release-windows-zip

ARCH               := linux-tar-xz
TARGET             := release-$(ARCH)
$(TARGET)_NAME     := release
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := freicoin-$($(TARGET)_VERSION)-linux.tar.xz
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := freicoind-i686-pc-linux-gnu \
                      freicoind-x86_64-pc-linux-gnu \
                      Freicoin-Qt-i686-pc-linux-gnu \
                      Freicoin-Qt-x86_64-pc-linux-gnu
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := windows-setup
TARGET             := release-$(ARCH)
$(TARGET)_NAME     := release
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := freicoin-$($(TARGET)_VERSION)-windows-setup.exe
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := freicoind-i686-static-mingw32 \
                      Freicoin-Qt-i686-static-mingw32
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz \
                      share/setup.nsi
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := windows-zip
TARGET             := release-$(ARCH)
$(TARGET)_NAME     := release
$(TARGET)_VERSION  := $(VERSION)
$(TARGET)_OUTPUT   := freicoin-$($(TARGET)_VERSION)-windows.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     :=
$(TARGET)_DEPS     := freicoind-i686-static-mingw32 \
                      Freicoin-Qt-i686-static-mingw32
$(TARGET)_FILES    := $($(TARGET)_SCRIPT) \
                      contrib/vagrant/cache/src-local.tar.xz
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

toolchain: toolchain-i686-pc-linux-gnu \
           toolchain-x86_64-pc-linux-gnu \
           toolchain-i686-apple-darwin10 \
           toolchain-x86_64-apple-darwin10 \
           toolchain-i686-static-mingw32 \
           toolchain-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := toolchain-$(ARCH)
$(TARGET)_NAME     := toolchain
$(TARGET)_VERSION  := 1.15.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := autoconf-2.65.tar.xz \
                      automake-1.11.1.tar.bz2 \
                      binutils-2.21.1a.tar.bz2 \
                      cloog-ppl-0.15.11.tar.gz \
                      crosstool-ng-1.15.2.tar.bz2 \
                      gcc-4.5.2.tar.bz2 \
                      glibc-2.11.tar.bz2 \
                      gmp-5.0.2.tar.bz2 \
                      libelf-0.8.13.tar.gz \
                      libtool-2.2.6b.tar.lzma \
                      linux-2.6.27.62.tar.bz2 \
                      m4-1.4.13.tar.xz \
                      make-3.81.tar.bz2 \
                      mpc-0.9.tar.gz \
                      mpfr-3.1.0.tar.xz \
                      ppl-0.11.2.tar.lzma
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := toolchain-$(ARCH)
$(TARGET)_NAME     := toolchain
$(TARGET)_VERSION  := 1.15.2
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := autoconf-2.65.tar.xz \
                      automake-1.11.1.tar.bz2 \
                      binutils-2.21.1a.tar.bz2 \
                      cloog-ppl-0.15.11.tar.gz \
                      crosstool-ng-1.15.2.tar.bz2 \
                      gcc-4.5.2.tar.bz2 \
                      glibc-2.11.tar.bz2 \
                      gmp-5.0.2.tar.bz2 \
                      libelf-0.8.13.tar.gz \
                      libtool-2.2.6b.tar.lzma \
                      linux-2.6.27.62.tar.bz2 \
                      m4-1.4.13.tar.xz \
                      make-3.81.tar.bz2 \
                      mpc-0.9.tar.gz \
                      mpfr-3.1.0.tar.xz \
                      ppl-0.11.2.tar.lzma
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := toolchain-$(ARCH)
$(TARGET)_NAME     := toolchain
$(TARGET)_VERSION  := 20120119
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := Tatsh-xchain-ab41b58.tar.gz \
                      cctools-806.tar.gz \
                      gcc-5666.3.tar.gz \
                      llvmgcc42-2335.15.tar.gz \
                      qt-mac-opensource-4.8.2.dmg \
                      xcode322_2148_developerdvd.dmg
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := toolchain-$(ARCH)
$(TARGET)_NAME     := toolchain
$(TARGET)_VERSION  := 20120119
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := Tatsh-xchain-ab41b58.tar.gz \
                      cctools-806.tar.gz \
                      gcc-5666.3.tar.gz \
                      llvmgcc42-2335.15.tar.gz \
                      qt-mac-opensource-4.8.2.dmg \
                      xcode322_2148_developerdvd.dmg
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := toolchain-$(ARCH)
$(TARGET)_NAME     := toolchain
$(TARGET)_VERSION  := 1213449
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := binutils-2.22.tar.bz2 \
                      dbus-1.5.12.tar.gz \
                      expat-2.1.0.tar.gz \
                      gcc-4.7.0.tar.bz2 \
                      gmp-5.0.4.tar.bz2 \
                      mingw-w64-v2.0.3.tar.gz \
                      mingwrt-3.20-mingw32-dev.tar.gz \
                      mpc-0.9.tar.gz \
                      mpfr-3.1.0.tar.bz2 \
                      tonytheodore-mxe-1213449.tar.gz \
                      w32api-3.17-2-mingw32-dev.tar.lzma
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := toolchain-$(ARCH)
$(TARGET)_NAME     := toolchain
$(TARGET)_VERSION  := 1213449
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := binutils-2.22.tar.bz2 \
                      dbus-1.5.12.tar.gz \
                      expat-2.1.0.tar.gz \
                      gcc-4.7.0.tar.bz2 \
                      gmp-5.0.4.tar.bz2 \
                      mingw-w64-v2.0.3.tar.gz \
                      mingwrt-3.20-mingw32-dev.tar.gz \
                      mpc-0.9.tar.gz \
                      mpfr-3.1.0.tar.bz2 \
                      tonytheodore-mxe-1213449.tar.gz \
                      w32api-3.17-2-mingw32-dev.tar.lzma
$(TARGET)_DEPS     :=
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

zlib: zlib-i686-pc-linux-gnu \
      zlib-x86_64-pc-linux-gnu \
      zlib-i686-apple-darwin10 \
      zlib-x86_64-apple-darwin10 \
      zlib-i686-static-mingw32 \
      zlib-x86_64-static-mingw32

ARCH               := i686-pc-linux-gnu
TARGET             := zlib-$(ARCH)
$(TARGET)_NAME     := zlib
$(TARGET)_VERSION  := 1.2.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := zlib-1.2.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-pc-linux-gnu
TARGET             := zlib-$(ARCH)
$(TARGET)_NAME     := zlib
$(TARGET)_VERSION  := 1.2.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := zlib-1.2.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-apple-darwin10
TARGET             := zlib-$(ARCH)
$(TARGET)_NAME     := zlib
$(TARGET)_VERSION  := 1.2.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := zlib-1.2.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-apple-darwin10
TARGET             := zlib-$(ARCH)
$(TARGET)_NAME     := zlib
$(TARGET)_VERSION  := 1.2.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := zlib-1.2.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := i686-static-mingw32
TARGET             := zlib-$(ARCH)
$(TARGET)_NAME     := zlib
$(TARGET)_VERSION  := 1.2.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := zlib-1.2.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

ARCH               := x86_64-static-mingw32
TARGET             := zlib-$(ARCH)
$(TARGET)_NAME     := zlib
$(TARGET)_VERSION  := 1.2.8
$(TARGET)_OUTPUT   := $(TARGET)-$($(TARGET)_VERSION)-gitian.zip
$(TARGET)_SCRIPT   := contrib/gitian-descriptors/$($(TARGET)_NAME)/$(ARCH).yml
$(TARGET)_PKGS     := zlib-1.2.8.tar.gz
$(TARGET)_DEPS     := toolchain-$(ARCH)
$(TARGET)_FILES    := $($(TARGET)_SCRIPT)
$(TARGET)_FILES    += $(foreach PACKAGE, \
                                $($(TARGET)_PKGS), \
                                contrib/vagrant/cache/$(PACKAGE))
$(TARGET)_FILES    := $(sort $($(TARGET)_FILES))
$(TARGET)_MANIFEST := $(call BUILD_MANIFEST,$($(TARGET)_FILES))
TARGETS            += $(TARGET)

DEPLOY_SOURCE_BUNDLE = \
	vagrant ssh --command "rm -rf ~/'$(1)' || true"; \
	vagrant ssh --command "mkdir -p ~/'$(1)'"; \
	vagrant ssh --command "cd ~/'$(1)' && \
	    tar -xf $(GUEST_CACHE_DIR)/src-local.tar.xz"

define TARGET_RULE
.PHONY: $(1)
$(1): $(HOST_OUTPUT_DIR)/$($(1)_OUTPUT)
$(HOST_OUTPUT_DIR)/$($(1)_OUTPUT): \
	.stamp-gitian-guest-vm.manifest \
	$(HOST_CACHE_DIR)/src-local.manifest \
	$(foreach TARGET,$($(1)_DEPS),$(HOST_OUTPUT_DIR)/$($(TARGET)_OUTPUT)) \
	$(foreach PACKAGE,$($(1)_PKGS),$(HOST_CACHE_DIR)/$(PACKAGE))
	
	mkdir -p $(HOST_OUTPUT_DIR)
	
	$(call VAGRANT_UP)
	
	$(call DEPLOY_SOURCE_BUNDLE,freicoin)
	
	echo `$($(1)_MANIFEST)` > .$(1).manifest
	
	if [ ! -f $(HOST_CACHE_DIR)/$(1)/`cat .$(1).manifest`/$($(1)_OUTPUT) ]; then \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        USE_LXC=1 ./bin/gbuild ../freicoin/$($(1)_SCRIPT)" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder/build/out && \
	        if [ ! -f $($(1)_OUTPUT) ]; then \
	            zip -r $($(1)_OUTPUT) * || exit 1; \
	        fi" || exit 1; \
	    vagrant ssh --command "mkdir -p '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`/" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv build/out/$($(1)_OUTPUT) \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`/" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv result/$($(1)_NAME)-res.yml \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(1)-$($(1)_VERSION)-gitian-res.yml'" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv var/build.log \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(1)-$($(1)_VERSION)-gitian-build.log'" || exit 1; \
	    vagrant ssh --command "cd ~/gitian-builder && \
	        mv var/install.log \
	           '$(GUEST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(1)-$($(1)_VERSION)-gitian-install.log'" || exit 1; \
	fi
	
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_OUTPUT)' \
	   '$(HOST_CACHE_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$($(1)_OUTPUT)' \
	   '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(1)-$($(1)_VERSION)-gitian-res.yml' \
	   '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(1)-$($(1)_VERSION)-gitian-build.log' \
	   '$(HOST_OUTPUT_DIR)/'
	cp '$(HOST_CACHE_DIR)/$(1)/'`cat .$(1).manifest`'/$(1)-$($(1)_VERSION)-gitian-install.log' \
	   '$(HOST_OUTPUT_DIR)/'
	
	rm -f .$(1).manifest
	
	vagrant ssh --command "rm -rf ~/freicoin"
	
ifdef VAGRANT_CYCLE
	-$(call VAGRANT_HALT)
endif

endef
$(foreach TARGET,$(TARGETS),$(eval $(call TARGET_RULE,$(TARGET))))

#
# End of File
#
