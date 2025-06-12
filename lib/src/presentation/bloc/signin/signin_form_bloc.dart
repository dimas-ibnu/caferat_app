import 'package:caferat_app/src/common/enum/request_state_enum.dart';
import 'package:caferat_app/src/domain/usecases/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_form_event.dart';

part 'signin_form_state.dart';
part 'signin_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._signInWithEmail) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      switch (event) {
        case _Initial():
          emit(SignInFormState.initial());
          break;

        case _SignInWithEmail():
          emit(state.copyWith(state: RequestState.loading));
          await Future.delayed(Duration(seconds: 2));
          final result = await _signInWithEmail.execute(
            state.email,
            state.password,
          );
          result.fold(
            (f) => emit(
              state.copyWith(state: RequestState.error, message: f.message),
            ),
            (_) => emit(state.copyWith(state: RequestState.loaded)),
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

  final Login _signInWithEmail;
}
