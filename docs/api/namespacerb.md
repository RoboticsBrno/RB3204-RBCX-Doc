
# Namespace rb


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md)















## Classes

| Type | Name |
| ---: | :--- |
| class | [**Angle**](classrb_1_1_angle.md) <br> |
| class | [**Battery**](classrb_1_1_battery.md) <br>_Contains the battery state and can control the robot's power._  |
| class | [**Buttons**](classrb_1_1_buttons.md) <br> |
| class | [**Leds**](classrb_1_1_leds.md) <br> |
| class | [**Manager**](classrb_1_1_manager.md) <br>_The main library class for working with the RBCX board._  |
| class | [**Motor**](classrb_1_1_motor.md) <br> |
| class | [**MotorChangeBuilder**](classrb_1_1_motor_change_builder.md) <br>_Helper class for building the motor change event._  |
| class | [**Nvs**](classrb_1_1_nvs.md) <br> |
| class | [**Piezo**](classrb_1_1_piezo.md) <br>_Helper class for controlling the piezo._  |
| class | [**SmartServoBus**](classrb_1_1_smart_servo_bus.md) <br> |
| class | [**StupidServo**](classrb_1_1_stupid_servo.md) <br> |
| class | [**Timers**](classrb_1_1_timers.md) <br> |
| class | [**Ultrasound**](classrb_1_1_ultrasound.md) <br> |

## Public Types

