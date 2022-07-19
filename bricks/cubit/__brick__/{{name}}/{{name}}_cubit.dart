import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


part '{{name}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}State.initial());

}
