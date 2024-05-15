# model_json

model for json_serializable

## Package Flutter Request
>[freezed](https://pub.dev/packages/freezed)
>
>[freezed_annotation](https://pub.dev/packages/freezed_annotation)
>
>[build_runner](https://pub.dev/packages/build_runner)
>
>[json_serializable](https://pub.dev/packages/json_serializable)

## How to use 

```sh
mason make model_json
```

## Variables

| Variable       | Description             | Default     | Type     |
| -------------- | ----------------------- | ----------- | -------- |
| `name`         | filename and name class | dashboard   | `string` |

## Outputs

#### Structure
```sh
--name model_freezed
├── model_freezed
│   └── model_freezed.dart
└── ...
```

#### file model_freezed.dart
```dart
import 'package:json_annotation/json_annotation.dart';

part '../model_json copy/model_json.g.dart';

@JsonSerializable()
class ModelJson {

  ModelJson();
  factory ModelJson.fromJson(Map<String, dynamic> json) => _$ModelJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ModelJsonToJson(this);
}
```
