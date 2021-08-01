
# File RBCXTimers.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXTimers.h**](_r_b_c_x_timers_8h.md)

[Go to the documentation of this file.](_r_b_c_x_timers_8h.md) 


````cpp
#pragma once

#include <esp_timer.h>

#include <memory>
#include <mutex>
#include <vector>

namespace rb {

class Manager;
class Timers;

class Timers {
public:
    static constexpr uint16_t INVALID_ID = 0;

    static void deleteFreeRtOsTimerTask();

    static Timers& get();

    uint16_t schedule(uint32_t period_ms, std::function<bool()> callback);

    bool reset(uint16_t id, uint32_t period_ms);
    bool cancel(uint16_t id);
    bool stop(uint16_t id);

    // returns true if the calling code is running in the timer task.
    bool isOnTimerTask() const;

private:
    struct timer_t {
        std::function<bool()> callback;
        esp_timer_handle_t handle;
        uint16_t id;

        void swap(timer_t& o) {
            callback.swap(o.callback);
            std::swap(handle, o.handle);
            std::swap(id, o.id);
        }
    };

    static void timerCallback(void* handleVoid);

    Timers();
    ~Timers();

    void cancelByIdxLocked(size_t idx);
    uint16_t getFreeIdLocked();

    std::vector<timer_t> m_timers;
    std::recursive_mutex m_mutex;
    uint16_t m_id_counter;
};

};
````

