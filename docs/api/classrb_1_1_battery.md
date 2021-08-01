
# Class rb::Battery


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Battery**](classrb_1_1_battery.md)



_Contains the battery state and can control the robot's power._ 

* `#include <RBCXBattery.h>`














## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr uint32\_t | [**BATTERY\_IN\_THRESHOLD**](classrb_1_1_battery.md#variable-battery-in-threshold)   = = 5000<br> |
|  constexpr uint32\_t | [**VOLTAGE\_MAX**](classrb_1_1_battery.md#variable-voltage-max)   = = 4200 \* 2<br>_Maximal battery voltage, in mV._  |
|  constexpr uint32\_t | [**VOLTAGE\_MIN**](classrb_1_1_battery.md#variable-voltage-min)   = = 3300
        \* 2<br>_Minimal battery voltage, in mV, at which the robot shuts down._  |

## Public Functions

| Type | Name |
| ---: | :--- |
|  bool | [**isPoweredByBattery**](classrb_1_1_battery.md#function-ispoweredbybattery) () const<br> |
|  uint32\_t | [**pct**](classrb_1_1_battery.md#function-pct) () const<br>_returns current battery percentage_  |
|  void | [**shutdown**](classrb_1_1_battery.md#function-shutdown) () <br>_shuts the robot's battery power_  |
|  int32\_t | [**temperatureC**](classrb_1_1_battery.md#function-temperaturec) () const<br> |








## Public Static Attributes Documentation


### variable BATTERY\_IN\_THRESHOLD 


```cpp
constexpr uint32_t rb::Battery::BATTERY_IN_THRESHOLD;
```



### variable VOLTAGE\_MAX 


```cpp
constexpr uint32_t rb::Battery::VOLTAGE_MAX;
```



### variable VOLTAGE\_MIN 


```cpp
constexpr uint32_t rb::Battery::VOLTAGE_MIN;
```


## Public Functions Documentation


### function isPoweredByBattery 


```cpp
inline bool rb::Battery::isPoweredByBattery () const
```



### function pct 


```cpp
uint32_t rb::Battery::pct () const
```


returns current battery voltage 


        

### function shutdown 


```cpp
void rb::Battery::shutdown () 
```


Returns true if the Robot's battery power branch is on 


        

### function temperatureC 


```cpp
inline int32_t rb::Battery::temperatureC () const
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXBattery.h`