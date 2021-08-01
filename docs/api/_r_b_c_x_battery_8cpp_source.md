
# File RBCXBattery.cpp

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXBattery.cpp**](_r_b_c_x_battery_8cpp.md)

[Go to the documentation of this file.](_r_b_c_x_battery_8cpp.md) 


````cpp
#include <esp_log.h>

#include "RBCXBattery.h"
#include "RBCXManager.h"

#define TAG "RBCXBattery"

namespace rb {

Battery::Battery() {}

Battery::~Battery() {}

void Battery::shutdown() { 
    ESP_LOGW(TAG, "Shutting down.");

    Manager::get().sendToCoproc(CoprocReq {
        .which_payload = CoprocReq_shutdownPower_tag,
    });
 }

uint32_t Battery::pct() const {
    const auto mv = voltageMv();
    if (mv <= VOLTAGE_MIN) {
        return 0;
    } else if (mv >= VOLTAGE_MAX) {
        return 100;
    } else {
        return (float(mv - VOLTAGE_MIN) / (VOLTAGE_MAX - VOLTAGE_MIN)) * 100.f;
    }
}

};
````

