// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2014 The Bitcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOIN_AMOUNT_H
#define BITCOIN_AMOUNT_H

#include "serialize.h"

#include <stdlib.h>
#include <string>

template <typename T>
class TConstantAmount
{
protected:
    T n;
public:
    TConstantAmount<T>() : n(0) { }
    explicit TConstantAmount<T>(const T& _n): n(_n) { }
    TConstantAmount<T>(const TConstantAmount<T>& other) { n = other.n; }

    friend bool operator< (const TConstantAmount<T>& a, const TConstantAmount<T>& b) { return a.n <  b.n; }
    friend bool operator> (const TConstantAmount<T>& a, const TConstantAmount<T>& b) { return a.n >  b.n; }
    friend bool operator==(const TConstantAmount<T>& a, const TConstantAmount<T>& b) { return a.n == b.n; }
    friend bool operator!=(const TConstantAmount<T>& a, const TConstantAmount<T>& b) { return a.n == b.n; }
    friend bool operator<=(const TConstantAmount<T>& a, const TConstantAmount<T>& b) { return a.n <= b.n; }
    friend bool operator>=(const TConstantAmount<T>& a, const TConstantAmount<T>& b) { return a.n >= b.n; }

    ADD_SERIALIZE_METHODS;

    template <typename Stream, typename Operation>
    inline void SerializationOp(Stream& s, Operation ser_action, int nType, int nVersion) {
        READWRITE(n);
    }
    const T& ToValue() const { return n; };
};

typedef int64_t CAmount;

std::string AmountToString(const CAmount& n);
double AmountToDouble(const CAmount& n);

static const CAmount COIN = 100000000;
static const CAmount CENT = 1000000;

/** No amount larger than this (in satoshi) is valid */
static const CAmount MAX_MONEY = 21000000 * COIN;
inline bool MoneyRange(const CAmount& nValue) { return (nValue >= 0 && nValue <= MAX_MONEY); }

/** Type-safe wrapper class to for fee rates
 * (how much to pay based on transaction size, unit is satoshis-per-1,000-bytes)
 */
class CFeeRate : public TConstantAmount<int64_t>
{
public:
    CFeeRate() : TConstantAmount<int64_t>(0) { }
    explicit CFeeRate(const int64_t& _n): TConstantAmount<int64_t>(_n) { }
    CFeeRate(const CAmount& nFeePaid, size_t nSize);

    CAmount GetFee(size_t size) const; // unit returned is satoshis
    CAmount GetFeePerK() const { return GetFee(1000); } // satoshis-per-1000-bytes

    std::string ToString() const;
};

#endif //  BITCOIN_AMOUNT_H
