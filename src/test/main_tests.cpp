// Copyright (c) 2014 The Bitcoin Core developers
// Copyright (c) 2018 The Freicoin developers
//
// This program is free software: you can redistribute it and/or
// modify it under the conjunctive terms of BOTH version 3 of the GNU
// Affero General Public License as published by the Free Software
// Foundation AND the MIT/X11 software license.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Affero General Public License and the MIT/X11 software license for
// more details.
//
// You should have received a copy of both licenses along with this
// program.  If not, see <https://www.gnu.org/licenses/> and
// <http://www.opensource.org/licenses/mit-license.php>

#include "core.h"
#include "main.h"

#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(main_tests)

BOOST_AUTO_TEST_CASE(subsidy_limit_test)
{
    uint64_t nSum = 0;
    for (int nHeight = 0; nHeight < EQUILIBRIUM_HEIGHT; ++nHeight) {
        uint64_t nSubsidy = GetBlockValue(nHeight, 0);
        BOOST_CHECK(nSubsidy <= 75056846172ULL);
        BOOST_CHECK(nSubsidy >=  9536743164ULL);
        nSum += GetTimeAdjustedValue(nSubsidy, EQUILIBRIUM_HEIGHT-nHeight);
        BOOST_CHECK(nSum <= 9999990463180220ULL);
    }
    BOOST_CHECK(nSum == 9999990463180220ULL);
}

BOOST_AUTO_TEST_SUITE_END()
