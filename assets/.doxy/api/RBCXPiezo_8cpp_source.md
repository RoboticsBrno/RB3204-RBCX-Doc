
# File RBCXPiezo.cpp

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXPiezo.cpp**](RBCXPiezo_8cpp.md)

[Go to the documentation of this file.](RBCXPiezo_8cpp.md) 


````cpp
#include <driver/gpio.h>
#include <driver/ledc.h>
#include <esp_log.h>

#include "RBCXManager.h"
#include "RBCXPiezo.h"

#include "rbcx.pb.h"

namespace rb {

Piezo::Piezo()
    : m_on(false) {}

Piezo::~Piezo() {}

void Piezo::setState(bool on) {
    if (m_on == on)
        return;
    m_on = on;

    Manager::get().sendToCoproc(
        CoprocReq { .which_payload = CoprocReq_buzzerReq_tag,
            .payload = { .buzzerReq = {
                             .on = on,
                         } } });
}

};
````

