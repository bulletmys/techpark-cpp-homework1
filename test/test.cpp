//
// Created by bulletmys on 12.10.2019.
//
#include "gmock/gmock.h"
#include "gtest/gtest.h"
#include "../main.h"
#include "../main.c"

TEST(SortByDensity, ok) {
    int num_of_countries = 6;

    Country *cntry;
    cntry = (Country *) malloc(num_of_countries * sizeof(Country));

    {
        cntry[0].capital = "Moscow";
        cntry[0].name_of_country = "Russia";
        cntry[0].population = 140000000;
        cntry[0].square = 17125191;
        cntry[0].density = cntry[0].population / cntry[0].square;;
    }
    {
        cntry[1].capital = "Berlin";
        cntry[1].name_of_country = "Germany";
        cntry[1].population = 83019200;
        cntry[1].square = 357385;
        cntry[1].density = cntry[1].population / cntry[1].square;;

    }
    {
        cntry[2].capital = "Washington";
        cntry[2].name_of_country = "USA";
        cntry[2].population = 328915700;
        cntry[2].square = 9826675;
        cntry[2].density = cntry[2].population / cntry[2].square;;

    }
    {
        cntry[3].capital = "Paris";
        cntry[3].name_of_country = "France";
        cntry[3].population = 65060692;
        cntry[3].square = 640679;
        cntry[3].density = cntry[3].population / cntry[3].square;;

    }
    {
        cntry[4].capital = "Rome";
        cntry[4].name_of_country = "Italy";
        cntry[4].population = 60588366;
        cntry[4].square = 301340;
        cntry[4].density = cntry[4].population / cntry[4].square;;

    }
    {
        cntry[5].capital = "Minsk";
        cntry[5].name_of_country = "Belarus";
        cntry[5].population = 9475174;
        cntry[5].square = 207595;
        cntry[5].density = cntry[5].population / cntry[5].square;;

    }
    SortByDensity(cntry, num_of_countries);
    ASSERT_EQ(cntry[0].density, 8);
    free(cntry);
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
