// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'CLIENT_SECRET', obfuscate: true)
  static final String clientSecret = _Env.clientSecret;
}
