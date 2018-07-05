// Copyright (c) 2011-2014 The Bitcoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef FREICOINADDRESSVALIDATOR_H
#define FREICOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class FreicoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit FreicoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Freicoin address widget validator, checks for a valid freicoin address.
 */
class FreicoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit FreicoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // FREICOINADDRESSVALIDATOR_H
