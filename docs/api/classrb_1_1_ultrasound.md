
# Class rb::Ultrasound


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Ultrasound**](classrb_1_1_ultrasound.md)





* `#include <RBCXUltrasound.h>`











## Public Types

| Type | Name |
| ---: | :--- |
| typedef std::function&lt; bool(uint32\_t)&gt; | [**callback\_t**](classrb_1_1_ultrasound.md#typedef-callback-t)  <br> |



## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr float | [**defaultSpeedOfSound**](classrb_1_1_ultrasound.md#variable-defaultspeedofsound)   = = 347.13f<br>_&lt; Default is speed at 25C, 50%, 101 kPa_  |

## Public Functions

| Type | Name |
| ---: | :--- |
|  float | [**getSpeedOfSound**](classrb_1_1_ultrasound.md#function-getspeedofsound) () const<br> |
|  bool | [**isLastMeasurementValid**](classrb_1_1_ultrasound.md#function-islastmeasurementvalid) () const<br> |
|  uint32\_t | [**lastDistanceMm**](classrb_1_1_ultrasound.md#function-lastdistancemm) () const<br> |
|  uint32\_t | [**lastDurationUs**](classrb_1_1_ultrasound.md#function-lastdurationus) () const<br> |
|  uint32\_t | [**measure**](classrb_1_1_ultrasound.md#function-measure) () <br> |
|  void | [**measureAsync**](classrb_1_1_ultrasound.md#function-measureasync) ([**callback\_t**](classrb_1_1_ultrasound.md#typedef-callback-t) callback=nullptr) <br> |
|  void | [**setSpeedOfSound**](classrb_1_1_ultrasound.md#function-setspeedofsound) (float speedOfSoundInMetersPerSecond=[**defaultSpeedOfSound**](classrb_1_1_ultrasound.md#variable-defaultspeedofsound)) <br> |








## Public Types Documentation


### typedef callback\_t 


```cpp
typedef std::function<bool(uint32_t)> rb::Ultrasound::callback_t;
```


## Public Static Attributes Documentation


### variable defaultSpeedOfSound 


```cpp
constexpr float rb::Ultrasound::defaultSpeedOfSound;
```


## Public Functions Documentation


### function getSpeedOfSound 


```cpp
inline float rb::Ultrasound::getSpeedOfSound () const
```



### function isLastMeasurementValid 


```cpp
inline bool rb::Ultrasound::isLastMeasurementValid () const
```



### function lastDistanceMm 


```cpp
inline uint32_t rb::Ultrasound::lastDistanceMm () const
```



### function lastDurationUs 


```cpp
inline uint32_t rb::Ultrasound::lastDurationUs () const
```



### function measure 


```cpp
uint32_t rb::Ultrasound::measure () 
```



### function measureAsync 


```cpp
void rb::Ultrasound::measureAsync (
    callback_t callback=nullptr
) 
```



### function setSpeedOfSound 


```cpp
void rb::Ultrasound::setSpeedOfSound (
    float speedOfSoundInMetersPerSecond=defaultSpeedOfSound
) 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXUltrasound.h`