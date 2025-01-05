import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/{{name}}_bloc.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      listener: (BuildContext context, {{name.pascalCase()}}State state) {
        state.maybeWhen(
          orElse: () {},
          success: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        );
      },
      builder: (BuildContext context, {{name.pascalCase()}}State state) {
        return state.maybeWhen(
          orElse: () => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Text('{{name.pascalCase()}}'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
