include $(top_srcdir)/src/Makefile.include

AM_CPPFLAGS += -I$(top_srcdir)/src \
  -I$(top_builddir)/src/qt \
  -I$(top_builddir)/src/qt/forms \
  $(PROTOBUF_CFLAGS) \
  $(QR_CFLAGS)
bin_PROGRAMS = freicoin-qt
noinst_LIBRARIES = libfreicoinqt.a
SUBDIRS = . $(BUILD_TEST_QT)
DIST_SUBDIRS = . test

# freicoin qt core #
QT_TS = \
  locale/freicoin_ach.ts \
  locale/freicoin_af_ZA.ts \
  locale/freicoin_ar.ts \
  locale/freicoin_be_BY.ts \
  locale/freicoin_bg.ts \
  locale/freicoin_bs.ts \
  locale/freicoin_ca_ES.ts \
  locale/freicoin_ca.ts \
  locale/freicoin_ca@valencia.ts \
  locale/freicoin_cmn.ts \
  locale/freicoin_cs.ts \
  locale/freicoin_cy.ts \
  locale/freicoin_da.ts \
  locale/freicoin_de.ts \
  locale/freicoin_el_GR.ts \
  locale/freicoin_en.ts \
  locale/freicoin_eo.ts \
  locale/freicoin_es_CL.ts \
  locale/freicoin_es_DO.ts \
  locale/freicoin_es_MX.ts \
  locale/freicoin_es.ts \
  locale/freicoin_es_UY.ts \
  locale/freicoin_et.ts \
  locale/freicoin_eu_ES.ts \
  locale/freicoin_fa_IR.ts \
  locale/freicoin_fa.ts \
  locale/freicoin_fi.ts \
  locale/freicoin_fr_CA.ts \
  locale/freicoin_fr.ts \
  locale/freicoin_gl.ts \
  locale/freicoin_gu_IN.ts \
  locale/freicoin_he.ts \
  locale/freicoin_hi_IN.ts \
  locale/freicoin_hr.ts \
  locale/freicoin_hu.ts \
  locale/freicoin_id_ID.ts \
  locale/freicoin_it.ts \
  locale/freicoin_ja.ts \
  locale/freicoin_ka.ts \
  locale/freicoin_kk_KZ.ts \
  locale/freicoin_ko_KR.ts \
  locale/freicoin_ky.ts \
  locale/freicoin_la.ts \
  locale/freicoin_lt.ts \
  locale/freicoin_lv_LV.ts \
  locale/freicoin_mn.ts \
  locale/freicoin_ms_MY.ts \
  locale/freicoin_nb.ts \
  locale/freicoin_nl.ts \
  locale/freicoin_pam.ts \
  locale/freicoin_pl.ts \
  locale/freicoin_pt_BR.ts \
  locale/freicoin_pt_PT.ts \
  locale/freicoin_ro_RO.ts \
  locale/freicoin_ru.ts \
  locale/freicoin_sah.ts \
  locale/freicoin_sk.ts \
  locale/freicoin_sl_SI.ts \
  locale/freicoin_sq.ts \
  locale/freicoin_sr.ts \
  locale/freicoin_sv.ts \
  locale/freicoin_th_TH.ts \
  locale/freicoin_tr.ts \
  locale/freicoin_uk.ts \
  locale/freicoin_ur_PK.ts \
  locale/freicoin_uz@Cyrl.ts \
  locale/freicoin_vi.ts \
  locale/freicoin_vi_VN.ts \
  locale/freicoin_zh_CN.ts \
  locale/freicoin_zh_HK.ts \
  locale/freicoin_zh_TW.ts

