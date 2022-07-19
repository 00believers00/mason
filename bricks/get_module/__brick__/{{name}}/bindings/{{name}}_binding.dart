import 'package:get/get.dart';

import '../controllers/{{name}}_controller.dart';

class {{name.pascalCase()}}Binding extends Bindings {
  @override
  void dependencies() {
    Get.put({{name.pascalCase()}}Controller());
  }
}