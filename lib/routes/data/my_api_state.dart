import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_api_state.freezed.dart';

/// Created by Alex B. for ABMobile.
/// 17.01.2024
///

@freezed
abstract class MyApiState with _$MyApiState {
  factory MyApiState.success(List<String> data) = SuccessState;
  factory MyApiState.error(String errorMsg) = ErrorState;
  factory MyApiState.loading() = LoadingState;
}