QT_FORMS_UI = \
  forms/aboutdialog.ui \
  forms/addressbookpage.ui \
  forms/askpassphrasedialog.ui \
  forms/coincontroldialog.ui \
  forms/editaddressdialog.ui \
  forms/helpmessagedialog.ui \
  forms/intro.ui \
  forms/openuridialog.ui \
  forms/optionsdialog.ui \
  forms/overviewpage.ui \
  forms/receivecoinsdialog.ui \
  forms/receiverequestdialog.ui \
  forms/rpcconsole.ui \
  forms/sendcoinsdialog.ui \
  forms/sendcoinsentry.ui \
  forms/signverifymessagedialog.ui \
  forms/transactiondescdialog.ui

QT_MOC_CPP = \
  moc_addressbookpage.cpp \
  moc_addresstablemodel.cpp \
  moc_askpassphrasedialog.cpp \
  moc_freicoinaddressvalidator.cpp \
  moc_freicoinamountfield.cpp \
  moc_freicoingui.cpp \
  moc_freicoinunits.cpp \
  moc_clientmodel.cpp \
  moc_coincontroldialog.cpp \
  moc_coincontroltreewidget.cpp \
  moc_csvmodelwriter.cpp \
  moc_editaddressdialog.cpp \
  moc_guiutil.cpp \
  moc_intro.cpp \
  moc_macdockiconhandler.cpp \
  moc_macnotificationhandler.cpp \
  moc_monitoreddatamapper.cpp \
  moc_notificator.cpp \
  moc_openuridialog.cpp \
  moc_optionsdialog.cpp \
  moc_optionsmodel.cpp \
  moc_overviewpage.cpp \
  moc_paymentserver.cpp \
  moc_qvalidatedlineedit.cpp \
  moc_qvaluecombobox.cpp \
  moc_receivecoinsdialog.cpp \
  moc_receiverequestdialog.cpp \
  moc_recentrequeststablemodel.cpp \
  moc_rpcconsole.cpp \
  moc_sendcoinsdialog.cpp \
  moc_sendcoinsentry.cpp \
  moc_signverifymessagedialog.cpp \
  moc_splashscreen.cpp \
  moc_trafficgraphwidget.cpp \
  moc_transactiondesc.cpp \
  moc_transactiondescdialog.cpp \
  moc_transactionfilterproxy.cpp \
  moc_transactiontablemodel.cpp \
  moc_transactionview.cpp \
  moc_utilitydialog.cpp \
  moc_walletframe.cpp \
  moc_walletmodel.cpp \
  moc_walletview.cpp

FREICOIN_MM = \
  macdockiconhandler.mm \
  macnotificationhandler.mm

QT_MOC = \
  freicoin.moc \
  intro.moc \
  overviewpage.moc \
  rpcconsole.moc

QT_QRC_CPP = qrc_freicoin.cpp
QT_QRC = freicoin.qrc

PROTOBUF_CC = paymentrequest.pb.cc
PROTOBUF_H = paymentrequest.pb.h
PROTOBUF_PROTO = paymentrequest.proto

FREICOIN_QT_H = \
  addressbookpage.h \
  addresstablemodel.h \
  askpassphrasedialog.h \
  freicoinaddressvalidator.h \
  freicoinamountfield.h \
  freicoingui.h \
  freicoinunits.h \
  clientmodel.h \
  coincontroldialog.h \
  coincontroltreewidget.h \
  csvmodelwriter.h \
  editaddressdialog.h \
  guiconstants.h \
  guiutil.h \
  intro.h \
  macdockiconhandler.h \
  macnotificationhandler.h \
  monitoreddatamapper.h \
  notificator.h \
  openuridialog.h \
  optionsdialog.h \
  optionsmodel.h \
  overviewpage.h \
  paymentrequestplus.h \
  paymentserver.h \
  qvalidatedlineedit.h \
  qvaluecombobox.h \
  receivecoinsdialog.h \
  receiverequestdialog.h \
  recentrequeststablemodel.h \
  rpcconsole.h \
  sendcoinsdialog.h \
  sendcoinsentry.h \
  signverifymessagedialog.h \
  splashscreen.h \
  trafficgraphwidget.h \
  transactiondesc.h \
  transactiondescdialog.h \
  transactionfilterproxy.h \
  transactionrecord.h \
  transactiontablemodel.h \
  transactionview.h \
  utilitydialog.h \
  walletframe.h \
  walletmodel.h \
  walletmodeltransaction.h \
  walletview.h \
  winshutdownmonitor.h

