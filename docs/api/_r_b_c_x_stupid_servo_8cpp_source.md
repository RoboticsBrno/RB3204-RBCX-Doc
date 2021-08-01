
# File RBCXStupidServo.cpp

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXStupidServo.cpp**](_r_b_c_x_stupid_servo_8cpp.md)

[Go to the documentation of this file.](_r_b_c_x_stupid_servo_8cpp.md) 


````cpp
#include "RBCXStupidServo.h"
#include "RBCXManager.h"

namespace rb {

StupidServo::StupidServo()
    : m_lastPosition(NAN) {}

void StupidServo::setPosition(float posFraction) { sendServoMsg(posFraction); }

void StupidServo::disable() { sendServoMsg(NAN); }

void StupidServo::sendServoMsg(float position) {
    std::lock_guard<std::mutex> l(m_mutex);
    if (m_lastPosition == position)
        return;
    m_lastPosition = position;

    const pb_size_t tag = std::isnan(position)
        ? CoprocReq_SetStupidServo_disable_tag
        : CoprocReq_SetStupidServo_setPosition_tag;

    Manager::get().sendToCoproc(CoprocReq {
        .which_payload = CoprocReq_setStupidServo_tag,
        .payload = {
            .setStupidServo = {
                .servoIndex = m_id,
                .which_servoCmd = tag,
                .servoCmd = {
                    .setPosition = position,
                },
            },
        },
    });
}
};
````

