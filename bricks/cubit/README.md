# cubit

## Package Flutter Request
>[flutter_bloc](https://pub.dev/packages/flutter_bloc)
>
>[equatable](https://pub.dev/packages/equatable)

## How to use 


```sh
mason make cubit
```

## Variables

| Variable       | Description             | Default     | Type     |
| -------------- | ----------------------- | ----------- | -------- |
| `name`         | filename and name class | action      | `string` |

## Outputs
Structure
```sh
--name action_count
├── action_cubit
│    └── action_count_cubit.dart
│    └── action_count_state.dart
└── ...
```

file action_count_cubit.dart
```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


part 'action_count_state.dart';

class ActionCountCubit extends Cubit<ActionCountState> {
  ActionCountCubit() : super(ActionCountState.initial());

}
```

file action_count_state.dart
```dart
part of 'action_count_cubit.dart';

class ActionCountState extends Equatable {

  factory ActionCountState.initial(){
    return const ActionCountState();
  }

}
```
