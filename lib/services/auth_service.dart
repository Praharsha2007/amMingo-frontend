import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

class AuthService {
  static const String baseUrl = "http://localhost:8000";

  Future<String?> signInWithGoogle() async {
    final result = await FlutterWebAuth2.authenticate(
      url: "$baseUrl/api/login/oauth",
      callbackUrlScheme: "amingo",
      options: const FlutterWebAuth2Options(
        preferEphemeral: false,
      ),
    );
    return Uri.parse(result).queryParameters["token"];
  }
}