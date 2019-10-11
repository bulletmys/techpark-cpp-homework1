//Создать структуру для хранения информации о стране мира: площади ее территории
//(кв. км), количестве жителей и столице. Составить с ее использованием программу
//вывода информации о странах с упорядочением по росту плотности населения.

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

typedef struct Country {
    char *name_of_country;
    size_t square;
    size_t population;
    char *capital;
} Country;

char Input_char() {
    char c = '\0';
    int result = 0;
    do {
        result = scanf("%c", &c);
    } while (result != 1);
    return c;
}

char *Input_string() {
    struct buffer {
        char *string;
        size_t size;
        size_t capacity;
    } buf = {NULL, 0, 0};
    char c = '\0';
    while (c = Input_char(), c != EOF && c != '\n') {
        if (buf.size + 1 >= buf.capacity) {
            size_t new_capacity = !buf.capacity ? 1 : buf.capacity * 2;
            char *tmp = (char *) malloc((new_capacity + 1) * sizeof(char));
            if (!tmp) {
                if (buf.string) {
                    free(buf.string);
                }
                return NULL;
            }
            if (buf.string) {
                tmp = strcpy(tmp, buf.string);
                free(buf.string);
            }
            buf.string = tmp;
            buf.capacity = new_capacity;
        }
        buf.string[buf.size] = c;
        buf.string[buf.size + 1] = '\0';

        ++buf.size;
    }
    return buf.string;
}

int Input_int() {
    char c = '\0';
    int result = 0;
    while (c = Input_char(), c != EOF && c != '\n') {
        if (!(c >= '0' && c <= '9')) {
            char *buf = Input_string();
            if (buf) {
                free(buf);
            }
            return 0;
        }
        result = result * 10 + c - '0';
    }
    return result;
}

int Compare(const void *x1, const void *x2) {
    float p_1 = (float) (*(Country *) x1).population / (*(Country *) x1).square;
    float p_2 = (float) (*(Country *) x2).population / (*(Country *) x2).square;

    if (p_1 > p_2) {
        return 1;
    } else if (p_1 < p_2) {
        return -1;
    }
    return 0;
}

void SortByDensity(Country *countries, int num_of_countries) {
    qsort(countries, num_of_countries, sizeof(Country), Compare);
}

void PrintCountries(Country *countries, int num_of_countries, int start) {
    if (start == 0) {
        SortByDensity(countries, num_of_countries);
    }

    printf("%15s %15s %15s %15s %15s\n\n", "Country", "Capital", "Population", "Square", "Density");
    for (int i = start; i < num_of_countries; ++i) {
        printf("%15s %15s %15zu %15zu %15zu\n",
               countries[i].name_of_country,
               countries[i].capital,
               countries[i].population,
               countries[i].square,
               countries[i].population / countries[i].square);
    }
    printf("\n");
}

Country *AddCountry(Country *countries, int *cur_num) {
    int num = *cur_num;

    printf("How many countries do you want to add?\n");
    int num_of_new = Input_int();

    countries = realloc(countries, sizeof(Country) * (num + num_of_new));

    for (int i = num; i < num_of_new + num; ++i) {
        printf("Enter country name\n");
        countries[i].name_of_country = Input_string();
        printf("Enter the name of the capital\n");
        countries[i].capital = Input_string();
        printf("Enter the number of inhabitants\n");
        countries[i].population = Input_int();
        printf("Enter the area of the country (in sq. Km.)\n");
        countries[i].square = Input_int();
    }

    printf("\nNew data added:\n");
    PrintCountries(countries, num + num_of_new, num);
    *cur_num = (num_of_new + num);
    return countries;
}


int main() {
    int num_of_countries = 6;

    Country *countries;
    countries = (Country *) malloc(num_of_countries * sizeof(Country));

    {
        countries[0].capital = "Moscow";
        countries[0].name_of_country = "Russia";
        countries[0].population = 140000000;
        countries[0].square = 17125191;
    }
    {
        countries[1].capital = "Berlin";
        countries[1].name_of_country = "Germany";
        countries[1].population = 83019200;
        countries[1].square = 357385;
    }
    {
        countries[2].capital = "Washington";
        countries[2].name_of_country = "USA";
        countries[2].population = 328915700;
        countries[2].square = 9826675;
    }
    {
        countries[3].capital = "Paris";
        countries[3].name_of_country = "France";
        countries[3].population = 65060692;
        countries[3].square = 640679;
    }
    {
        countries[4].capital = "Rome";
        countries[4].name_of_country = "Italy";
        countries[4].population = 60588366;
        countries[4].square = 301340;
    }
    {
        countries[5].capital = "Minsk";
        countries[5].name_of_country = "Belarus";
        countries[5].population = 9475174;
        countries[5].square = 207595;
    }

    bool flag = true;

    while (flag) {
        printf("Press 1 to display a list of countries or 2 to add a new country. If you want to finish, enter 3\n");
        int k = Input_int();
        switch (k) {
            case 1:
                PrintCountries(countries, num_of_countries, 0);
                break;
            case 2:
                countries = AddCountry(countries, &num_of_countries);
                break;
            case 3:
                flag = false;
                break;
            default:
                printf("Put the correct number\n");
        }
    }

    free(countries);
    return 0;
}