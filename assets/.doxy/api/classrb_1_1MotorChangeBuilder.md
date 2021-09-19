
# Class rb::MotorChangeBuilder


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md)



_Helper class for building the motor change event._ 

* `#include <RBCXManager.h>`















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md#function-motorchangebuilder-13) () <br> |
|   | [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md#function-motorchangebuilder-23) (const [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & o) = delete<br> |
|   | [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md#function-motorchangebuilder-33) ([**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) && o) <br> |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & | [**brake**](classrb_1_1MotorChangeBuilder.md#function-brake) (MotorId id, uint16\_t brakingPower) <br>_Start braking._  |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & | [**drive**](classrb_1_1MotorChangeBuilder.md#function-drive) (MotorId id, int32\_t positionRelative, int16\_t speedTicksPerSecond, Motor::callback\_t callback=nullptr) <br> |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & | [**driveToValue**](classrb_1_1MotorChangeBuilder.md#function-drivetovalue) (MotorId id, int32\_t positionAbsolute, int16\_t speedTicksPerSecond, Motor::callback\_t callback=nullptr) <br> |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & | [**power**](classrb_1_1MotorChangeBuilder.md#function-power) (MotorId id, int16\_t value) <br>_Set single motor power._  |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & | [**pwmMaxPercent**](classrb_1_1MotorChangeBuilder.md#function-pwmmaxpercent) (MotorId id, int8\_t percent) <br>_Limit motor index's power to percent._  |
|  void | [**set**](classrb_1_1MotorChangeBuilder.md#function-set) () <br>_Finish the changes and submit the events._  |
|  [**MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md) & | [**speed**](classrb_1_1MotorChangeBuilder.md#function-speed) (MotorId id, int16\_t ticksPerSecond) <br>_Set single motor power._  |
|   | [**~MotorChangeBuilder**](classrb_1_1MotorChangeBuilder.md#function-motorchangebuilder) () <br> |








## Public Functions Documentation


### function MotorChangeBuilder [1/3]


```cpp
rb::MotorChangeBuilder::MotorChangeBuilder () 
```



### function MotorChangeBuilder [2/3]


```cpp
rb::MotorChangeBuilder::MotorChangeBuilder (
    const MotorChangeBuilder & o
) = delete
```



### function MotorChangeBuilder [3/3]


```cpp
rb::MotorChangeBuilder::MotorChangeBuilder (
    MotorChangeBuilder && o
) 
```



### function brake 


```cpp
MotorChangeBuilder & rb::MotorChangeBuilder::brake (
    MotorId id,
    uint16_t brakingPower
) 
```



### function drive 


```cpp
MotorChangeBuilder & rb::MotorChangeBuilder::drive (
    MotorId id,
    int32_t positionRelative,
    int16_t speedTicksPerSecond,
    Motor::callback_t callback=nullptr
) 
```



### function driveToValue 


```cpp
MotorChangeBuilder & rb::MotorChangeBuilder::driveToValue (
    MotorId id,
    int32_t positionAbsolute,
    int16_t speedTicksPerSecond,
    Motor::callback_t callback=nullptr
) 
```



### function power 


```cpp
MotorChangeBuilder & rb::MotorChangeBuilder::power (
    MotorId id,
    int16_t value
) 
```



### function pwmMaxPercent 


```cpp
MotorChangeBuilder & rb::MotorChangeBuilder::pwmMaxPercent (
    MotorId id,
    int8_t percent
) 
```



### function set 


```cpp
void rb::MotorChangeBuilder::set () 
```



### function speed 


```cpp
MotorChangeBuilder & rb::MotorChangeBuilder::speed (
    MotorId id,
    int16_t ticksPerSecond
) 
```



### function ~MotorChangeBuilder 


```cpp
rb::MotorChangeBuilder::~MotorChangeBuilder () 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXManager.h`