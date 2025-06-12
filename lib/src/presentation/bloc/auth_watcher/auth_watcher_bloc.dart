import 'package:caferat_app/src/common/constants/key_constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_watcher_event.dart';
part 'auth_watcher_state.dart';
part 'auth_watcher_bloc.freezed.dart';

class AuthWatcherBloc extends Bloc<AuthWatcherEvent, AuthWatcherState> {
  AuthWatcherBloc() : super(const AuthWatcherState.initial()) {
    on<AuthWatcherEvent>((event, emit) async {
     
      switch (event) {
        case _AuthCheckRequest():
          emit(const AuthWatcherState.authenticating());
          final prefs = await SharedPreferences.getInstance();

          final token = prefs.getString(KeyConstant.accessToken);

          print('AuthWatcherBloc: Token: $token');

          final showOnbording = prefs.getString(KeyConstant.onBoarding);
          if (showOnbording == null) {
            prefs.setString(KeyConstant.onBoarding, KeyConstant.onBoarding);
            emit(const AuthWatcherState.isFirstTime());
          } else if (token != null) {
            emit(const AuthWatcherState.authenticated());
          } else {
            emit(const AuthWatcherState.unauthenticated());
          }
          break;
        case _SignOut():
          emit(const AuthWatcherState.authenticating());
          final prefs = await SharedPreferences.getInstance();
          prefs.remove(KeyConstant.accessToken);
          emit(const AuthWatcherState.unauthenticated());
          break;
        default:
          emit(const AuthWatcherState.initial());
          break;
      }
    });
  }
}
