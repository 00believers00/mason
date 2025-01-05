import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_manager/route_manager.dart';

import '../blocs/{{name}}_bloc.dart';

class {{name.pascalCase()}}Binding extends Bindings {
  @override
  List<BlocProvider> get dependencies => [
        BlocProvider<{{name.pascalCase()}}Bloc>(
          create: (context) => {{name.pascalCase()}}Bloc()
            ..add(
              const {{name.pascalCase()}}Event.onInit(),
            ),
        ),
      ];
}
