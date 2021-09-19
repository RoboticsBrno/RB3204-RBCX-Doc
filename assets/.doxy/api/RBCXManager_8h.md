
# File RBCXManager.h


[**File List**](files.md) **>** [**build**](dir_4fef79e7177ba769987a8da36c892c5f.md) **>** [**RB3204-RBCX-library**](dir_6e2f6bf38ad600996f360c484704d30b.md) **>** [**src**](dir_2fb57cfb6554052417264f60890e0af6.md) **>** [**RBCXManager.h**](RBCXManager_8h.md)

[Go to the source code of this file.](RBCXManager_8h_source.md)



* `#include <freertos/FreeRTOS.h>`
* `#include <freertos/queue.h>`
* `#include <functional>`
* `#include <list>`
* `#include <memory>`
* `#include <mutex>`
* `#include <vector>`
* `#include "RBCXBattery.h"`
* `#include "RBCXButtons.h"`
* `#include "RBCXLeds.h"`
* `#include "RBCXMotor.h"`
* `#include "RBCXPiezo.h"`
* `#include "RBCXSmartServo.h"`
* `#include "RBCXStupidServo.h"`
* `#include "RBCXTimers.h"`
* `#include "RBCXUltrasound.h"`
* `#include "coproc_link_parser.h"`
* `#include "rbcx.pb.h"`









## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**rb**](namespacerb.md) <br> |

## Classes

| Type | Name |
| ---: | :--- |
| class | [**Manager**](classrb_1_1Manager.md) <br>_The main library class for working with the RBCX board. Call the_ [_**install()**_](classrb_1_1Manager.md#function-install) _method at the start of your program._ |
| class | [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) <br>_Helper class for building the motor change event._  |














------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXManager.h`