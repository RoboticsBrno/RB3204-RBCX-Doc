
# File RBCXMotor.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXMotor.h**](RBCXMotor_8h.md)

[Go to the documentation of this file.](RBCXMotor_8h.md) 


````cpp
#pragma once

#include <atomic>
#include <functional>
#include <memory>
#include <mutex>
#include <vector>

#include "RBCXPinout.h"
#include "RBCXUtil.h"

#include "rbcx.pb.h"

namespace rb {

class Manager;
class MotorChangeBuilder;

class Motor {
    friend class Manager;
    friend class MotorChangeBuilder;

public:
    typedef std::function<void(Motor&)> callback_t;

    MotorId id() const { return m_id; }

    int32_t position() const { return m_position; }

    void requestInfo(callback_t cb);

    void power(int16_t value);

    void speed(int16_t ticksPerSecond);

    void brake(uint16_t brakingPower);

    void pwmMaxPercent(int8_t percent);

    int8_t pwmMaxPercent() const { return m_pwm_max_percent; }

    void driveToValue(int32_t positionAbsolute, int16_t speedTicksPerSecond,
        callback_t callback = nullptr);

    void drive(int32_t positionRelative, int16_t speedTicksPerSecond,
        callback_t callback = nullptr);

    void setCurrentPosition(int32_t pos = 0);

    void setConfig(const MotorConfig& cfg);

private:
    Motor();
    Motor(const Motor&) = delete;

    void setId(MotorId id) { m_id = id; }

    void sendPositionReq(bool additive,
        const CoprocReq_MotorReq_SetPosition& req, callback_t&& callback);
    void sendMotorReq(const CoprocReq_MotorReq& req);
    void onMotorStat(const CoprocStat_MotorStat& msg);

    int16_t scale(int16_t val);

    callback_t m_positionCb;
    std::vector<callback_t> m_infoCbs;
    CoprocReq_MotorReq m_lastReq;
    std::mutex m_mutex;

    MotorId m_id;
    MotorMode m_mode;
    int32_t m_position;
    int16_t m_power;
    int16_t m_speed;

    int8_t m_pwm_max_percent;
};

} // namespace rb
````

