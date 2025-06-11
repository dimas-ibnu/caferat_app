part of 'auth_watcher_bloc.dart';


@freezed
class AuthWatcherEvent with _$AuthWatcherEvent {
  const factory AuthWatcherEvent.authCheckRequest() = _AuthCheckRequest;
  const factory AuthWatcherEvent.signOut() = _SignOut;
}