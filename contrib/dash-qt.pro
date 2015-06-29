# lupdate-qt4 ./mobicoin-qt.pro -ts ../src/qt/locale/mobicoin_en.ts

HEADERS += \
    ../src/activemasternode.h \
    ../src/addrman.h \
    ../src/alert.h \
    ../src/allocators.h \
    ../src/base58.h \
    ../src/bignum.h \
    ../src/mobicoin-config.h \
    ../src/bloom.h \
    ../src/chainparams.h \
    ../src/checkpoints.h \
    ../src/checkqueue.h \
    ../src/clientversion.h \
    ../src/coincontrol.h \
    ../src/coins.h \
    ../src/compat.h \
    ../src/core.h \
    ../src/crypter.h \
    ../src/darksend.h \
    ../src/db.h \
    ../src/hash.h \
    ../src/init.h \
    ../src/instantx.h \
    ../src/keepass.h \
    ../src/key.h \
    ../src/keystore.h \
    ../src/leveldbwrapper.h \
    ../src/limitedmap.h \
    ../src/main.h \
    ../src/masternode.h \
    ../src/masternodeconfig.h \
    ../src/miner.h \
    ../src/mruset.h \
    ../src/net.h \
    ../src/netbase.h \
    ../src/noui.h \
    ../src/protocol.h \
    ../src/rpcclient.h \
    ../src/rpcprotocol.h \
    ../src/rpcserver.h \
    ../src/script.h \
    ../src/serialize.h \
    ../src/sph_blake.h \
    ../src/sph_bmw.h \
    ../src/sph_cubehash.h \
    ../src/sph_echo.h \
    ../src/sph_groestl.h \
    ../src/sph_jh.h \
    ../src/sph_keccak.h \
    ../src/sph_luffa.h \
    ../src/sph_shavite.h \
    ../src/sph_simd.h \
    ../src/sph_skein.h \
    ../src/sph_types.h \
    ../src/sync.h \
    ../src/threadsafety.h \
    ../src/tinyformat.h \
    ../src/txdb.h \
    ../src/txmempool.h \
    ../src/ui_interface.h \
    ../src/uint256.h \
    ../src/util.h \
    ../src/version.h \
    ../src/wallet.h \
    ../src/walletdb.h \
    ../src/qt/addressbookpage.h \
    ../src/qt/addresstablemodel.h \
    ../src/qt/askpassphrasedialog.h \
    ../src/qt/bitcoinaddressvalidator.h \
    ../src/qt/bitcoinamountfield.h \
    ../src/qt/bitcoingui.h \
    ../src/qt/bitcoinunits.h \
    ../src/qt/clientmodel.h \
    ../src/qt/coincontroldialog.h \
    ../src/qt/coincontroltreewidget.h \
    ../src/qt/csvmodelwriter.h \
    ../src/qt/darksendconfig.h \
    ../src/qt/editaddressdialog.h \
    ../src/qt/guiconstants.h \
    ../src/qt/guiutil.h \
    ../src/qt/intro.h \
    ../src/qt/macdockiconhandler.h \
    ../src/qt/macnotificationhandler.h \
    ../src/qt/monitoreddatamapper.h \
    ../src/qt/notificator.h \
    ../src/qt/openuridialog.h \
    ../src/qt/optionsdialog.h \
    ../src/qt/optionsmodel.h \
    ../src/qt/overviewpage.h \
    ../src/qt/paymentrequest.pb.h \
    ../src/qt/paymentrequestplus.h \
    ../src/qt/paymentserver.h \
    ../src/qt/qvalidatedlineedit.h \
    ../src/qt/qvaluecombobox.h \
    ../src/qt/receivecoinsdialog.h \
    ../src/qt/receiverequestdialog.h \
    ../src/qt/recentrequeststablemodel.h \
    ../src/qt/rpcconsole.h \
    ../src/qt/sendcoinsdialog.h \
    ../src/qt/sendcoinsentry.h \
    ../src/qt/signverifymessagedialog.h \
    ../src/qt/splashscreen.h \
    ../src/qt/trafficgraphwidget.h \
    ../src/qt/transactiondesc.h \
    ../src/qt/transactiondescdialog.h \
    ../src/qt/transactionfilterproxy.h \
    ../src/qt/transactionrecord.h \
    ../src/qt/transactiontablemodel.h \
    ../src/qt/transactionview.h \
    ../src/qt/utilitydialog.h \
    ../src/qt/walletframe.h \
    ../src/qt/walletmodel.h \
    ../src/qt/walletmodeltransaction.h \
    ../src/qt/walletview.h \
    ../src/qt/winshutdownmonitor.h \
    ../src/qt/test/paymentrequestdata.h \
    ../src/qt/test/paymentservertests.h \
    ../src/qt/test/uritests.h

