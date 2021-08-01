
# File RBCXBattery.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXBattery.h**](_r_b_c_x_battery_8h.md)

[Go to the documentation of this file.](_r_b_c_x_battery_8h.md) 


````cpp
#pragma once

#include "rbcx.pb.h"

namespace rb {

class Manager;

class Battery {
    friend class Manager;

public:
    static constexpr uint32_t VOLTAGE_MIN = 3300
        * 2; 
    static constexpr uint32_t VOLTAGE_MAX
        = 4200 * 2; 
    static constexpr uint32_t BATTERY_IN_THRESHOLD = 5000;

    uint32_t pct() const; 
    uint32_t voltageMv() const { return m_state.vccMv; }

    uint32_t bMidVoltageMv() const { return m_state.battMidMv; }

    int32_t temperatureC() const { return m_state.temperatureC; }

    void shutdown(); 

    bool isPoweredByBattery() const {
        return voltageMv() > BATTERY_IN_THRESHOLD;
    }

private:
    Battery();
    Battery(const Battery&) = delete;
    ~Battery();

    void setState(const CoprocStat_PowerAdcStat& msg) { m_state = msg; }

    CoprocStat_PowerAdcStat m_state;
};

};
````

