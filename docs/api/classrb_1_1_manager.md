
# Class rb::Manager


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Manager**](classrb_1_1_manager.md)



_The main library class for working with the RBCX board._ [More...](#detailed-description)

* `#include <RBCXManager.h>`















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**Manager**](classrb_1_1_manager.md#function-manager-22) ([**Manager**](classrb_1_1_manager.md) const &) = delete<br> |
|  [**Buttons**](classrb_1_1_buttons.md) & | [**buttons**](classrb_1_1_manager.md#function-buttons) () <br> |
|  const CoprocStat\_VersionStat & | [**coprocFwVersion**](classrb_1_1_manager.md#function-coprocfwversion) () const<br> |
|  void | [**coprocFwVersionAssert**](classrb_1_1_manager.md#function-coprocfwversionassert) (uint32\_t minVersion, const char \* name) <br> |
|  void | [**install**](classrb_1_1_manager.md#function-install) ([**ManagerInstallFlags**](namespacerb.md#enum-managerinstallflags) flags=MAN\_NONE, BaseType\_t managerLoopStackSize=3072) <br>_Initialize the manager - must be called once at the start of the program._  |
|  void | [**monitorTask**](classrb_1_1_manager.md#function-monitortask) (TaskHandle\_t task) <br> |
|  [**Motor**](classrb_1_1_motor.md) & | [**motor**](classrb_1_1_manager.md#function-motor) ([**MotorId**](namespacerb.md#enum-motorid) id) <br> |
|  void | [**operator=**](classrb_1_1_manager.md#function-operator) ([**Manager**](classrb_1_1_manager.md) const &) = delete<br> |
|  void | [**schedule**](classrb_1_1_manager.md#function-schedule) (uint32\_t period\_ms, std::function&lt; bool()&gt; callback) <br>_Schedule callback to fire after period (in millisecond)._  |
|  void | [**sendToCoproc**](classrb_1_1_manager.md#function-sendtocoproc) (const CoprocReq & msg) <br> |
|  [**MotorChangeBuilder**](classrb_1_1_motor_change_builder.md) | [**setMotors**](classrb_1_1_manager.md#function-setmotors) () <br>_Get a motor instance._  |
|  [**StupidServo**](classrb_1_1_stupid_servo.md) & | [**stupidServo**](classrb_1_1_manager.md#function-stupidservo) (uint8\_t index) <br> |
|  [**Timers**](classrb_1_1_timers.md) & | [**timers**](classrb_1_1_manager.md#function-timers) () <br> |
|  [**Ultrasound**](classrb_1_1_ultrasound.md) & | [**ultrasound**](classrb_1_1_manager.md#function-ultrasound) (uint8\_t index) <br>_Initialize the UART servo bus for intelligent servos LX-16._  |

## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**Manager**](classrb_1_1_manager.md) & | [**get**](classrb_1_1_manager.md#function-get) () <br>_Get manager instance._  |







# Detailed Description


Call the [**install()**](classrb_1_1_manager.md#function-install) method at the start of your program. 


    
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




**Parameters:**


* `flags` modify the manager's behavior or toggle some features. SeeManagerInstallFlags} enum. 




        

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


Return true from the callback to schedule periodically, false to not (singleshot timer).




**Parameters:**


* `period_ms` is period in which will be the schedule callback fired 
* `callback` is a function which will be schedule with the set period. 




        

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


Create motor power change builder: [**MotorChangeBuilder**](classrb_1_1_motor_change_builder.md). 


        

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


TODO: smart servos not implemented! 

**Returns:**

Instance of the class [**SmartServoBus**](classrb_1_1_smart_servo_bus.md) which manage the intelligent servos.


Get the [**SmartServoBus**](classrb_1_1_smart_servo_bus.md) for working with intelligent servos LX-16.. 

**Returns:**

Instance of the class [**SmartServoBus**](classrb_1_1_smart_servo_bus.md) which manage the intelligent servos. 





        
## Public Static Functions Documentation


### function get 


```cpp
static inline Manager & rb::Manager::get () 
```


Always returns the same instance and is thread-safe. Don't forget to call [**install()**](classrb_1_1_manager.md#function-install) to initialize the manager at the start of your program, when you first get the instance. 


        

------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXManager.h`