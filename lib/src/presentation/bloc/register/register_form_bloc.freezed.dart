// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterFormEvent()';
}


}

/// @nodoc
class $RegisterFormEventCopyWith<$Res>  {
$RegisterFormEventCopyWith(RegisterFormEvent _, $Res Function(RegisterFormEvent) __);
}


/// @nodoc


class _Initial implements RegisterFormEvent {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterFormEvent.initial()';
}


}




/// @nodoc


class _RegisterWithEmail implements RegisterFormEvent {
  const _RegisterWithEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterWithEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterFormEvent.registerWithEmail()';
}


}




/// @nodoc


class _EmailOnChanged implements RegisterFormEvent {
  const _EmailOnChanged(this.email);
  

 final  String email;

/// Create a copy of RegisterFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailOnChangedCopyWith<_EmailOnChanged> get copyWith => __$EmailOnChangedCopyWithImpl<_EmailOnChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailOnChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'RegisterFormEvent.emailOnChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailOnChangedCopyWith<$Res> implements $RegisterFormEventCopyWith<$Res> {
  factory _$EmailOnChangedCopyWith(_EmailOnChanged value, $Res Function(_EmailOnChanged) _then) = __$EmailOnChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EmailOnChangedCopyWithImpl<$Res>
    implements _$EmailOnChangedCopyWith<$Res> {
  __$EmailOnChangedCopyWithImpl(this._self, this._then);

  final _EmailOnChanged _self;
  final $Res Function(_EmailOnChanged) _then;

/// Create a copy of RegisterFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailOnChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordOnChanged implements RegisterFormEvent {
  const _PasswordOnChanged(this.password);
  

 final  String password;

/// Create a copy of RegisterFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordOnChangedCopyWith<_PasswordOnChanged> get copyWith => __$PasswordOnChangedCopyWithImpl<_PasswordOnChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordOnChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'RegisterFormEvent.passwordOnChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordOnChangedCopyWith<$Res> implements $RegisterFormEventCopyWith<$Res> {
  factory _$PasswordOnChangedCopyWith(_PasswordOnChanged value, $Res Function(_PasswordOnChanged) _then) = __$PasswordOnChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$PasswordOnChangedCopyWithImpl<$Res>
    implements _$PasswordOnChangedCopyWith<$Res> {
  __$PasswordOnChangedCopyWithImpl(this._self, this._then);

  final _PasswordOnChanged _self;
  final $Res Function(_PasswordOnChanged) _then;

/// Create a copy of RegisterFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_PasswordOnChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegisterFormState {

 RequestState get state; String get message; String get email; String get password;
/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<RegisterFormState> get copyWith => _$RegisterFormStateCopyWithImpl<RegisterFormState>(this as RegisterFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormState&&(identical(other.state, state) || other.state == state)&&(identical(other.message, message) || other.message == message)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,state,message,email,password);

@override
String toString() {
  return 'RegisterFormState(state: $state, message: $message, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $RegisterFormStateCopyWith<$Res>  {
  factory $RegisterFormStateCopyWith(RegisterFormState value, $Res Function(RegisterFormState) _then) = _$RegisterFormStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, String message, String email, String password
});




}
/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._self, this._then);

  final RegisterFormState _self;
  final $Res Function(RegisterFormState) _then;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? message = null,Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _RegisterFormState implements RegisterFormState {
  const _RegisterFormState({required this.state, required this.message, required this.email, required this.password});
  

@override final  RequestState state;
@override final  String message;
@override final  String email;
@override final  String password;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFormStateCopyWith<_RegisterFormState> get copyWith => __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFormState&&(identical(other.state, state) || other.state == state)&&(identical(other.message, message) || other.message == message)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,state,message,email,password);

@override
String toString() {
  return 'RegisterFormState(state: $state, message: $message, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RegisterFormStateCopyWith<$Res> implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(_RegisterFormState value, $Res Function(_RegisterFormState) _then) = __$RegisterFormStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, String message, String email, String password
});




}
/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(this._self, this._then);

  final _RegisterFormState _self;
  final $Res Function(_RegisterFormState) _then;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? message = null,Object? email = null,Object? password = null,}) {
  return _then(_RegisterFormState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
