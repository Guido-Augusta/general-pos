part of 'dashboard_cubit.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(BlocStatus.initial) BlocStatus status,
    UserEntity? user,
  }) = _DashboardState;
}
