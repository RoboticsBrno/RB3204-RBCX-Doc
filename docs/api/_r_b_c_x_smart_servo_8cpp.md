
# File RBCXSmartServo.cpp


[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXSmartServo.cpp**](_r_b_c_x_smart_servo_8cpp.md)

[Go to the source code of this file.](_r_b_c_x_smart_servo_8cpp_source.md)



* `#include <algorithm>`
* `#include <chrono>`
* `#include <esp_log.h>`
* `#include <freertos/FreeRTOS.h>`
* `#include <freertos/task.h>`
* `#include <math.h>`
* `#include "RBCXManager.h"`
* `#include "RBCXSmartServo.h"`









## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**rb**](namespacerb.md) <br> |













## Macros

| Type | Name |
| ---: | :--- |
| define  | [**MS\_TO\_TICKS**](_r_b_c_x_smart_servo_8cpp.md#define-ms-to-ticks) (ms) ((portTICK\_PERIOD\_MS &lt;= ms) ? (ms / portTICK\_PERIOD\_MS) : 1)<br> |
| define  | [**TAG**](_r_b_c_x_smart_servo_8cpp.md#define-tag)  "RBCXSmartServoBus"<br> |

## Macro Definition Documentation



### define MS\_TO\_TICKS 


```cpp
#define MS_TO_TICKS (
    ms
) ((portTICK_PERIOD_MS <= ms) ? (ms / portTICK_PERIOD_MS) : 1)
```



### define TAG 


```cpp
#define TAG "RBCXSmartServoBus"
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXSmartServo.cpp`