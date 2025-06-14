import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseRemoteDatasource {
  Future<AuthResponse> login(String email, String password);

}

@Injectable(as: SupabaseRemoteDatasource)
class SupabaseRemoteDatasourceImpl implements SupabaseRemoteDatasource {
  final GoTrueClient _supabaseAuth = Supabase.instance.client.auth;

  @override
  Future<AuthResponse> login(String email, String password) async =>
      await _supabaseAuth.signInWithPassword(password: password, email: email);
}
