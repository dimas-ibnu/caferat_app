// ignore_for_file: constant_identifier_names

class UrlConstant {
  static const baseUrl = 'https://example.com';
  static const redirectUrl = 'io.supabase.flutterexample://signup-callback';

  // Authentication
  static const login = '$baseUrl/users/login';
  static const register = '$baseUrl/users/register';
}
