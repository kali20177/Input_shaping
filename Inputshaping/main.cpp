#include <iostream>
#include <fstream>
#include <cmath>
#include <vector>
#include <algorithm>
#include <tuple>
#include <string>

const double e = 2.718281828;
const double pi = 3.141592654;

std::tuple<double, double, double, double, double, double> shaping(double xi, double omega, const std::string &type)
{
    double t1 = 0.0;
    double t2 = 0.0;
    double A1, A2, A3, K;

    if (type == "ZV") {
        t2 = pi / (omega * sqrt(1 - xi * xi));
        A1 = exp(xi * omega * t2) / (1 + exp(xi * omega * t2));
        A2 = 1 / (1 + exp(xi * omega * t2));
        A3 = 0;
    }
    else if(type == "ZVD") {
        t2 = pi / (omega * sqrt(1 - xi * xi));
        K  = exp(-xi * pi / sqrt(1 - xi * xi));
        A1 = 1 / (1 + 2 * K + K * K);
        A2 = 2 * K / (1 + 2 * K + K * K);
        A3 = K * 2 / (1 + 2 * K + K * K);
    }
    auto result = std::make_tuple(A1, A2, A3, t1, t2, 2 * t2);
    return result;
}

int main() {

    return 0;
}
