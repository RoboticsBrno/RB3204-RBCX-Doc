
# File RBCXPinout.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXPinout.h**](RBCXPinout_8h.md)

[Go to the documentation of this file.](RBCXPinout_8h.md) 


````cpp
#pragma once

#include <driver/adc.h>
#include <driver/gpio.h>

namespace rb {

enum class MotorId : uint8_t {
    M1,
    M2,
    M3,
    M4,

    MAX,
};

inline MotorId operator++(MotorId& x) {
    return x = MotorId(static_cast<uint8_t>(x) + 1);
}

static constexpr int UltrasoundsCount = 4;
static constexpr int StupidServosCount = 4;

} // namespace rb
````

