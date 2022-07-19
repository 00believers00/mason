# get_module

## Package Flutter Request
[get](https://pub.dev/packages/get)

## How to use 


```sh
mason make get_module
```

## Variables

| Variable       | Description             | Default     | Type     |
| -------------- | ----------------------- | ----------- | -------- |
| `name`         | filename and name class | dashboard   | `string` |

## Outputs
Structure
```sh
--name module_name
├── module_name
│   ├── bindings
│   │   └── module_name_binding.dart
│   ├── controllers
│   │   └── module_name_controller.dart
│   └── views
│   │   ├── widgets
│   │   └── module_name_view.dart
│   └──
└── ...
```

file bindings/module_name_binding.dart
```dart
import 'package:get/get.dart';

import '../controllers/module_name_controller.dart';

class ModuleNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ModuleNameController());
  }
}
```

file controllers/module_name_controller.dart
```dart
import 'package:get/get.dart';

class ModuleNameController extends GetxController {

}
```

file views/module_name_view.dart
```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/module_name_controller.dart';

class ModuleNameView extends GetView<ModuleNameController> {
  const ModuleNameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "ModuleName",
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
```