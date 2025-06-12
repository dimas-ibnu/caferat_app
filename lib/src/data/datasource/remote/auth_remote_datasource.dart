import 'package:caferat_app/src/common/constants/url_constant.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponse> login(String email, String password);

  Future<AuthResponse> register(String email, String password);

  Future<void> logout();

  Stream<User?> getCurrentUser();

  User? getSignedInUser();
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final GoTrueClient _supabaseAuth = Supabase.instance.client.auth;

  @override
  Future<AuthResponse> login(String email, String password) async =>
      await _supabaseAuth.signInWithPassword(password: password, email: email);

  @override
  Future<AuthResponse> register(String email, String password) async =>
      await _supabaseAuth.signUp(
        password: password,
        email: email,
        emailRedirectTo: UrlConstant.redirectUrl,
      );

  @override
  Future<void> logout() async => await _supabaseAuth.signOut();

  @override
  Stream<User?> getCurrentUser() =>
      _supabaseAuth.onAuthStateChange.map((event) => event.session?.user);

  @override
  User? getSignedInUser() => _supabaseAuth.currentUser;
}
