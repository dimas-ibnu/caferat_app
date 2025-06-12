import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  Future<void> login(String email, String password);

  Future<void> register(String email, String password);

  Future<void> logout();

  Stream<User?> getCurrentUser();

  User? getSignedInUser();
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final GoTrueClient _supabaseAuth = Supabase.instance.client.auth;
  static const String _redirectUrl =
      'io.supabase.flutterexample://signup-callback';

  @override
  Future<void> login(String email, String password) async =>
      await _supabaseAuth.signInWithPassword(password: password, email: email);

  @override
  Future<void> register(String email, String password) async =>
      await _supabaseAuth.signUp(
        password: password,
        email: email,
        emailRedirectTo: _redirectUrl,
      );

  @override
  Future<void> logout() async => await _supabaseAuth.signOut();

  @override
  Stream<User?> getCurrentUser() =>
      _supabaseAuth.onAuthStateChange.map((event) => event.session?.user);

  @override
  User? getSignedInUser() => _supabaseAuth.currentUser;
}
