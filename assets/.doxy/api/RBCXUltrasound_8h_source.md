
# File RBCXUltrasound.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXUltrasound.h**](RBCXUltrasound_8h.md)

[Go to the documentation of this file.](RBCXUltrasound_8h.md) 


````cpp
#pragma once

#include <condition_variable>
#include <functional>
#include <mutex>
#include <stdint.h>
#include <vector>

#include "RBCXTimers.h"

#include "rbcx.pb.h"

namespace rb {

class Manager;

class Ultrasound {
    friend class Manager;

public:
    static constexpr float defaultSpeedOfSound = 347.13f;

    typedef std::function<bool(uint32_t)> callback_t;

    uint32_t lastDistanceMm() const { return m_lastDistanceMm; }
    uint32_t lastDurationUs() const { return m_lastUs; }
    bool isLastMeasurementValid() const { return m_lastUs != 0; }

    void setSpeedOfSound(
        float speedOfSoundInMetersPerSecond = defaultSpeedOfSound);
    float getSpeedOfSound() const { return m_speedOfSound; }

    void measureAsync(callback_t callback = nullptr);
    uint32_t measure();

private:
    Ultrasound();
    Ultrasound(const Ultrasound&) = delete;
    ~Ultrasound();

    void init(uint8_t index);

    void recalculateLastDistanceLocked();
    void onMeasuringDone(const CoprocStat_UltrasoundStat& result);

    uint8_t m_index;

    uint32_t m_lastUs;
    uint32_t m_lastDistanceMm;
    float m_speedOfSound;
    bool m_measuring;
    std::vector<callback_t> m_callbacks;
    std::recursive_mutex m_mutex;
    std::condition_variable_any m_measuringDone;
    uint16_t m_timeoutTimer;
};

};
````

