//
// Created by bulletmys on 12.10.2019.
//

#ifndef TECHPATK_CPP_DZ1_MAIN_H
#define TECHPATK_CPP_DZ1_MAIN_H
typedef struct Country {
    const char *name_of_country;
    size_t square;
    size_t population;
    const char *capital;
    size_t density;
} Country;

char Input_char();

char *Input_string();

int Input_int();

int Compare(const void *x1, const void *x2);

void SortByDensity(Country *countries, int num_of_countries);

void PrintCountries(Country *countries, int num_of_countries, int start);

Country *AddCountry(Country *countries, int *cur_num);

int MAIN();

#endif //TECHPATK_CPP_DZ1_MAIN_H
