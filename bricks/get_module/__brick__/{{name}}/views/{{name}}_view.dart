import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/{{name}}_controller.dart';

class {{name.pascalCase()}}View extends GetView<{{name.pascalCase()}}Controller> {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "{{name.pascalCase()}}",
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
