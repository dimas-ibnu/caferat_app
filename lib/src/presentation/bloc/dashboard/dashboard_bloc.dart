
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class SignInFormBloc extends Bloc<DashboardEvent, DashboardState> {
  SignInFormBloc(this._auth) : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      switch (event) {
        case _Initial():
          emit(SignInFormState.initial());
          break;

        case _SignInWithEmail():
          emit(state.copyWith(state: RequestState.loading));
          await Future.delayed(Duration(seconds: 2));
          final result = await _auth.doLogin(state.email, state.password);
          result.fold(
            (f) => emit(
              state.copyWith(state: RequestState.error, message: f.message),
            ),
            (r) async {
              // Save to SharedPreferences
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString(
                KeyConstant.accessToken,
                r.session?.accessToken ?? '',
              );
              await prefs.setString(
                KeyConstant.userId,
                r.user?.id ?? '',
              );

              emit(state.copyWith(state: RequestState.loaded));
            },
          );
          break;
        case _EmailOnChanged(email: final email):
          emit(state.copyWith(email: email, state: RequestState.empty));
          break;

        case _PasswordOnChanged(password: final password):
          emit(state.copyWith(password: password, state: RequestState.empty));
          break;
      }
    });
  }

  final Auth _auth;
}
