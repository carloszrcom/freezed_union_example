import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_union_example.freezed.dart';

void main(List<String> arguments) {
  const state = State.complete(85);

  print(state.when(
    complete: (value) {
      return 'Todo bien, se ha completado al $value%.';
    },
    failure: (message) {
      return 'Error, mensaje del error: $message.';
    },
  ));
}

@freezed
class State with _$State {
  const State._();
  const factory State.complete(int value) = _Complete;
  const factory State.failure(String message) = _Failure;
}
