part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.initial() = _Initial;
  const factory RegisterFormEvent.registerWithEmail() = _RegisterWithEmail;

  // TextField events
  const factory RegisterFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory RegisterFormEvent.passwordOnChanged(String password) =
      _PasswordOnChanged;
}
