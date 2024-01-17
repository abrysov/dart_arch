import 'package:freezed_annotation/freezed_annotation.dart';

part 'myapistate.freezed.dart';
part 'myapistate.g.dart';

/// Created by Alex B. for ABMobile.
/// 17.01.2024
///
@freezed
class MyApiState with _$MyApiState {
  factory MyApiState() = _MyApiState;

  factory MyApiState.fromJson(Map<String, dynamic> json) =>
      _$MyApiStateFromJson(json);
}
