
# File RBCXButtons.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXButtons.h**](RBCXButtons_8h.md)

[Go to the documentation of this file.](RBCXButtons_8h.md) 


````cpp
#pragma once

#include <functional>
#include <mutex>
#include <vector>

#include "RBCXUtil.h"

#include "rbcx.pb.h"

// Arduino defines B1...
#ifdef B1
#undef B1
#endif

namespace rb {

enum ButtonId : uint32_t {
    Off = CoprocStat_ButtonsEnum_BOFF,
    On = CoprocStat_ButtonsEnum_BON,

    B1 = CoprocStat_ButtonsEnum_B1,
    B2 = CoprocStat_ButtonsEnum_B2,
    B3 = CoprocStat_ButtonsEnum_B3,
    B4 = CoprocStat_ButtonsEnum_B4,

    Up = B1,
    Down = B2,
    Left = B3,
    Right = B4,
};

RBCX_ENUM_IMPL_MASK_OPERATORS(ButtonId)

class Buttons {
    friend class Manager;

public:
    typedef std::function<bool(ButtonId, bool)> callback_t;

    static constexpr uint32_t Count = 6;

    inline bool byId(ButtonId id) const { return (m_buttonsSet & id) != 0; };
    inline bool up() const { return byId(ButtonId::Up); }
    inline bool down() const { return byId(ButtonId::Down); }
    inline bool left() const { return byId(ButtonId::Left); }
    inline bool right() const { return byId(ButtonId::Right); }
    inline bool on() const { return byId(ButtonId::On); }
    inline bool off() const { return byId(ButtonId::Off); }

    void onChange(callback_t callback);

private:
    Buttons();
    Buttons(const Buttons&) = delete;
    ~Buttons();

    void setState(const CoprocStat_ButtonsStat& msg);

    std::vector<callback_t> m_callbacks;
    std::recursive_mutex m_mutex;
    ButtonId m_buttonsSet;
};
};
````

