# mason
> [mason_cli](https://pub.dev/packages/mason_cli)

### Installation

```sh
# 🎯 Activate from https://pub.dev
dart pub global activate mason_cli

# 🍺 Or install from https://brew.sh
brew tap felangel/mason
brew install mason
```

### Initializing
```sh
mason init
```
หลังจาก run คำสั่ง init เราจะได้ตามภาพด้านล้างนี้
![folder](/assets/1.png)

### Make brick
- make folder bricks
    ```sh
    mkdir bricks
    ```
- cd to folder bricks
   ```sh
    cd bricks
    ``` 
-  make brick
    ```sh
    mason new <name brick>
    ```
หลังจาก run คำสั่ง new แล้วเราจะได้ folder ตามภาพ
![structure](/assets/2.png)

ในการสร้าง template ของเราเองจะกำหนดได้ที่ folder `__brick__`
และสามารถตั้งค่า ได้ที่ brick.yaml

เรามาดูที่ไฟล์ brick.yaml
```
name: widget
description: A new brick created with the Mason CLI.

version: 0.1.0+1

environment:
  mason: ">=0.1.0-dev.26 <0.1.0"

vars:
  name:
    type: string
    description: Your name
    default: Dash
    prompt: What is your name?
```
สังเกตุที่ vars ในส่วนตรงนี้จะเป็นการกำหนดตัวแปรที่เราจะรับค่าในตอนการสร้าง brick
| Head       | Description             | 
| -------------- | ----------------------- | 
| `name`         | ชื่อตัวแปร |
| `description`  | รายละเอียด |
| `default`      | ข้อมูลเริ่มต้นถ้าไม่มีข้อมูลส่งเข้ามา |
| `prompt`       | แสดงข้อความขณะ กรอกข้อมูล |

ต่อมาเรามาทดสอบเพิ่มไฟล์ widget
การเรียกใช้ตัวแปร {{variable name}}
ตัวอย่างโค้ด
```dart
import 'package:flutter/material.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
```
มาดูในส่วนของ name.pascalCase() จะมีความหมาย hello_world จะเป็น HelloWorld
ฟังก์ชั่นต่างๆ สามารถดูได้ที่ [Click me!!](https://pub.dev/packages/mason_cli#built-in-lambdas)

หลังจากแก้ไขเสร็จแล้วมาลองใช้กัน
กลับไปที่ Project หลัก
```sh
cd ..
```
กลับแก้ไขไฟล์ mason.yaml เพื่อที่จะชี้ไปที่ brick ที่เราได้สร้างไว้
```
bricks:
  widget:
    path: bricks/widget
```
แก้ไขตามนี้แลัว run คำสั่ง update mason
```sh
mason get
```
แล้วเราก็ลองใช้คำสั่งสร้าง brick ด้วยคำสั่ง
```sh
mason make widget
```
จะขึ้นให้กรอกข้อมูลของตัวแปรที่เราตั้งค่าไว้ ถ้าเรากรอกเสร็จจะได้ไฟล์ที่เราตั้งค่าไว้
![make file mason](/assets/3.png)

วิธีการนำไปใช้งานสามารถดูต่อได้ที่
https://github.com/00believers00/mason 