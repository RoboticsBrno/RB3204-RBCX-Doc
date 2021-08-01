
# Class rb::Angle


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Angle**](classrb_1_1_angle.md)





* `#include <RBCXAngle.h>`











## Public Types

| Type | Name |
| ---: | :--- |
| typedef float | [**\_T**](classrb_1_1_angle.md#typedef-t)  <br> |



## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  const [**Angle**](classrb_1_1_angle.md) | [**Pi**](classrb_1_1_angle.md#variable-pi)   = = [**Angle::rad**](classrb_1_1_angle.md#function-rad-22)([**Angle::\_T**](classrb_1_1_angle.md#typedef-t)( 3.14159265358979323846 ))<br> |

## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**Angle**](classrb_1_1_angle.md#function-angle-12) () <br> |
|  [**\_T**](classrb_1_1_angle.md#typedef-t) | [**deg**](classrb_1_1_angle.md#function-deg-12) () const<br> |
|  bool | [**isNaN**](classrb_1_1_angle.md#function-isnan) () const<br> |
|  [**Angle**](classrb_1_1_angle.md) & | [**operator\*=**](classrb_1_1_angle.md#function-operator) ([**\_T**](classrb_1_1_angle.md#typedef-t) c) <br> |
|  [**Angle**](classrb_1_1_angle.md) & | [**operator+=**](classrb_1_1_angle.md#function-operator_1) ([**Angle**](classrb_1_1_angle.md) a) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**operator-**](classrb_1_1_angle.md#function-operator_2) () const<br> |
|  [**Angle**](classrb_1_1_angle.md) & | [**operator-=**](classrb_1_1_angle.md#function-operator_3) ([**Angle**](classrb_1_1_angle.md) a) <br> |
|  [**Angle**](classrb_1_1_angle.md) & | [**operator/=**](classrb_1_1_angle.md#function-operator_4) ([**\_T**](classrb_1_1_angle.md#typedef-t) c) <br> |
|  [**\_T**](classrb_1_1_angle.md#typedef-t) | [**rad**](classrb_1_1_angle.md#function-rad-12) () const<br> |

## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**Angle**](classrb_1_1_angle.md) | [**deg**](classrb_1_1_angle.md#function-deg-22) ([**\_T**](classrb_1_1_angle.md#typedef-t) d) <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**nan**](classrb_1_1_angle.md#function-nan) () <br> |
|  [**Angle**](classrb_1_1_angle.md) | [**rad**](classrb_1_1_angle.md#function-rad-22) ([**\_T**](classrb_1_1_angle.md#typedef-t) r) <br> |







## Public Types Documentation


### typedef \_T 


```cpp
typedef float rb::Angle::_T;
```


## Public Static Attributes Documentation


### variable Pi 


```cpp
const Angle rb::Angle::Pi;
```


## Public Functions Documentation


### function Angle [1/2]


```cpp
inline rb::Angle::Angle () 
```



### function deg [1/2]


```cpp
inline _T rb::Angle::deg () const
```



### function isNaN 


```cpp
inline bool rb::Angle::isNaN () const
```



### function operator\*= 


```cpp
inline Angle & rb::Angle::operator*= (
    _T c
) 
```



### function operator+= 


```cpp
inline Angle & rb::Angle::operator+= (
    Angle a
) 
```



### function operator- 


```cpp
inline Angle rb::Angle::operator- () const
```



### function operator-= 


```cpp
inline Angle & rb::Angle::operator-= (
    Angle a
) 
```



### function operator/= 


```cpp
inline Angle & rb::Angle::operator/= (
    _T c
) 
```



### function rad [1/2]


```cpp
inline _T rb::Angle::rad () const
```


## Public Static Functions Documentation


### function deg [2/2]


```cpp
static inline Angle rb::Angle::deg (
    _T d
) 
```



### function nan 


```cpp
static inline Angle rb::Angle::nan () 
```



### function rad [2/2]


```cpp
static inline Angle rb::Angle::rad (
    _T r
) 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXAngle.h`