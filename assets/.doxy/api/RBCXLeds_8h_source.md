
# File RBCXLeds.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXLeds.h**](RBCXLeds_8h.md)

[Go to the documentation of this file.](RBCXLeds_8h.md) 


````cpp
#pragma once

#include <mutex>

#include "RBCXUtil.h"

#include "rbcx.pb.h"

namespace rb {

enum LedId {
    L1 = CoprocReq_LedsEnum_L1,
    L2 = CoprocReq_LedsEnum_L2,
    L3 = CoprocReq_LedsEnum_L3,
    L4 = CoprocReq_LedsEnum_L4,

    Green = L1,
    Yellow = L2,
    Red = L3,
    Blue = L4,

    All = L1 | L2 | L3 | L4,
};

RBCX_ENUM_IMPL_MASK_OPERATORS(LedId)

class Leds {
    friend class Manager;

public:
    void red(bool on = true); 
    void yellow(bool on = true); 
    void green(bool on = true); 
    void blue(bool on = true); 
    void byId(LedId id, bool on = true); 

private:
    Leds();
    Leds(const Leds&) = delete;
    ~Leds();

    LedId m_ledsOn;
    std::mutex m_mutex;
};

};
````

