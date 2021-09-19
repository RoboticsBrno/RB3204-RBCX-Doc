
# File RBCXNvs.h

[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXNvs.h**](RBCXNvs_8h.md)

[Go to the documentation of this file.](RBCXNvs_8h.md) 


````cpp
#pragma once

#include <string>

#include <esp_system.h>
#include <nvs.h>
#include <nvs_flash.h>

namespace rb {

class Nvs {
public:
    Nvs(const char* name_space, const char* partition = "nvs");
    ~Nvs();
    Nvs(const Nvs&) = delete;

    bool existsInt(const char* key);
    int getInt(const char* key);
    void writeInt(const char* key, int value);

    bool existsString(const char* key);
    std::string getString(const char* key);
    void writeString(const char* key, const std::string& value);

    void commit();

private:
    esp_err_t initFlash();

    nvs_handle m_handle;
    bool m_dirty;
};

} // namespace rb
````