RES_ICONS = \
  res/icons/add.png \
  res/icons/address-book.png \
  res/icons/freicoin.ico \
  res/icons/freicoin.png \
  res/icons/freicoin_testnet.ico \
  res/icons/freicoin_testnet.png \
  res/icons/clock1.png \
  res/icons/clock2.png \
  res/icons/clock3.png \
  res/icons/clock4.png \
  res/icons/clock5.png \
  res/icons/configure.png \
  res/icons/connect0_16.png \
  res/icons/connect1_16.png \
  res/icons/connect2_16.png \
  res/icons/connect3_16.png \
  res/icons/connect4_16.png \
  res/icons/debugwindow.png \
  res/icons/edit.png \
  res/icons/editcopy.png \
  res/icons/editpaste.png \
  res/icons/export.png \
  res/icons/filesave.png \
  res/icons/history.png \
  res/icons/key.png \
  res/icons/lock_closed.png \
  res/icons/lock_open.png \
  res/icons/overview.png \
  res/icons/qrcode.png \
  res/icons/quit.png \
  res/icons/receive.png \
  res/icons/remove.png \
  res/icons/send.png \
  res/icons/synced.png \
  res/icons/toolbar.png \
  res/icons/toolbar_testnet.png \
  res/icons/transaction0.png \
  res/icons/transaction2.png \
  res/icons/transaction_conflicted.png \
  res/icons/tx_inout.png \
  res/icons/tx_input.png \
  res/icons/tx_output.png \
  res/icons/tx_mined.png

FREICOIN_QT_CPP = \
  freicoin.cpp \
  freicoinaddressvalidator.cpp \
  freicoinamountfield.cpp \
  freicoingui.cpp \
  freicoinunits.cpp \
  clientmodel.cpp \
  csvmodelwriter.cpp \
  guiutil.cpp \
  intro.cpp \
  monitoreddatamapper.cpp \
  notificator.cpp \
  optionsdialog.cpp \
  optionsmodel.cpp \
  qvalidatedlineedit.cpp \
  qvaluecombobox.cpp \
  rpcconsole.cpp \
  splashscreen.cpp \
  trafficgraphwidget.cpp \
  utilitydialog.cpp \
  winshutdownmonitor.cpp

if ENABLE_WALLET
FREICOIN_QT_CPP += \
  addressbookpage.cpp \
  addresstablemodel.cpp \
  askpassphrasedialog.cpp \
  coincontroldialog.cpp \
  coincontroltreewidget.cpp \
  editaddressdialog.cpp \
  openuridialog.cpp \
  overviewpage.cpp \
  paymentrequestplus.cpp \
  paymentserver.cpp \
  receivecoinsdialog.cpp \
  receiverequestdialog.cpp \
  recentrequeststablemodel.cpp \
  sendcoinsdialog.cpp \
  sendcoinsentry.cpp \
  signverifymessagedialog.cpp \
  transactiondesc.cpp \
  transactiondescdialog.cpp \
  transactionfilterproxy.cpp \
  transactionrecord.cpp \
  transactiontablemodel.cpp \
  transactionview.cpp \
  walletframe.cpp \
  walletmodel.cpp \
  walletmodeltransaction.cpp \
  walletview.cpp
endif

RES_IMAGES = \
  res/images/about.png \
  res/images/splash.png \
  res/images/splash_testnet.png

RES_MOVIES = $(wildcard res/movies/spinner-*.png)

FREICOIN_RC = res/freicoin-qt-res.rc