SOURCES += \
    ../src/activemasternode.cpp \
    ../src/addrman.cpp \
    ../src/aes_helper.c \
    ../src/alert.cpp \
    ../src/allocators.cpp \
    ../src/base58.cpp \
    ../src/blake.c \
    ../src/bloom.cpp \
    ../src/bmw.c \
    ../src/chainparams.cpp \
    ../src/checkpoints.cpp \
    ../src/coins.cpp \
    ../src/core.cpp \
    ../src/crypter.cpp \
    ../src/cubehash.c \
    ../src/mobicoin-cli.cpp \
    ../src/mobicoind.cpp \
    ../src/darksend.cpp \
    ../src/db.cpp \
    ../src/echo.c \
    ../src/groestl.c \
    ../src/hash.cpp \
    ../src/init.cpp \
    ../src/instantx.cpp \
    ../src/jh.c \
    ../src/keccak.c \
    ../src/keepass.cpp \
    ../src/key.cpp \
    ../src/keystore.cpp \
    ../src/leveldbwrapper.cpp \
    ../src/luffa.c \
    ../src/main.cpp \
    ../src/masternode.cpp \
    ../src/masternodeconfig.cpp \
    ../src/miner.cpp \
    ../src/net.cpp \
    ../src/netbase.cpp \
    ../src/noui.cpp \
    ../src/protocol.cpp \
    ../src/rpcblockchain.cpp \
    ../src/rpcclient.cpp \
    ../src/rpcdarksend.cpp \
    ../src/rpcdump.cpp \
    ../src/rpcmining.cpp \
    ../src/rpcmisc.cpp \
    ../src/rpcnet.cpp \
    ../src/rpcprotocol.cpp \
    ../src/rpcrawtransaction.cpp \
    ../src/rpcserver.cpp \
    ../src/rpcwallet.cpp \
    ../src/script.cpp \
    ../src/shavite.c \
    ../src/simd.c \
    ../src/skein.c \
    ../src/sync.cpp \
    ../src/txdb.cpp \
    ../src/txmempool.cpp \
    ../src/util.cpp \
    ../src/version.cpp \
    ../src/wallet.cpp \
    ../src/walletdb.cpp \
    ../src/test/Checkpoints_tests.cpp \
    ../src/test/DoS_tests.cpp \
    ../src/test/accounting_tests.cpp \
    ../src/test/alert_tests.cpp \
    ../src/test/allocator_tests.cpp \
    ../src/test/base32_tests.cpp \
    ../src/test/base58_tests.cpp \
    ../src/test/base64_tests.cpp \
    ../src/test/bignum_tests.cpp \
    ../src/test/bip32_tests.cpp \
    ../src/test/bloom_tests.cpp \
    ../src/test/canonical_tests.cpp \
    ../src/test/checkblock_tests.cpp \
    ../src/test/compress_tests.cpp \
    ../src/test/getarg_tests.cpp \
    ../src/test/hash_tests.cpp \
    ../src/test/hmac_tests.cpp \
    ../src/test/key_tests.cpp \
    ../src/test/main_tests.cpp \
    ../src/test/miner_tests.cpp \
    ../src/test/mruset_tests.cpp \
    ../src/test/multisig_tests.cpp \
    ../src/test/netbase_tests.cpp \
    ../src/test/pmt_tests.cpp \
    ../src/test/rpc_tests.cpp \
    ../src/test/rpc_wallet_tests.cpp \
    ../src/test/script_P2SH_tests.cpp \
    ../src/test/script_tests.cpp \
    ../src/test/scriptnum_tests.cpp \
    ../src/test/serialize_tests.cpp \
    ../src/test/sighash_tests.cpp \
    ../src/test/sigopcount_tests.cpp \
    ../src/test/test_mobicoin.cpp \
    ../src/test/transaction_tests.cpp \
    ../src/test/uint256_tests.cpp \
    ../src/test/util_tests.cpp \
    ../src/test/wallet_tests.cpp \
    ../src/qt/addressbookpage.cpp \
    ../src/qt/addresstablemodel.cpp \
    ../src/qt/askpassphrasedialog.cpp \
    ../src/qt/bitcoinaddressvalidator.cpp \
    ../src/qt/bitcoinamountfield.cpp \
    ../src/qt/bitcoingui.cpp \
    ../src/qt/mobicoinstrings.cpp \
    ../src/qt/bitcoinunits.cpp \
    ../src/qt/clientmodel.cpp \
    ../src/qt/coincontroldialog.cpp \
    ../src/qt/coincontroltreewidget.cpp \
    ../src/qt/csvmodelwriter.cpp \
    ../src/qt/mobicoin.cpp \
    ../src/qt/darksendconfig.cpp \
    ../src/qt/editaddressdialog.cpp \
    ../src/qt/guiutil.cpp \
    ../src/qt/intro.cpp \
    ../src/qt/moc_addressbookpage.cpp \
    ../src/qt/moc_addresstablemodel.cpp \
    ../src/qt/moc_askpassphrasedialog.cpp \
    ../src/qt/moc_bitcoinaddressvalidator.cpp \
    ../src/qt/moc_bitcoinamountfield.cpp \
    ../src/qt/moc_bitcoingui.cpp \
    ../src/qt/moc_bitcoinunits.cpp \
    ../src/qt/moc_clientmodel.cpp \
    ../src/qt/moc_coincontroldialog.cpp \
    ../src/qt/moc_coincontroltreewidget.cpp \
    ../src/qt/moc_csvmodelwriter.cpp \
    ../src/qt/moc_darksendconfig.cpp \
    ../src/qt/moc_editaddressdialog.cpp \
    ../src/qt/moc_guiutil.cpp \
    ../src/qt/moc_intro.cpp \
    ../src/qt/moc_macdockiconhandler.cpp \
    ../src/qt/moc_macnotificationhandler.cpp \
    ../src/qt/moc_monitoreddatamapper.cpp \
    ../src/qt/moc_notificator.cpp \
    ../src/qt/moc_openuridialog.cpp \
    ../src/qt/moc_optionsdialog.cpp \
    ../src/qt/moc_optionsmodel.cpp \
    ../src/qt/moc_overviewpage.cpp \
    ../src/qt/moc_paymentserver.cpp \
    ../src/qt/moc_qvalidatedlineedit.cpp \
    ../src/qt/moc_qvaluecombobox.cpp \
    ../src/qt/moc_receivecoinsdialog.cpp \
    ../src/qt/moc_receiverequestdialog.cpp \
    ../src/qt/moc_recentrequeststablemodel.cpp \
    ../src/qt/moc_rpcconsole.cpp \
    ../src/qt/moc_sendcoinsdialog.cpp \
    ../src/qt/moc_sendcoinsentry.cpp \
    ../src/qt/moc_signverifymessagedialog.cpp \
    ../src/qt/moc_splashscreen.cpp \
    ../src/qt/moc_trafficgraphwidget.cpp \
    ../src/qt/moc_transactiondesc.cpp \
    ../src/qt/moc_transactiondescdialog.cpp \
    ../src/qt/moc_transactionfilterproxy.cpp \
    ../src/qt/moc_transactiontablemodel.cpp \
    ../src/qt/moc_transactionview.cpp \
    ../src/qt/moc_utilitydialog.cpp \
    ../src/qt/moc_walletframe.cpp \
    ../src/qt/moc_walletmodel.cpp \
    ../src/qt/moc_walletview.cpp \
    ../src/qt/monitoreddatamapper.cpp \
    ../src/qt/notificator.cpp \
    ../src/qt/openuridialog.cpp \
    ../src/qt/optionsdialog.cpp \
    ../src/qt/optionsmodel.cpp \
    ../src/qt/overviewpage.cpp \
    ../src/qt/paymentrequest.pb.cc \
    ../src/qt/paymentrequestplus.cpp \
    ../src/qt/paymentserver.cpp \
    ../src/qt/qrc_mobicoin.cpp \
    ../src/qt/qvalidatedlineedit.cpp \
    ../src/qt/qvaluecombobox.cpp \
    ../src/qt/receivecoinsdialog.cpp \
    ../src/qt/receiverequestdialog.cpp \
    ../src/qt/recentrequeststablemodel.cpp \
    ../src/qt/rpcconsole.cpp \
    ../src/qt/sendcoinsdialog.cpp \
    ../src/qt/sendcoinsentry.cpp \
    ../src/qt/signverifymessagedialog.cpp \
    ../src/qt/splashscreen.cpp \
    ../src/qt/trafficgraphwidget.cpp \
    ../src/qt/transactiondesc.cpp \
    ../src/qt/transactiondescdialog.cpp \
    ../src/qt/transactionfilterproxy.cpp \
    ../src/qt/transactionrecord.cpp \
    ../src/qt/transactiontablemodel.cpp \
    ../src/qt/transactionview.cpp \
    ../src/qt/utilitydialog.cpp \
    ../src/qt/walletframe.cpp \
    ../src/qt/walletmodel.cpp \
    ../src/qt/walletmodeltransaction.cpp \
    ../src/qt/walletview.cpp \
    ../src/qt/winshutdownmonitor.cpp \
    ../src/qt/test/moc_paymentservertests.cpp \
    ../src/qt/test/moc_uritests.cpp \
    ../src/qt/test/paymentservertests.cpp \
    ../src/qt/test/test_main.cpp \
    ../src/qt/test/uritests.cpp

FORMS += \
    ../src/qt/forms/aboutdialog.ui \
    ../src/qt/forms/addressbookpage.ui \
    ../src/qt/forms/askpassphrasedialog.ui \
    ../src/qt/forms/coincontroldialog.ui \
    ../src/qt/forms/darksendconfig.ui \
    ../src/qt/forms/editaddressdialog.ui \
    ../src/qt/forms/helpmessagedialog.ui \
    ../src/qt/forms/intro.ui \
    ../src/qt/forms/openuridialog.ui \
    ../src/qt/forms/optionsdialog.ui \
    ../src/qt/forms/overviewpage.ui \
    ../src/qt/forms/receivecoinsdialog.ui \
    ../src/qt/forms/receiverequestdialog.ui \
    ../src/qt/forms/rpcconsole.ui \
    ../src/qt/forms/sendcoinsdialog.ui \
    ../src/qt/forms/sendcoinsentry.ui \
    ../src/qt/forms/signverifymessagedialog.ui \
    ../src/qt/forms/transactiondescdialog.ui

RESOURCES += \
    ../src/qt/mobicoin.qrc
