part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required RequestState state,
    required String message,
    required String email,
    required String password,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => const RegisterFormState(
    state: RequestState.empty,
    message: '',
    email: '',
    password: '',
  );

}


