# bloc

## Package Flutter Request
>[flutter_bloc](https://pub.dev/packages/flutter_bloc)
>
>[equatable](https://pub.dev/packages/equatable)

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
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'action_count_event.dart';
part 'action_count_state.dart';

class ActionCountBloc extends Bloc<ActionCountEvent, ActionCountState>{
  ActionCountBloc():super(ActionCountState.initial()){
    on<ActionCountEvent>((event, emit){

    });
  }
}
```

#### file action_count_event.dart
```dart
part of 'action_count_bloc.dart';

abstract class ActionCountEvent extends Equatable{
  const ActionCountEvent();

  @override
  List<Object> get props => [];
}
```

#### file action_count_state.dart
```dart
part of 'action_count_bloc.dart';

class ActionCountState extends Equatable {

  const ActionCountState();

  factory ActionCountState.initial(){
    return const ActionCountState();
  }

  @override
  List<Object> get props => [];

}

```