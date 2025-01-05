# bloc

## Package Flutter Request
>[flutter_bloc](https://pub.dev/packages/flutter_bloc)
>
>[freezed](https://pub.dev/packages/freezed)
>
>[freezed_annotation](https://pub.dev/packages/freezed_annotation)
>
>[build_runner](https://pub.dev/packages/build_runner)

## How to use 


```sh
mason make bloc
```

## Variables

| Variable       | Description             | Default     | Type     |
| -------------- | ----------------------- | ----------- | -------- |
| `name`         | filename and name class | action      | `string` |

## Outputs
#### Structure
```sh
--name action_count
├── action_count
│    └── action_count_bloc.dart
│    └── action_count_event.dart
│    └── action_count_state.dart
└── ...
```

#### file action_count_bloc.dart
```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'action_counter_event.dart';
part 'action_counter_state.dart';
part 'generated/action_counter_bloc.freezed.dart';

class ActionCounterBloc extends Bloc<ActionCounterEvent, ActionCounterState>{
  ActionCounterBloc():super(const _Initial()){
    on<ActionCounterEvent>((event, emit){

    });
  }
}
```

#### file action_count_event.dart
```dart
part of 'action_counter_bloc.dart';

@freezed
class ActionCounterEvent with _$ActionCounterEvent {
  const factory ActionCounterEvent.action() = _Action;
}
```

#### file action_count_state.dart
```dart
part of 'action_counter_bloc.dart';

@freezed
class ActionCounterState with _$ActionCounterState {
  const factory ActionCounterState.initial() = _Initial;
}
```