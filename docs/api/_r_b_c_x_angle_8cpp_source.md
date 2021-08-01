
# File RBCXAngle.cpp

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXAngle.cpp**](_r_b_c_x_angle_8cpp.md)

[Go to the documentation of this file.](_r_b_c_x_angle_8cpp.md) 


````cpp
#include "RBCXAngle.h"

namespace rb {

const Angle Angle::Pi = Angle::rad(Angle::_T(M_PI));

Angle operator+(Angle a, Angle b) {
    a += b;
    return a;
}

Angle operator-(Angle a, Angle b) {
    a -= b;
    return a;
}

Angle operator*(Angle a, Angle::_T c) {
    a *= c;
    return a;
}

Angle operator/(Angle a, Angle::_T c) {
    a /= c;
    return a;
}

Angle operator"" _deg(long double d) { return Angle::deg(Angle::_T(d)); }

Angle operator"" _rad(long double r) { return Angle::rad(Angle::_T(r)); }

Angle operator"" _deg(unsigned long long int d) { return Angle::deg(d); }

Angle operator"" _rad(unsigned long long int r) { return Angle::rad(r); }

}; // namespace rb
````

