
# Class rb::Angle


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Angle**](classrb_1_1Angle.md)
















## Public Types

| Type | Name |
| ---: | :--- |
| typedef float | [**\_T**](classrb_1_1Angle.md#typedef-t)  <br> |



## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  const [**Angle**](classrb_1_1Angle.md) | [**Pi**](classrb_1_1Angle.md#variable-pi)   = = Angle::rad(Angle::\_T(M\_PI))<br> |

## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**Angle**](classrb_1_1Angle.md#function-angle-12) () <br> |
|  \_T | [**deg**](classrb_1_1Angle.md#function-deg-12) () const<br> |
|  bool | [**isNaN**](classrb_1_1Angle.md#function-isnan) () const<br> |
|  [**Angle**](classrb_1_1Angle.md) & | [**operator\*=**](classrb_1_1Angle.md#function-operator) (\_T c) <br> |
|  [**Angle**](classrb_1_1Angle.md) & | [**operator+=**](classrb_1_1Angle.md#function-operator_1) ([**Angle**](classrb_1_1Angle.md) a) <br> |
|  [**Angle**](classrb_1_1Angle.md) | [**operator-**](classrb_1_1Angle.md#function-operator_2) () const<br> |
|  [**Angle**](classrb_1_1Angle.md) & | [**operator-=**](classrb_1_1Angle.md#function-operator_3) ([**Angle**](classrb_1_1Angle.md) a) <br> |
|  [**Angle**](classrb_1_1Angle.md) & | [**operator/=**](classrb_1_1Angle.md#function-operator_4) (\_T c) <br> |
|  \_T | [**rad**](classrb_1_1Angle.md#function-rad-12) () const<br> |

## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**Angle**](classrb_1_1Angle.md) | [**deg**](classrb_1_1Angle.md#function-deg-22) (\_T d) <br> |
|  [**Angle**](classrb_1_1Angle.md) | [**nan**](classrb_1_1Angle.md#function-nan) () <br> |
|  [**Angle**](classrb_1_1Angle.md) | [**rad**](classrb_1_1Angle.md#function-rad-22) (\_T r) <br> |







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