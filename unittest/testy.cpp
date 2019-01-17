//
// Created by becky on 17/01/2019.
//

#include <math.h>
#include "gtest/gtest.h"

TEST (SquareRootTest, PositiveNos) {
    EXPECT_EQ (18.0, std::sqrt(324.0));
    EXPECT_EQ (25.4, std::sqrt(645.16));
    EXPECT_EQ (50.3321, std::sqrt(2533.310224));
}