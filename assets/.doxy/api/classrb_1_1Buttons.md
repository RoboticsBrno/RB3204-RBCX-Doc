
# Class rb::Buttons


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Buttons**](classrb_1_1Buttons.md)
















## Public Types

| Type | Name |
| ---: | :--- |
| typedef std::function&lt; bool(ButtonId, bool)&gt; | [**callback\_t**](classrb_1_1Buttons.md#typedef-callback-t)  <br> |



## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr uint32\_t | [**Count**](classrb_1_1Buttons.md#variable-count)   = = 6<br> |

## Public Functions

| Type | Name |
| ---: | :--- |
|  bool | [**byId**](classrb_1_1Buttons.md#function-byid) (ButtonId id) const<br> |
|  bool | [**down**](classrb_1_1Buttons.md#function-down) () const<br> |
|  bool | [**left**](classrb_1_1Buttons.md#function-left) () const<br> |
|  bool | [**off**](classrb_1_1Buttons.md#function-off) () const<br> |
|  bool | [**on**](classrb_1_1Buttons.md#function-on) () const<br> |
|  void | [**onChange**](classrb_1_1Buttons.md#function-onchange) (callback\_t callback) <br> |
|  bool | [**right**](classrb_1_1Buttons.md#function-right) () const<br> |
|  bool | [**up**](classrb_1_1Buttons.md#function-up) () const<br> |








## Public Types Documentation


### typedef callback\_t 


```cpp
typedef std::function<bool(ButtonId, bool)> rb::Buttons::callback_t;
```


## Public Static Attributes Documentation


### variable Count 


```cpp
constexpr uint32_t rb::Buttons::Count;
```


## Public Functions Documentation


### function byId 


```cpp
inline bool rb::Buttons::byId (
    ButtonId id
) const
```



### function down 


```cpp
inline bool rb::Buttons::down () const
```



### function left 


```cpp
inline bool rb::Buttons::left () const
```



### function off 


```cpp
inline bool rb::Buttons::off () const
```



### function on 


```cpp
inline bool rb::Buttons::on () const
```



### function onChange 


```cpp
void rb::Buttons::onChange (
    callback_t callback
) 
```



### function right 


```cpp
inline bool rb::Buttons::right () const
```



### function up 


```cpp
inline bool rb::Buttons::up () const
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXButtons.h`