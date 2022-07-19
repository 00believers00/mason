import 'package:json_annotation/json_annotation.dart';

part '{{name}}.g.dart';

@JsonSerializable()
class {{name.pascalCase()}} {

  {{name.pascalCase()}}();
  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}FromJson(json);

  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ToJson(this);
}