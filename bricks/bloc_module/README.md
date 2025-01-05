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
│    └── bindings
│    │    └── action_counter_binding.dart
│    └── blocs
│    │    └── action_count_bloc.dart
│    │    └── action_count_event.dart
│    │    └── action_count_state.dart
│    └── views
│         └── action_counter_screen.dart
└── ...
```

#### file bindings/action_counter_binding.dart
```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_manager/route_manager.dart';

import '../blocs/action_counter_bloc.dart';

class ActionCounterBinding extends Bindings {
  @override
  List<BlocProvider> get dependencies => [
        BlocProvider(
          create: (context) => ActionCounterBloc()
            ..add(
              const ActionCounterEvent.onInit(),
            ),
        ),
      ];
}
```

#### file blocs/action_count_bloc.dart
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

#### file blocs/action_count_event.dart
```dart
part of 'action_counter_bloc.dart';

@freezed
class ActionCounterEvent with _$ActionCounterEvent {
  const factory ActionCounterEvent.onInit() = _OnInit;
}
```

#### file blocs/action_count_state.dart
```dart
part of 'action_counter_bloc.dart';

@freezed
class ActionCounterState with _$ActionCounterState {
  const factory ActionCounterState.initial() = _Initial;
  const factory ActionCounterState.loading() = _Loading;
  const factory ActionCounterState.success() = _Success;
  const factory ActionCounterState.failure() = _Failure;
  const factory ActionCounterState.empty() = _Empty;
}
```

#### file views/action_counter_screen.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/action_counter_bloc.dart';

class ActionCounterScreen extends StatelessWidget {
  const ActionCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActionCounterBloc, ActionCounterState>(
      listener: (BuildContext context, ActionCounterState state) {
        state.maybeWhen(
          orElse: () {},
          success: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        );
      },
      builder: (BuildContext context, ActionCounterState state) {
        return state.maybeWhen(
          orElse: () => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Text('ActionCounter'),
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
```