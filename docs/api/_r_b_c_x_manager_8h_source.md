
# File RBCXManager.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXManager.h**](_r_b_c_x_manager_8h.md)

[Go to the documentation of this file.](_r_b_c_x_manager_8h.md) 


````cpp
#pragma once

#include <freertos/FreeRTOS.h>
#include <freertos/queue.h>
#include <functional>
#include <list>
#include <memory>
#include <mutex>
#include <vector>

#include "RBCXBattery.h"
#include "RBCXButtons.h"
#include "RBCXLeds.h"
#include "RBCXMotor.h"
#include "RBCXPiezo.h"
#include "RBCXSmartServo.h"
#include "RBCXStupidServo.h"
#include "RBCXTimers.h"
#include "RBCXUltrasound.h"

#include "coproc_link_parser.h"
#include "rbcx.pb.h"

namespace rb {

class MotorChangeBuilder;

enum ManagerInstallFlags {
    MAN_NONE = 0,
    MAN_DISABLE_MOTOR_FAILSAFE = (1 << 0),
};

inline ManagerInstallFlags operator|(
    ManagerInstallFlags a, ManagerInstallFlags b) {
    return static_cast<ManagerInstallFlags>(
        static_cast<int>(a) | static_cast<int>(b));
}

// Periodically print info about all RBCX tasks to the console
//#define RB_DEBUG_MONITOR_TASKS 1

class Manager {
    friend class MotorChangeBuilder;
    friend class Encoder;
    friend class PcntInterruptHandler;
    friend class Motor;

public:
    Manager(Manager const&) = delete;
    void operator=(Manager const&) = delete;

    static Manager& get() {
        static Manager instance;
        return instance;
    }

    void install(ManagerInstallFlags flags = MAN_NONE,
        BaseType_t managerLoopStackSize = 3072);

    //SmartServoBus& initSmartServoBus(uint8_t servo_count);

    //SmartServoBus& servoBus() { return m_servos; };

    Ultrasound& ultrasound(uint8_t index) { return m_ultrasounds[index]; }

    StupidServo& stupidServo(uint8_t index) { return m_stupidServos[index]; }

    Piezo& piezo() { return m_piezo; } 
    Battery& battery() {
        return m_battery;
    } 
    Leds& leds() { return m_leds; } 
    Buttons& buttons() { return m_buttons; }

    Motor& motor(MotorId id) {
        return m_motors[static_cast<int>(id)];
    }; 
    MotorChangeBuilder
    setMotors(); 

    void schedule(uint32_t period_ms, std::function<bool()> callback) {
        timers().schedule(period_ms, callback);
    }

    inline Timers& timers() { return rb::Timers::get(); }

    // internal api to monitor RBCX tasks
    void monitorTask(TaskHandle_t task);

    void sendToCoproc(const CoprocReq& msg);

    const CoprocStat_VersionStat& coprocFwVersion() const {
        return m_coprocFwVersion;
    }

    void coprocFwVersionAssert(uint32_t minVersion, const char* name);

private:
    Manager();
    ~Manager();

    static void consumerRoutineTrampoline(void* cookie);
    void consumerRoutine();

    static void keepaliveRoutine(void* cookie);

    void resetMotorsFailSafe();
    bool motorsFailSafe();

#ifdef RB_DEBUG_MONITOR_TASKS
    bool printTasksDebugInfo();

    std::vector<TaskHandle_t> m_tasks;
    std::mutex m_tasks_mutex;
#endif

    TaskHandle_t m_keepaliveTask;

    CoprocCodec m_codec;
    uint8_t m_txBuf[CoprocCodec::MaxFrameSize];
    std::mutex m_codecTxMutex;

    uint16_t m_coprocWatchdogTimer;

    CoprocStat_VersionStat m_coprocFwVersion;
    SemaphoreHandle_t m_coprocSemaphore;

    TickType_t m_motors_last_set;
    Motor m_motors[size_t(MotorId::MAX)];

    rb::Piezo m_piezo;
    rb::Leds m_leds;
    rb::Buttons m_buttons;
    rb::Battery m_battery;
    //rb::SmartServoBus m_servos;
    rb::Ultrasound m_ultrasounds[UltrasoundsCount];
    rb::StupidServo m_stupidServos[StupidServosCount];
};

class MotorChangeBuilder {
public:
    MotorChangeBuilder();
    MotorChangeBuilder(const MotorChangeBuilder& o) = delete;
    MotorChangeBuilder(MotorChangeBuilder&& o);
    ~MotorChangeBuilder();

    MotorChangeBuilder& power(MotorId id, int16_t value);

    MotorChangeBuilder& speed(MotorId id, int16_t ticksPerSecond);

    MotorChangeBuilder& brake(MotorId id, uint16_t brakingPower);

    MotorChangeBuilder& pwmMaxPercent(MotorId id, int8_t percent);

    MotorChangeBuilder& drive(MotorId id, int32_t positionRelative,
        int16_t speedTicksPerSecond, Motor::callback_t callback = nullptr);

    MotorChangeBuilder& driveToValue(MotorId id, int32_t positionAbsolute,
        int16_t speedTicksPerSecond, Motor::callback_t callback = nullptr);

    void set();

private:
    std::vector<std::function<void()>> m_calls;
};

} // namespace rb
````

