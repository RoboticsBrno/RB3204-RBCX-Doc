
# Struct rb::Timers::timer\_t


[**Class List**](annotated.md) **>** [**timer\_t**](structrb_1_1_timers_1_1timer__t.md)


















## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::function&lt; bool()&gt; | [**callback**](structrb_1_1_timers_1_1timer__t.md#variable-callback)  <br> |
|  esp\_timer\_handle\_t | [**handle**](structrb_1_1_timers_1_1timer__t.md#variable-handle)  <br> |
|  uint16\_t | [**id**](structrb_1_1_timers_1_1timer__t.md#variable-id)  <br> |


## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**swap**](structrb_1_1_timers_1_1timer__t.md#function-swap) (timer\_t & o) <br> |








## Public Attributes Documentation


### variable callback 


```cpp
std::function<bool()> rb::Timers::timer_t::callback;
```



### variable handle 


```cpp
esp_timer_handle_t rb::Timers::timer_t::handle;
```



### variable id 


```cpp
uint16_t rb::Timers::timer_t::id;
```


## Public Functions Documentation


### function swap 


```cpp
inline void timer_t::swap (
    timer_t & o
) 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXTimers.h`