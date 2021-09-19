
# Class rb::Nvs


[**Class List**](annotated.md) **>** [**rb**](namespacerb.md) **>** [**Nvs**](classrb_1_1Nvs.md)




















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**Nvs**](classrb_1_1Nvs.md#function-nvs-12) (const char \* name\_space, const char \* partition="nvs") <br> |
|   | [**Nvs**](classrb_1_1Nvs.md#function-nvs-22) (const [**Nvs**](classrb_1_1Nvs.md) &) = delete<br> |
|  void | [**commit**](classrb_1_1Nvs.md#function-commit) () <br> |
|  bool | [**existsInt**](classrb_1_1Nvs.md#function-existsint) (const char \* key) <br> |
|  bool | [**existsString**](classrb_1_1Nvs.md#function-existsstring) (const char \* key) <br> |
|  int | [**getInt**](classrb_1_1Nvs.md#function-getint) (const char \* key) <br> |
|  std::string | [**getString**](classrb_1_1Nvs.md#function-getstring) (const char \* key) <br> |
|  void | [**writeInt**](classrb_1_1Nvs.md#function-writeint) (const char \* key, int value) <br> |
|  void | [**writeString**](classrb_1_1Nvs.md#function-writestring) (const char \* key, const std::string & value) <br> |
|   | [**~Nvs**](classrb_1_1Nvs.md#function-nvs) () <br> |








## Public Functions Documentation


### function Nvs [1/2]


```cpp
rb::Nvs::Nvs (
    const char * name_space,
    const char * partition="nvs"
) 
```



### function Nvs [2/2]


```cpp
rb::Nvs::Nvs (
    const Nvs &
) = delete
```



### function commit 


```cpp
void rb::Nvs::commit () 
```



### function existsInt 


```cpp
bool rb::Nvs::existsInt (
    const char * key
) 
```



### function existsString 


```cpp
bool rb::Nvs::existsString (
    const char * key
) 
```



### function getInt 


```cpp
int rb::Nvs::getInt (
    const char * key
) 
```



### function getString 


```cpp
std::string rb::Nvs::getString (
    const char * key
) 
```



### function writeInt 


```cpp
void rb::Nvs::writeInt (
    const char * key,
    int value
) 
```



### function writeString 


```cpp
void rb::Nvs::writeString (
    const char * key,
    const std::string & value
) 
```



### function ~Nvs 


```cpp
rb::Nvs::~Nvs () 
```



------------------------------
The documentation for this class was generated from the following file `build/RB3204-RBCX-library/src/RBCXNvs.h`