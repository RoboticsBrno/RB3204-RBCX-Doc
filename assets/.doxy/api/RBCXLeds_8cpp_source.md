
# File RBCXLeds.cpp

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXLeds.cpp**](RBCXLeds_8cpp.md)

[Go to the documentation of this file.](RBCXLeds_8cpp.md) 


````cpp
#include "RBCXLeds.h"
#include "RBCXManager.h"

namespace rb {

Leds::Leds()
    : m_ledsOn {} {}

Leds::~Leds() {}

void Leds::red(bool on) { byId(LedId::Red, on); }

void Leds::yellow(bool on) { byId(LedId::Yellow, on); }

void Leds::green(bool on) { byId(LedId::Green, on); }

void Leds::blue(bool on) { byId(LedId::Blue, on); }

void Leds::byId(LedId id, bool on) {
    std::lock_guard<std::mutex> l(m_mutex);
    auto newState = m_ledsOn;
    if (on) {
        newState |= id;
    } else {
        newState &= ~id;
    }

    if (newState == m_ledsOn)
        return;
    m_ledsOn = newState;

    const CoprocReq req = {
        .which_payload = CoprocReq_setLeds_tag,
        .payload = {
            .setLeds = {
                .ledsOn = (CoprocReq_LedsEnum)newState,
            }
        },
    };

    Manager::get().sendToCoproc(req);
}
};
````