libfreicoinqt_a_CPPFLAGS = $(AM_CPPFLAGS) $(QT_INCLUDES) \
  -I$(top_srcdir)/src/qt/forms $(QT_DBUS_INCLUDES)
libfreicoinqt_a_SOURCES = $(FREICOIN_QT_CPP) $(FREICOIN_QT_H) $(QT_FORMS_UI) \
  $(QT_QRC) $(QT_TS) $(PROTOBUF_PROTO) $(RES_ICONS) $(RES_IMAGES) $(RES_MOVIES)

nodist_libfreicoinqt_a_SOURCES = $(QT_MOC_CPP) $(QT_MOC) $(PROTOBUF_CC) \
  $(PROTOBUF_H) $(QT_QRC_CPP)

BUILT_SOURCES = $(nodist_libfreicoinqt_a_SOURCES)

#Generating these with a half-written protobuf header leads to wacky results.
#This makes sure it's done.
$(QT_MOC): $(PROTOBUF_H)
$(QT_MOC_CPP): $(PROTOBUF_H)

# freicoin-qt binary #
freicoin_qt_CPPFLAGS = $(AM_CPPFLAGS) $(QT_INCLUDES) \
  -I$(top_srcdir)/src/qt/forms
freicoin_qt_SOURCES = freicoin.cpp
if TARGET_DARWIN
  freicoin_qt_SOURCES += $(FREICOIN_MM)
endif
if TARGET_WINDOWS
  freicoin_qt_SOURCES += $(FREICOIN_RC)
endif
freicoin_qt_LDADD = libfreicoinqt.a $(LIBFREICOIN_SERVER)
if ENABLE_WALLET
freicoin_qt_LDADD += $(LIBFREICOIN_WALLET)
endif
freicoin_qt_LDADD += $(LIBFREICOIN_CLI) $(LIBFREICOIN_COMMON) $(LIBLEVELDB) $(LIBMEMENV) \
  $(BOOST_LIBS) $(QT_LIBS) $(QT_DBUS_LIBS) $(QR_LIBS) $(PROTOBUF_LIBS) $(BDB_LIBS)
freicoin_qt_LDFLAGS = $(QT_LDFLAGS)

# forms/foo.h -> forms/ui_foo.h
QT_FORMS_H=$(join $(dir $(QT_FORMS_UI)),$(addprefix ui_, $(notdir $(QT_FORMS_UI:.ui=.h))))

#locale/foo.ts -> locale/foo.qm
QT_QM=$(QT_TS:.ts=.qm)

.PHONY: FORCE
.SECONDARY: $(QT_QM)

freicoinstrings.cpp: FORCE
	$(MAKE) -C $(top_srcdir)/src qt/freicoinstrings.cpp

translate: freicoinstrings.cpp $(QT_FORMS_UI) $(QT_FORMS_UI) $(FREICOIN_QT_CPP) $(FREICOIN_QT_H) $(FREICOIN_MM)
	@test -n $(LUPDATE) || echo "lupdate is required for updating translations"
	@QT_SELECT=$(QT_SELECT) $(LUPDATE) $^ -locations relative -no-obsolete -ts locale/freicoin_en.ts

$(QT_QRC_CPP): $(QT_QRC) $(QT_QM) $(QT_FORMS_H) $(RES_ICONS) $(RES_IMAGES) $(RES_MOVIES) $(PROTOBUF_H)
	@cd $(abs_srcdir); test -f $(RCC) && QT_SELECT=$(QT_SELECT) $(RCC) -name freicoin -o $(abs_builddir)/$@ $< || \
	  echo error: could not build $@
	$(SED) -e '/^\*\*.*Created:/d' $@ > $@.n && mv $@{.n,}
	$(SED) -e '/^\*\*.*by:/d' $@  > $@.n && mv $@{.n,}

CLEANFILES = $(BUILT_SOURCES) $(QT_QM) $(QT_FORMS_H) *.gcda *.gcno
