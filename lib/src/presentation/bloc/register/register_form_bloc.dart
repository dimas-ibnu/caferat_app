import 'package:caferat_app/src/common/constants/key_constant.dart';
import 'package:caferat_app/src/common/enum/request_state_enum.dart';
import 'package:caferat_app/src/domain/usecases/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'register_form_event.dart';

part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc(this._auth) : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>((event, emit) async {
      switch (event) {
        case _Initial():
          emit(RegisterFormState.initial());
          break;

        case _RegisterWithEmail():
          emit(state.copyWith(state: RequestState.loading));
          await Future.delayed(Duration(seconds: 2));
          final result = await _auth.doRegister(state.email, state.password);
          result.fold(
            (f) => emit(
              state.copyWith(state: RequestState.error, message: f.message),
            ),
            (authResponse) async {
              // Save to SharedPreferences
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString(
                KeyConstant.accessToken,
                authResponse.session?.accessToken ?? '',
              );
              await prefs.setString(
                KeyConstant.userId,
                authResponse.user?.id ?? '',
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
