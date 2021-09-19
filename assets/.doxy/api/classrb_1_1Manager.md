
# Class rb::Manager


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Manager**](classrb_1_1Manager.md)



_The main library class for working with the RBCX board. Call the_ [_**install()**_](classrb_1_1Manager.md#function-install) _method at the start of your program._

* `#include <RBCXManager.h>`















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**Manager**](classrb_1_1Manager.md#function-manager-22) ([**Manager**](classrb_1_1Manager.md) const &) = delete<br> |
|  [**Buttons**](classrb_1_1Buttons.md) & | [**buttons**](classrb_1_1Manager.md#function-buttons) () <br> |
|  const CoprocStat\_VersionStat & | [**coprocFwVersion**](classrb_1_1Manager.md#function-coprocfwversion) () const<br> |
|  void | [**coprocFwVersionAssert**](classrb_1_1Manager.md#function-coprocfwversionassert) (uint32\_t minVersion, const char \* name) <br> |
|  void | [**install**](classrb_1_1Manager.md#function-install) (ManagerInstallFlags flags=MAN\_NONE, BaseType\_t managerLoopStackSize=3072) <br>_Initialize the manager - must be called once at the start of the program._  |
|  void | [**monitorTask**](classrb_1_1Manager.md#function-monitortask) (TaskHandle\_t task) <br> |
|  [**Motor**](classrb_1_1Motor.md) & | [**motor**](classrb_1_1Manager.md#function-motor) (MotorId id) <br> |
|  void | [**operator=**](classrb_1_1Manager.md#function-operator) ([**Manager**](classrb_1_1Manager.md) const &) = delete<br> |
|  void | [**schedule**](classrb_1_1Manager.md#function-schedule) (uint32\_t period\_ms, std::function&lt; bool()&gt; callback) <br>_Schedule callback to fire after period (in millisecond)._  |
|  void | [**sendToCoproc**](classrb_1_1Manager.md#function-sendtocoproc) (const CoprocReq & msg) <br> |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) | [**setMotors**](classrb_1_1Manager.md#function-setmotors) () <br>_Get a motor instance._  |
|  [**StupidServo**](classrb_1_1StupidServo.md) & | [**stupidServo**](classrb_1_1Manager.md#function-stupidservo) (uint8\_t index) <br> |
|  [**Timers**](classrb_1_1Timers.md) & | [**timers**](classrb_1_1Manager.md#function-timers) () <br> |
|  [**Ultrasound**](classrb_1_1Ultrasound.md) & | [**ultrasound**](classrb_1_1Manager.md#function-ultrasound) (uint8\_t index) <br>_Initialize the UART servo bus for intelligent servos LX-16. TODO: smart servos not implemented!_  |

## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**Manager**](classrb_1_1Manager.md) & | [**get**](classrb_1_1Manager.md#function-get) () <br>_Get manager instance._  |







## Public Functions Documentation


### function Manager [2/2]


```cpp
rb::Manager::Manager (
    Manager const &
) = delete
```



### function buttons 


```cpp
inline Buttons & rb::Manager::buttons () 
```



### function coprocFwVersion 


```cpp
inline const CoprocStat_VersionStat & rb::Manager::coprocFwVersion () const
```



### function coprocFwVersionAssert 


```cpp
void rb::Manager::coprocFwVersionAssert (
    uint32_t minVersion,
    const char * name
) 
```



### function install 


```cpp
void rb::Manager::install (
    ManagerInstallFlags flags=MAN_NONE,
    BaseType_t managerLoopStackSize=3072
) 
```



### function monitorTask 


```cpp
void rb::Manager::monitorTask (
    TaskHandle_t task
) 
```



### function motor 


```cpp
inline Motor & rb::Manager::motor (
    MotorId id
) 
```



### function operator= 


```cpp
void rb::Manager::operator= (
    Manager const &
) = delete
```



### function schedule 


```cpp
inline void rb::Manager::schedule (
    uint32_t period_ms,
    std::function< bool()> callback
) 
```



### function sendToCoproc 


```cpp
void rb::Manager::sendToCoproc (
    const CoprocReq & msg
) 
```



### function setMotors 


```cpp
MotorChangeBuilder rb::Manager::setMotors () 
```



### function stupidServo 


```cpp
inline StupidServo & rb::Manager::stupidServo (
    uint8_t index
) 
```



### function timers 


```cpp
inline Timers & rb::Manager::timers () 
```



### function ultrasound 


```cpp
inline Ultrasound & rb::Manager::ultrasound (
    uint8_t index
) 
```


## Public Static Functions Documentation


### function get 


```cpp
static inline Manager & rb::Manager::get () 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXManager.h`