| Type | Name |
| ---: | :--- |
| enum uint32\_t | [**ButtonId**](namespacerb.md#enum-buttonid)  <br>_Helper class for controlling the LEDs connected to the expander._  |
| enum  | [**LedId**](namespacerb.md#enum-ledid)  <br>_Helper class for controlling the LEDs connected to the expander._  |
| enum  | [**ManagerInstallFlags**](namespacerb.md#enum-managerinstallflags)  <br>_This enum contains flags for the_ [_**Manager**_](classrb_1_1_manager.md) _'s install() method._ |
| enum uint8\_t | [**MotorId**](namespacerb.md#enum-motorid)  <br> |



## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr int | [**StupidServosCount**](namespacerb.md#variable-stupidservoscount)   = = 4<br> |
|  constexpr int | [**UltrasoundsCount**](namespacerb.md#variable-ultrasoundscount)   = = 4<br> |

## Public Functions

| Type | Name |
| ---: | :--- |
|  T | [**clamp**](namespacerb.md#function-clamp) (T value, T min, T max) <br> |
|  void | [**delay**](namespacerb.md#function-delay) (std::chrono::duration&lt; uint32\_t, std::milli &gt; delay) <br> |
|  void | [**delayMs**](namespacerb.md#function-delayms) (int ms) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator""\_deg**](namespacerb.md#function-operator""-deg) (long double d) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator""\_deg**](namespacerb.md#function-operator""-deg) (unsigned long long int d) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator""\_rad**](namespacerb.md#function-operator""-rad) (long double r) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator""\_rad**](namespacerb.md#function-operator""-rad) (unsigned long long int r) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator&**](namespacerb.md#function-operator) ([**ButtonId**](namespacerb.md#enum-buttonid) a, [**ButtonId**](namespacerb.md#enum-buttonid) b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator&**](namespacerb.md#function-operator_1) ([**LedId**](namespacerb.md#enum-ledid) a, [**LedId**](namespacerb.md#enum-ledid) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator&=**](namespacerb.md#function-operator_2) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, [**ButtonId**](namespacerb.md#enum-buttonid) b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator&=**](namespacerb.md#function-operator_3) ([**LedId**](namespacerb.md#enum-ledid) & a, [**LedId**](namespacerb.md#enum-ledid) b) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator\***](namespacerb.md#function-operator_4) ([**Angle**](classrb_1_1_angle.md) a, [**Angle::\_T**](classrb_1_1_angle.md#typedef-t) c) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator+**](namespacerb.md#function-operator_5) ([**Angle**](classrb_1_1_angle.md) a, [**Angle**](classrb_1_1_angle.md) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator++**](namespacerb.md#function-operator_6) ([**ButtonId**](namespacerb.md#enum-buttonid) a) = delete<br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator++**](namespacerb.md#function-operator_7) ([**LedId**](namespacerb.md#enum-ledid) a) = delete<br> |
|  [**MotorId**](namespacerb.md#enum-motorid) | [**operator++**](namespacerb.md#function-operator_8) ([**MotorId**](namespacerb.md#enum-motorid) & x) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator+=**](namespacerb.md#function-operator_9) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, [**ButtonId**](namespacerb.md#enum-buttonid) b) = delete<br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator+=**](namespacerb.md#function-operator_10) ([**LedId**](namespacerb.md#enum-ledid) & a, [**LedId**](namespacerb.md#enum-ledid) b) = delete<br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator-**](namespacerb.md#function-operator_11) ([**Angle**](classrb_1_1_angle.md) a, [**Angle**](classrb_1_1_angle.md) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator--**](namespacerb.md#function-operator_12) ([**ButtonId**](namespacerb.md#enum-buttonid) a) = delete<br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator--**](namespacerb.md#function-operator_13) ([**LedId**](namespacerb.md#enum-ledid) a) = delete<br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator-=**](namespacerb.md#function-operator_14) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, [**ButtonId**](namespacerb.md#enum-buttonid) b) = delete<br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator-=**](namespacerb.md#function-operator_15) ([**LedId**](namespacerb.md#enum-ledid) & a, [**LedId**](namespacerb.md#enum-ledid) b) = delete<br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator/**](namespacerb.md#function-operator_16) ([**Angle**](classrb_1_1_angle.md) a, [**Angle::\_T**](classrb_1_1_angle.md#typedef-t) c) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator&lt;&lt;**](namespacerb.md#function-operator_17) ([**ButtonId**](namespacerb.md#enum-buttonid) a, int b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator&lt;&lt;**](namespacerb.md#function-operator_18) ([**LedId**](namespacerb.md#enum-ledid) a, int b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator&lt;&lt;=**](namespacerb.md#function-operator_19) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, int b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator&lt;&lt;=**](namespacerb.md#function-operator_20) ([**LedId**](namespacerb.md#enum-ledid) & a, int b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator&gt;&gt;**](namespacerb.md#function-operator_21) ([**ButtonId**](namespacerb.md#enum-buttonid) a, int b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator&gt;&gt;**](namespacerb.md#function-operator_22) ([**LedId**](namespacerb.md#enum-ledid) a, int b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator&gt;&gt;=**](namespacerb.md#function-operator_23) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, int b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator&gt;&gt;=**](namespacerb.md#function-operator_24) ([**LedId**](namespacerb.md#enum-ledid) & a, int b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator^**](namespacerb.md#function-operator_25) ([**ButtonId**](namespacerb.md#enum-buttonid) a, [**ButtonId**](namespacerb.md#enum-buttonid) b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator^**](namespacerb.md#function-operator_26) ([**LedId**](namespacerb.md#enum-ledid) a, [**LedId**](namespacerb.md#enum-ledid) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator^=**](namespacerb.md#function-operator_27) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, [**ButtonId**](namespacerb.md#enum-buttonid) b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator^=**](namespacerb.md#function-operator_28) ([**LedId**](namespacerb.md#enum-ledid) & a, [**LedId**](namespacerb.md#enum-ledid) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator|**](namespacerb.md#function-operator_29) ([**ButtonId**](namespacerb.md#enum-buttonid) a, [**ButtonId**](namespacerb.md#enum-buttonid) b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator|**](namespacerb.md#function-operator_30) ([**LedId**](namespacerb.md#enum-ledid) a, [**LedId**](namespacerb.md#enum-ledid) b) <br> |
|  [**ManagerInstallFlags**](namespacerb.md#enum-managerinstallflags) | [**operator|**](namespacerb.md#function-operator_31) ([**ManagerInstallFlags**](namespacerb.md#enum-managerinstallflags) a, [**ManagerInstallFlags**](namespacerb.md#enum-managerinstallflags) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator|=**](namespacerb.md#function-operator_32) ([**ButtonId**](namespacerb.md#enum-buttonid) & a, [**ButtonId**](namespacerb.md#enum-buttonid) b) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator|=**](namespacerb.md#function-operator_33) ([**LedId**](namespacerb.md#enum-ledid) & a, [**LedId**](namespacerb.md#enum-ledid) b) <br> |
|  [**ButtonId**](namespacerb.md#enum-buttonid) | [**operator~**](namespacerb.md#function-operator_34) ([**ButtonId**](namespacerb.md#enum-buttonid) a) <br> |
|  [**LedId**](namespacerb.md#enum-ledid) | [**operator~**](namespacerb.md#function-operator_35) ([**LedId**](namespacerb.md#enum-ledid) a) <br> |

## Public Static Functions

| Type | Name |
| ---: | :--- |
|  void | [**dieTimers**](namespacerb.md#function-dietimers) (TimerHandle\_t timer) <br> |







## Public Types Documentation


### enum ButtonId 


```cpp
enum rb::ButtonId {
    Off = CoprocStat_ButtonsEnum_BOFF,
    On = CoprocStat_ButtonsEnum_BON,
    B1 = CoprocStat_ButtonsEnum_B1,
    B2 = CoprocStat_ButtonsEnum_B2,
    B3 = CoprocStat_ButtonsEnum_B3,
    B4 = CoprocStat_ButtonsEnum_B4,
    Up = B1,
    Down = B2,
    Left = B3,
    Right = B4
};
```



### enum LedId 


```cpp
enum rb::LedId {
    L1 = CoprocReq_LedsEnum_L1,
    L2 = CoprocReq_LedsEnum_L2,
    L3 = CoprocReq_LedsEnum_L3,
    L4 = CoprocReq_LedsEnum_L4,
    Green = L1,
    Yellow = L2,
    Red = L3,
    Blue = L4,
    All = L1 | L2 | L3 | L4
};
```



### enum ManagerInstallFlags 


```cpp
enum rb::ManagerInstallFlags {
    MAN_NONE = 0,
    MAN_DISABLE_MOTOR_FAILSAFE = (1 << 0)
};
```



### enum MotorId 


```cpp
enum rb::MotorId {
    M1,
    M2,
    M3,
    M4,
    MAX
};
```


## Public Static Attributes Documentation


### variable StupidServosCount 


```cpp
constexpr int rb::StupidServosCount;
```



### variable UltrasoundsCount 


```cpp
constexpr int rb::UltrasoundsCount;
```


## Public Functions Documentation


### function clamp 


```cpp
template<typename T typename T>
T rb::clamp (
    T value,
    T min,
    T max
) 
```



### function delay 


```cpp
inline void rb::delay (
    std::chrono::duration< uint32_t, std::milli > delay
) 
```



### function delayMs 


```cpp
inline void rb::delayMs (
    int ms
) 
```



### function operator""\_deg 


```cpp
Angle rb::operator""_deg (
    long double d
) 
```



### function operator""\_deg 


```cpp
Angle rb::operator""_deg (
    unsigned long long int d
) 
```



### function operator""\_rad 


```cpp
Angle rb::operator""_rad (
    long double r
) 
```



### function operator""\_rad 


```cpp
Angle rb::operator""_rad (
    unsigned long long int r
) 
```



### function operator& 


```cpp
inline ButtonId rb::operator& (
    ButtonId a,
    ButtonId b
) 
```



### function operator& 


```cpp
inline LedId rb::operator& (
    LedId a,
    LedId b
) 
```



### function operator&= 


```cpp
inline ButtonId rb::operator&= (
    ButtonId & a,
    ButtonId b
) 
```



### function operator&= 


```cpp
inline LedId rb::operator&= (
    LedId & a,
    LedId b
) 
```



### function operator\* 


```cpp
Angle rb::operator* (
    Angle a,
    Angle::_T c
) 
```



### function operator+ 


```cpp
Angle rb::operator+ (
    Angle a,
    Angle b
) 
```



### function operator++ 


```cpp
ButtonId rb::operator++ (
    ButtonId a
) = delete
```



### function operator++ 


```cpp
LedId rb::operator++ (
    LedId a
) = delete
```



### function operator++ 


```cpp
inline MotorId rb::operator++ (
    MotorId & x
) 
```



### function operator+= 


```cpp
ButtonId rb::operator+= (
    ButtonId & a,
    ButtonId b
) = delete
```



### function operator+= 


```cpp
LedId rb::operator+= (
    LedId & a,
    LedId b
) = delete
```



### function operator- 


```cpp
Angle rb::operator- (
    Angle a,
    Angle b
) 
```



### function operator-- 


```cpp
ButtonId rb::operator-- (
    ButtonId a
) = delete
```



### function operator-- 


```cpp
LedId rb::operator-- (
    LedId a
) = delete
```



### function operator-= 


```cpp
ButtonId rb::operator-= (
    ButtonId & a,
    ButtonId b
) = delete
```



### function operator-= 


```cpp
LedId rb::operator-= (
    LedId & a,
    LedId b
) = delete
```



### function operator/ 


```cpp
Angle rb::operator/ (
    Angle a,
    Angle::_T c
) 
```



### function operator&lt;&lt; 


```cpp
inline ButtonId rb::operator<< (
    ButtonId a,
    int b
) 
```



### function operator&lt;&lt; 


```cpp
inline LedId rb::operator<< (
    LedId a,
    int b
) 
```



### function operator&lt;&lt;= 


```cpp
inline ButtonId rb::operator<<= (
    ButtonId & a,
    int b
) 
```



### function operator&lt;&lt;= 


```cpp
inline LedId rb::operator<<= (
    LedId & a,
    int b
) 
```



### function operator&gt;&gt; 


```cpp
inline ButtonId rb::operator>> (
    ButtonId a,
    int b
) 
```



### function operator&gt;&gt; 


```cpp
inline LedId rb::operator>> (
    LedId a,
    int b
) 
```



### function operator&gt;&gt;= 


```cpp
inline ButtonId rb::operator>>= (
    ButtonId & a,
    int b
) 
```



### function operator&gt;&gt;= 


```cpp
inline LedId rb::operator>>= (
    LedId & a,
    int b
) 
```



### function operator^ 


```cpp
inline ButtonId rb::operator^ (
    ButtonId a,
    ButtonId b
) 
```



### function operator^ 


```cpp
inline LedId rb::operator^ (
    LedId a,
    LedId b
) 
```



### function operator^= 


```cpp
inline ButtonId rb::operator^= (
    ButtonId & a,
    ButtonId b
) 
```



### function operator^= 


```cpp
inline LedId rb::operator^= (
    LedId & a,
    LedId b
) 
```



### function operator| 


```cpp
inline ButtonId rb::operator| (
    ButtonId a,
    ButtonId b
) 
```



### function operator| 


```cpp
inline LedId rb::operator| (
    LedId a,
    LedId b
) 
```



### function operator| 


```cpp
inline ManagerInstallFlags rb::operator| (
    ManagerInstallFlags a,
    ManagerInstallFlags b
) 
```



### function operator|= 


```cpp
inline ButtonId rb::operator|= (
    ButtonId & a,
    ButtonId b
) 
```



### function operator|= 


```cpp
inline LedId rb::operator|= (
    LedId & a,
    LedId b
) 
```



### function operator~ 


```cpp
inline ButtonId rb::operator~ (
    ButtonId a
) 
```



### function operator~ 


```cpp
inline LedId rb::operator~ (
    LedId a
) 
```


## Public Static Functions Documentation


### function dieTimers 


```cpp
static void rb::dieTimers (
    TimerHandle_t timer
) 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXAngle.cpp`