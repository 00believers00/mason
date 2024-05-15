import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name}}.freezed.dart';
part '{{name}}.g.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}() = _{{name.pascalCase()}};

  const {{name.pascalCase()}}._();

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}FromJson(json);
}