
# Class rb::Motor


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Motor**](classrb_1_1_motor.md)





* `#include <RBCXMotor.h>`











## Public Types

| Type | Name |
| ---: | :--- |
| typedef std::function&lt; void([**Motor**](classrb_1_1_motor.md) &)&gt; | [**callback\_t**](classrb_1_1_motor.md#typedef-callback-t)  <br> |




## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**brake**](classrb_1_1_motor.md#function-brake) (uint16\_t brakingPower) <br>_Start braking._  |
|  void | [**drive**](classrb_1_1_motor.md#function-drive) (int32\_t positionRelative, int16\_t speedTicksPerSecond, [**callback\_t**](classrb_1_1_motor.md#typedef-callback-t) callback=nullptr) <br>_Drive motor to set position (according relative value)._  |
|  void | [**driveToValue**](classrb_1_1_motor.md#function-drivetovalue) (int32\_t positionAbsolute, int16\_t speedTicksPerSecond, [**callback\_t**](classrb_1_1_motor.md#typedef-callback-t) callback=nullptr) <br>_Drive motor to set position (according absolute value)._  |
|  [**MotorId**](namespacerb.md#enum-motorid) | [**id**](classrb_1_1_motor.md#function-id) () const<br> |
|  int32\_t | [**position**](classrb_1_1_motor.md#function-position) () const<br> |
|  void | [**power**](classrb_1_1_motor.md#function-power) (int16\_t value) <br>_Set motor power._  |
|  void | [**pwmMaxPercent**](classrb_1_1_motor.md#function-pwmmaxpercent-12) (int8\_t percent) <br>_Limit the maximum PWM value._  |
|  int8\_t | [**pwmMaxPercent**](classrb_1_1_motor.md#function-pwmmaxpercent-22) () const<br>_Get current maximum PWM percent value._  |
|  void | [**requestInfo**](classrb_1_1_motor.md#function-requestinfo) ([**callback\_t**](classrb_1_1_motor.md#typedef-callback-t) cb) <br> |
|  void | [**setConfig**](classrb_1_1_motor.md#function-setconfig) (const MotorConfig & cfg) <br>_Set configuration, see MotorConfig & STM32 firmware._  |
|  void | [**setCurrentPosition**](classrb_1_1_motor.md#function-setcurrentposition) (int32\_t pos=0) <br>_Set the encoder tick counter to some value._  |
|  void | [**speed**](classrb_1_1_motor.md#function-speed) (int16\_t ticksPerSecond) <br>_Set motor speed._  |








## Public Types Documentation


### typedef callback\_t 


```cpp
typedef std::function<void(Motor&)> rb::Motor::callback_t;
```


## Public Functions Documentation


### function brake 


```cpp
void rb::Motor::brake (
    uint16_t brakingPower
) 
```




**Parameters:**


* `brakingPower` braking power in &lt;0, 32767&gt; 




        

### function drive 


```cpp
void rb::Motor::drive (
    int32_t positionRelative,
    int16_t speedTicksPerSecond,
    callback_t callback=nullptr
) 
```



### function driveToValue 


```cpp
void rb::Motor::driveToValue (
    int32_t positionAbsolute,
    int16_t speedTicksPerSecond,
    callback_t callback=nullptr
) 
```



### function id 


```cpp
inline MotorId rb::Motor::id () const
```



### function position 


```cpp
inline int32_t rb::Motor::position () const
```



### function power 


```cpp
void rb::Motor::power (
    int16_t value
) 
```




**Parameters:**


* `power` of the motor &lt;-32768; 32767&gt; 




        

### function pwmMaxPercent [1/2]


```cpp
void rb::Motor::pwmMaxPercent (
    int8_t percent
) 
```


If you call pwmMaxPercent(70) and then power(100), the motors will spin at 70% of maximum speed. This scales both the power and speed set through [**Motor**](classrb_1_1_motor.md). 

**Parameters:**


* `pct` of the max value &lt;0 - 100&gt; 




        

### function pwmMaxPercent [2/2]


```cpp
inline int8_t rb::Motor::pwmMaxPercent () const
```



### function requestInfo 


```cpp
void rb::Motor::requestInfo (
    callback_t cb
) 
```



### function setConfig 


```cpp
void rb::Motor::setConfig (
    const MotorConfig & cfg
) 
```



### function setCurrentPosition 


```cpp
void rb::Motor::setCurrentPosition (
    int32_t pos=0
) 
```



### function speed 


```cpp
void rb::Motor::speed (
    int16_t ticksPerSecond
) 
```




**Parameters:**


* `ticksPerSecond` speed of the motor &lt;-32768; 32767&gt; 




        

------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXMotor.h`