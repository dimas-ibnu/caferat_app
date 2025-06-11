part of 'auth_watcher_bloc.dart';

@freezed
abstract class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState.initial() = Initial;
  const factory AuthWatcherState.authenticating() = Authenticating;
  const factory AuthWatcherState.authenticated() = Authenticated;
  const factory AuthWatcherState.unauthenticated() = Unauthenticated;
  const factory AuthWatcherState.isFirstTime() = IsFirstTime;
}
