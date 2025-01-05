part of '{{name}}_bloc.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.initial() = _Initial;
  const factory {{name.pascalCase()}}State.loading() = _Loading;
  const factory {{name.pascalCase()}}State.success() = _Success;
  const factory {{name.pascalCase()}}State.failure() = _Failure;
  const factory {{name.pascalCase()}}State.empty() = _Empty;
}
