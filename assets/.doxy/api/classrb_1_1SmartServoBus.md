
# Class rb::SmartServoBus


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**SmartServoBus**](classrb_1_1SmartServoBus.md)




















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**SmartServoBus**](classrb_1_1SmartServoBus.md#function-smartservobus-12) () <br> |
|  uint8\_t | [**getId**](classrb_1_1SmartServoBus.md#function-getid) (uint8\_t destId=254) <br> |
|  void | [**limit**](classrb_1_1SmartServoBus.md#function-limit) (uint8\_t id, [**Angle**](classrb_1_1Angle.md) bottom, [**Angle**](classrb_1_1Angle.md) top) <br> |
|  [**Angle**](classrb_1_1Angle.md) | [**pos**](classrb_1_1SmartServoBus.md#function-pos) (uint8\_t id) <br> |
|  [**Angle**](classrb_1_1Angle.md) | [**posOffline**](classrb_1_1SmartServoBus.md#function-posoffline) (uint8\_t id) <br> |
|  void | [**set**](classrb_1_1SmartServoBus.md#function-set) (uint8\_t id, [**Angle**](classrb_1_1Angle.md) ang, float speed=180.f, float speed\_raise=0.0015f) <br> |
|  void | [**setAutoStop**](classrb_1_1SmartServoBus.md#function-setautostop) (uint8\_t id, bool enable=true) <br> |
|  void | [**setId**](classrb_1_1SmartServoBus.md#function-setid) (uint8\_t newId, uint8\_t destId=254) <br> |
|   | [**~SmartServoBus**](classrb_1_1SmartServoBus.md#function-smartservobus) () <br> |








## Public Functions Documentation


### function SmartServoBus [1/2]


```cpp
rb::SmartServoBus::SmartServoBus () 
```



### function getId 


```cpp
uint8_t rb::SmartServoBus::getId (
    uint8_t destId=254
) 
```



### function limit 


```cpp
void rb::SmartServoBus::limit (
    uint8_t id,
    Angle bottom,
    Angle top
) 
```



### function pos 


```cpp
Angle rb::SmartServoBus::pos (
    uint8_t id
) 
```



### function posOffline 


```cpp
Angle rb::SmartServoBus::posOffline (
    uint8_t id
) 
```



### function set 


```cpp
void rb::SmartServoBus::set (
    uint8_t id,
    Angle ang,
    float speed=180.f,
    float speed_raise=0.0015f
) 
```



### function setAutoStop 


```cpp
void rb::SmartServoBus::setAutoStop (
    uint8_t id,
    bool enable=true
) 
```



### function setId 


```cpp
void rb::SmartServoBus::setId (
    uint8_t newId,
    uint8_t destId=254
) 
```



### function ~SmartServoBus 


```cpp
inline rb::SmartServoBus::~SmartServoBus () 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXSmartServo.h`