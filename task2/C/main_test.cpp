#include "main_test.h"

TEST (libtest, RectArea) {
    EXPECT_EQ(12, rect_area(4, 3));
}

TEST (indextest, HtoM) {
    EXPECT_EQ(180, h_to_m(3));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}