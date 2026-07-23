#include <iostream>
#include <string>
#include "my_math.h"
#include "my_pyhsics.h"
#include "my_science.h"
#include <nlohmann/json.hpp>
#include <fmt/base.h>
#include <catch2/catch_test_macros.hpp>

using namespace std;

int main()
{
    cout << "here-main.cpp" << endl;
    cout << "my_math_lib:" << my_math::add(21, 21) << endl;
    cout << "my_pyhsics_lib:" << my_pyhsic::add(21, 21) << endl;
    cout << "my_science_lib:" << my_science::add(21, 21) << endl;
    cout << "-------------------------------------------------" << endl;
    nlohmann::json person;
    person["name"] = "Cansoy";
    person["age"] = 35;
    person["skills"] = {"C++", "VBA", "JavaScript"};
    std::cout << person.dump(4) << '\n';
    cout << "-------------------------------------------------" << endl;
    fmt::print("Hello, {}!\n", "Cansoy");
}