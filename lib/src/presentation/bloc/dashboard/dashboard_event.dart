part of 'dashboard_bloc.dart';



@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.initial() = _Initial;
  const factory DashboardEvent.createUserInfo() = _CreateUserInfo;
  const factory DashboardEvent.getUserInfo() = _GetUserInfo;

}
