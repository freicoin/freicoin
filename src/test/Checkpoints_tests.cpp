//
// Unit tests for block-chain checkpoints
//
#include <boost/assign/list_of.hpp> // for 'map_list_of()'
#include <boost/test/unit_test.hpp>
#include <boost/foreach.hpp>

#include "../checkpoints.h"
#include "../util.h"

using namespace std;

BOOST_AUTO_TEST_SUITE(Checkpoints_tests)

BOOST_AUTO_TEST_CASE(sanity)
{
    uint256 p10080 = uint256("0x00000000003ff9c4b806639ec4376cc9acafcdded0e18e9dbcc2fc42e8e72331");
    uint256 p28336 = uint256("0x000000000000cc374a984c0deec9aed6fff764918e2cfd4be6670dd4d5292ccb");
    BOOST_CHECK(Checkpoints::CheckBlock(10080, p10080));
    BOOST_CHECK(Checkpoints::CheckBlock(28336, p28336));

    
    // Wrong hashes at checkpoints should fail:
    BOOST_CHECK(!Checkpoints::CheckBlock(10080, p28336));
    BOOST_CHECK(!Checkpoints::CheckBlock(28336, p10080));

    // ... but any hash not at a checkpoint should succeed:
    BOOST_CHECK(Checkpoints::CheckBlock(10080+1, p28336));
    BOOST_CHECK(Checkpoints::CheckBlock(28336+1, p10080));

    BOOST_CHECK(Checkpoints::GetTotalBlocksEstimate() >= 28336);
}    

BOOST_AUTO_TEST_SUITE_END()
