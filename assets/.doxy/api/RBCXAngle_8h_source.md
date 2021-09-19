
# File RBCXAngle.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXAngle.h**](RBCXAngle_8h.md)

[Go to the documentation of this file.](RBCXAngle_8h.md) 


````cpp
#pragma once

#include <cmath>

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

namespace rb {

class Angle {
public:
    typedef float _T;
    static const Angle Pi;

    Angle()
        : _rads(0) {}

    static Angle rad(_T r) { return Angle(r); }
    static Angle deg(_T d) { return Angle(d * _T(M_PI / 180)); }
    static Angle nan() { return Angle(nanf("")); }

    bool isNaN() const { return std::isnan(_rads); }

    Angle& operator+=(Angle a) {
        _rads += a._rads;
        return *this;
    }
    Angle& operator-=(Angle a) {
        _rads -= a._rads;
        return *this;
    }
    Angle operator-() const { return Angle(-_rads); }
    Angle& operator*=(_T c) {
        _rads *= c;
        return *this;
    }
    Angle& operator/=(_T c) {
        _rads /= c;
        return *this;
    }

    _T deg() const { return _rads * _T(180.0 / M_PI); }
    _T rad() const { return _rads; }

private:
    _T _rads;
    Angle(_T r)
        : _rads(r) {}
};

Angle operator+(Angle a, Angle b);
Angle operator-(Angle a, Angle b);
Angle operator*(Angle a, Angle::_T c);
Angle operator/(Angle a, Angle::_T c);
Angle operator"" _deg(long double d);
Angle operator"" _rad(long double r);
Angle operator"" _deg(unsigned long long int d);
Angle operator"" _rad(unsigned long long int r);

}; // namespace rb
````

