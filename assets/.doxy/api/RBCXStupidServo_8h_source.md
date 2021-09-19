
# File RBCXStupidServo.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXStupidServo.h**](RBCXStupidServo_8h.md)

[Go to the documentation of this file.](RBCXStupidServo_8h.md) 


````cpp
#pragma once

#include <mutex>
#include <stdint.h>

#include "rbcx.pb.h"

namespace rb {

class Manager;

class StupidServo {
    friend class Manager;

public:
    uint8_t id() const { return m_id; }

    void setPosition(float positionFraction);

    float position() const { return m_lastPosition; }

    void disable();

private:
    StupidServo();
    ~StupidServo() {}
    StupidServo(const StupidServo&) = delete;

    void setId(uint8_t id) { m_id = id; }

    void sendServoMsg(float position);

    std::mutex m_mutex;
    float m_lastPosition;
    uint8_t m_id;
};

};
````

