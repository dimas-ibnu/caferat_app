// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthWatcherEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthWatcherEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherEvent()';
}


}

/// @nodoc
class $AuthWatcherEventCopyWith<$Res>  {
$AuthWatcherEventCopyWith(AuthWatcherEvent _, $Res Function(AuthWatcherEvent) __);
}


/// @nodoc


class _AuthCheckRequest implements AuthWatcherEvent {
  const _AuthCheckRequest();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthCheckRequest);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherEvent.authCheckRequest()';
}


}




/// @nodoc


class _SignOut implements AuthWatcherEvent {
  const _SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherEvent.signOut()';
}


}




/// @nodoc
mixin _$AuthWatcherState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthWatcherState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherState()';
}


}

/// @nodoc
class $AuthWatcherStateCopyWith<$Res>  {
$AuthWatcherStateCopyWith(AuthWatcherState _, $Res Function(AuthWatcherState) __);
}


/// @nodoc


class Initial implements AuthWatcherState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherState.initial()';
}


}




/// @nodoc


class Authenticating implements AuthWatcherState {
  const Authenticating();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticating);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherState.authenticating()';
}


}




/// @nodoc


class Authenticated implements AuthWatcherState {
  const Authenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherState.authenticated()';
}


}




/// @nodoc


class Unauthenticated implements AuthWatcherState {
  const Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherState.unauthenticated()';
}


}




/// @nodoc


class IsFirstTime implements AuthWatcherState {
  const IsFirstTime();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsFirstTime);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthWatcherState.isFirstTime()';
}


}




// dart format on
