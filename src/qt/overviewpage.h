// Copyright (c) 2011-2013 The Bitcoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef OVERVIEWPAGE_H
#define OVERVIEWPAGE_H

#include <QWidget>

class ClientModel;
class TransactionFilterProxy;
class TxViewDelegate;
class WalletModel;

#include "bignum.h" // for mpq

namespace Ui {
    class OverviewPage;
}

QT_BEGIN_NAMESPACE
class QModelIndex;
QT_END_NAMESPACE

/** Overview ("home") page widget */
class OverviewPage : public QWidget
{
    Q_OBJECT

public:
    explicit OverviewPage(QWidget *parent = 0);
    ~OverviewPage();

    void setClientModel(ClientModel *clientModel);
    void setWalletModel(WalletModel *walletModel);
    void showOutOfSyncWarning(bool fShow);

public slots:
    void setBalance(const mpq& balance, const mpq& unconfirmedBalance, const mpq& immatureBalance);

signals:
    void transactionClicked(const QModelIndex &index);

private:
    Ui::OverviewPage *ui;
    ClientModel *clientModel;
    WalletModel *walletModel;
    mpq currentBalance;
    mpq currentUnconfirmedBalance;
    mpq currentImmatureBalance;

    TxViewDelegate *txdelegate;
    TransactionFilterProxy *filter;

private slots:
    void updateDisplayUnit();
    void handleTransactionClicked(const QModelIndex &index);
    void updateAlerts(const QString &warnings);
};

#endif // OVERVIEWPAGE_H
