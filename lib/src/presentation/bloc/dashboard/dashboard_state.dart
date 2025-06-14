part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    required RequestState state,
    
 
  }) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(
    state: RequestState.empty,
    message: '',
    email: '',
    password: '',
  );

}


