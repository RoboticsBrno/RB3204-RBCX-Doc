
# Class rb::Timers


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Timers**](classrb_1_1_timers.md)





* `#include <RBCXTimers.h>`














## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr uint16\_t | [**INVALID\_ID**](classrb_1_1_timers.md#variable-invalid-id)   = = 0<br> |

## Public Functions

| Type | Name |
| ---: | :--- |
|  bool | [**cancel**](classrb_1_1_timers.md#function-cancel) (uint16\_t id) <br> |
|  bool | [**isOnTimerTask**](classrb_1_1_timers.md#function-isontimertask) () const<br> |
|  bool | [**reset**](classrb_1_1_timers.md#function-reset) (uint16\_t id, uint32\_t period\_ms) <br> |
|  uint16\_t | [**schedule**](classrb_1_1_timers.md#function-schedule) (uint32\_t period\_ms, std::function&lt; bool()&gt; callback) <br>_Schedule callback to fire after period (in millisecond)._  |
|  bool | [**stop**](classrb_1_1_timers.md#function-stop) (uint16\_t id) <br> |

## Public Static Functions

| Type | Name |
| ---: | :--- |
|  void | [**deleteFreeRtOsTimerTask**](classrb_1_1_timers.md#function-deletefreertostimertask) () <br>_If you don't plan to use FreeRTOS SW timers, call this to free up 2KB of heap._  |
|  [**Timers**](classrb_1_1_timers.md) & | [**get**](classrb_1_1_timers.md#function-get) () <br> |







## Public Static Attributes Documentation


### variable INVALID\_ID 


```cpp
constexpr uint16_t rb::Timers::INVALID_ID;
```


## Public Functions Documentation


### function cancel 


```cpp
bool rb::Timers::cancel (
    uint16_t id
) 
```



### function isOnTimerTask 


```cpp
bool rb::Timers::isOnTimerTask () const
```



### function reset 


```cpp
bool rb::Timers::reset (
    uint16_t id,
    uint32_t period_ms
) 
```



### function schedule 


```cpp
uint16_t rb::Timers::schedule (
    uint32_t period_ms,
    std::function< bool()> callback
) 
```


Return true from the callback to schedule periodically, false to not (singleshot timer).




**Parameters:**


* `period_ms` is period in which will be the schedule callback fired 
* `callback` is a function which will be schedule with the set period. 



**Returns:**

timer ID that you can use to cancel the timer. 





        

### function stop 


```cpp
bool rb::Timers::stop (
    uint16_t id
) 
```


## Public Static Functions Documentation


### function deleteFreeRtOsTimerTask 


```cpp
static void rb::Timers::deleteFreeRtOsTimerTask () 
```



### function get 


```cpp
static Timers & rb::Timers::get () 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXTimers.h`