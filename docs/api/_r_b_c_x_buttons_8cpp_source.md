
# File RBCXButtons.cpp

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXButtons.cpp**](_r_b_c_x_buttons_8cpp.md)

[Go to the documentation of this file.](_r_b_c_x_buttons_8cpp.md) 


````cpp
#include "RBCXButtons.h"

namespace rb {

Buttons::Buttons()
    : m_buttonsSet {} {}

Buttons::~Buttons() {}

void Buttons::setState(const CoprocStat_ButtonsStat& msg) {
    const uint32_t diff = m_buttonsSet ^ (ButtonId)msg.buttonsPressed;
    if (diff == 0)
        return;

    m_buttonsSet = (ButtonId)msg.buttonsPressed;

    std::lock_guard<std::recursive_mutex> l(m_mutex);
    for (uint32_t i = 0; i < Count; ++i) {
        if ((diff & (1 << i)) == 0)
            continue;

        for (size_t x = 0; x < m_callbacks.size();) {
            const auto id = ButtonId(1 << i);
            if (!m_callbacks[x](id, byId(id))) {
                m_callbacks.erase(m_callbacks.begin() + x);
            } else {
                ++x;
            }
        }
    }
}

void Buttons::onChange(callback_t callback) {
    std::lock_guard<std::recursive_mutex> l(m_mutex);
    m_callbacks.emplace_back(std::move(callback));
}
};
````

