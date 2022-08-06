import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part '{{name}}_event.dart';
part '{{name}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State>{
  {{name.pascalCase()}}Bloc():super({{name.pascalCase()}}State.initial()){
    on<{{name.pascalCase()}}Event>((event, emit){

    });
  }
}