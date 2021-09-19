
# File RBCXPiezo.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXPiezo.h**](RBCXPiezo_8h.md)

[Go to the documentation of this file.](RBCXPiezo_8h.md) 


````cpp
#pragma once

#include <atomic>

namespace rb {

class Piezo {
    friend class Manager;

public:
    void start() { setState(true); }
    void stop() { setState(false); }

    void setState(bool on);

private:
    Piezo();
    Piezo(const Piezo&) = delete;
    ~Piezo();

    bool m_on;
};
};
````

