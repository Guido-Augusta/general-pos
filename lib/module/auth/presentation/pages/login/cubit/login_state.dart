part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(BlocStatus.initial) BlocStatus status,
    UserEntity? user,
    Failure? failure,
  }) = _LoginState;
}
