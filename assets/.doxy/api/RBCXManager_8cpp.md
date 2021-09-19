
# File RBCXManager.cpp


[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXManager.cpp**](RBCXManager_8cpp.md)

[Go to the source code of this file.](RBCXManager_8cpp_source.md)



* `#include <driver/i2c.h>`
* `#include <driver/uart.h>`
* `#include <esp_log.h>`
* `#include <freertos/FreeRTOS.h>`
* `#include <freertos/task.h>`
* `#include "RBCXBattery.h"`
* `#include "RBCXManager.h"`
* `#include "rbcx.pb.h"`









## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**rb**](namespacerb.md) <br> |













## Macros

| Type | Name |
| ---: | :--- |
| define  | [**MAX\_COPROC\_IDLE\_MS**](RBCXManager_8cpp.md#define-max-coproc-idle-ms)  75<br> |
| define  | [**MOTORS\_FAILSAFE\_PERIOD\_MS**](RBCXManager_8cpp.md#define-motors-failsafe-period-ms)  300<br> |
| define  | [**TAG**](RBCXManager_8cpp.md#define-tag)  "RBCXManager"<br> |

## Macro Definition Documentation



### define MAX\_COPROC\_IDLE\_MS 


```cpp
#define MAX_COPROC_IDLE_MS 75
```



### define MOTORS\_FAILSAFE\_PERIOD\_MS 


```cpp
#define MOTORS_FAILSAFE_PERIOD_MS 300
```



### define TAG 


```cpp
#define TAG "RBCXManager"
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXManager.cpp`